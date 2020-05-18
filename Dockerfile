# wifisconnect development image
ARG IMAGE=store/intersystems/irishealth-community:2020.1.0.215.0
FROM $IMAGE

USER root
RUN mkdir -p /opt/wifisconnect
RUN mkdir -p /opt/wifisconnect/app
RUN mkdir -p /opt/wifisconnect/db
COPY irissession.sh /
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /irissession.sh
RUN chmod u+x /irissession.sh
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/wifisconnect
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/wifisconnect/app
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/wifisconnect/db

WORKDIR /opt/wifisconnect

USER irisowner
COPY . app
SHELL ["/irissession.sh"]

# run installer
RUN \
  # wifisconnect installation
  #do $SYSTEM.OBJ.Load("/opt/wifisconnect/app/src/ITB/Installer.cls", "ck") \
  #set vars("Namespace")="WIFISCONNECT" \
  #set vars("CreateNamespace")="yes" \
  #set vars("BasePath")="/opt/wifisconnect/app" \
  #set vars("DataDBPath")="/opt/wifisconnect/db/data" \
  #set vars("CodeDBPath")="/opt/wifisconnect/db/code" \
  #set sc = ##class(ITB.Installer).RunWithParams(.vars) \
  # iris config
  zn "%SYS" \
  do ##class(SYS.Container).QuiesceForBundling() \
  do ##class(Security.Users).UnExpireUserPasswords("*") \
  halt

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]
CMD [ "-l", "/usr/irissys/mgr/messages.log" ]
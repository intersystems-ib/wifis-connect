# wifisconnect development image
ARG IMAGE=store/intersystems/irishealth-community:2020.1.0.215.0
FROM $IMAGE

USER root

# install java (used to build SAML ticket)
RUN apt-get update && \
	apt-get install -y openjdk-8-jdk && \
	apt-get clean

# prepare wifis-connect directories
RUN mkdir -p /opt/wifisconnect
RUN mkdir -p /opt/wifisconnect/app
RUN mkdir -p /opt/wifisconnect/db
COPY irissession.sh /
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /irissession.sh
RUN chmod u+x /irissession.sh
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/wifisconnect
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/wifisconnect/app
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/wifisconnect/db

# download Healthcare-HL7-XML
WORKDIR /tmp 
RUN wget https://github.com/intersystems-ib/healthcare-hl7-xml/archive/master.tar.gz
RUN tar -zxvf master.tar.gz
WORKDIR /tmp/Healthcare-HL7-XML-master

WORKDIR /opt/wifisconnect
USER irisowner
COPY . app
SHELL ["/irissession.sh"]

# run installer
RUN \
  # healthcare-hl7-xml installation
  do $SYSTEM.OBJ.Load("/tmp/Healthcare-HL7-XML-master/src/ITB/Installer.cls", "ck") \
  set vars("Namespace")="WIFISCONNECT" \
  set vars("CreateNamespace")="yes" \
  set vars("BasePath")="/tmp/Healthcare-HL7-XML-master" \
  set vars("DataDBPath")="/opt/wifisconnect/db/data" \
  set vars("CodeDBPath")="/opt/wifisconnect/db/code" \
  set sc = ##class(ITB.Installer).RunWithParams(.vars) \
  # wifisconnect installation
  kill vars \
  do $SYSTEM.OBJ.Load("/opt/wifisconnect/app/src/WiFIS/V202/Utils/Installer.cls", "ck") \
  set vars("Namespace")="WIFISCONNECT" \
  set vars("CreateNamespace")="no" \
  set vars("BasePath")="/opt/wifisconnect/app" \
  set vars("CreateTestWebApp")="yes" \
  set sc = ##class(WiFIS.V202.Utils.Installer).RunWithParams(.vars) \
  # iris config
  zn "%SYS" \
  do ##class(SYS.Container).QuiesceForBundling() \
  do ##class(Security.Users).UnExpireUserPasswords("*") \
  halt

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]
CMD [ "-l", "/usr/irissys/mgr/messages.log" ]
@echo off
setlocal
cls

rem ______ CONFIG ______
set JDK_PATH="C:\Program Files\Java\jdk1.8.0_65"
set BASE=C:\Test\HC3SA\
set CONF="C:\Test\HC3SA\config\hccsa.properties"
set PROP="C:\Test\HC3SA\config\parameters.properties"
rem _____________________

set LIB=%BASE%lib\
set XML=%LIB%xml\

set LIBRERIAS=%LIB%Utils.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\bcprov-jdk15-134.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\xmlsec-1.3.0.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\xmlsec-1.3.0-commons-logging.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\jargs-1.0.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\log4j-1.2.13.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\xmltooling-1.0-TP2-jdk-1.5.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\retroweaver-rt-1.2.4.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\httpclient-3.0.1.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\joda-time-1.3.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\httpclient-3.0.1-commons-codec-1.3.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\opensaml-2.0-TP2-jdk-1.5.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%jdk1.5\javolution.jar;
set LIBRERIAS=%LIBRERIAS%%LIB%HCCsa.jar;
set LIBRERIAS=%LIBRERIAS%%BASE%hc3saSamlProxy.jar;
set LIBRERIAS=%LIBRERIAS%%XML%resolver-2.9.1.jar;
set LIBRERIAS=%LIBRERIAS%%XML%serializer-2.9.1.jar;
set LIBRERIAS=%LIBRERIAS%%XML%xalan-2.7.1.jar;
set LIBRERIAS=%LIBRERIAS%%XML%xercesImpl-2.9.1.jar;
set LIBRERIAS=%LIBRERIAS%%XML%xml-apis-2.9.1.jar;

echo %LIBRERIAS% > classpath.txt

%JDK_PATH%\bin\java -Dfile.encoding=UTF-8 -Djavax.xml.parsers.DocumentBuilderFactory=org.apache.xerces.jaxp.DocumentBuilderFactoryImpl -classpath %LIBRERIAS% hc3sa.saml.ProxyHC3SAML %CONF% %PROP%

pause
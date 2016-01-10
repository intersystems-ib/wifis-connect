#!/bin/sh

# ______ CONFIG ______
JDK_PATH="/opt/jdk1.8.0_65"
BASE="/home/cacheusr/HC3SA/"
CONF="/home/cacheusr/HC3SA/config/hccsa.properties"
PROP="/home/cacheusr/HC3SA/config/parameters.properties"
#_____________________

LIB=$BASE"lib/"
XML=$LIB"xml/"

LIBRERIAS=$LIB"Utils.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/bcprov-jdk15-134.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/xmlsec-1.3.0.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/xmlsec-1.3.0-commons-logging.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/jargs-1.0.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/log4j-1.2.13.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/xmltooling-1.0-TP2-jdk-1.5.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/retroweaver-rt-1.2.4.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/httpclient-3.0.1.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/joda-time-1.3.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/httpclient-3.0.1-commons-codec-1.3.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/opensaml-2.0-TP2-jdk-1.5.jar:"
LIBRERIAS=$LIBRERIAS$LIB"jdk1.5/javolution.jar:"
LIBRERIAS=$LIBRERIAS$LIB"HCCsa.jar:"
LIBRERIAS=$LIBRERIAS$BASE"hc3saSamlProxy.jar:"
LIBRERIAS=$LIBRERIAS$XML"resolver-2.9.1.jar:"
LIBRERIAS=$LIBRERIAS$XML"serializer-2.9.1.jar:"
LIBRERIAS=$LIBRERIAS$XML"xalan-2.7.1.jar:"
LIBRERIAS=$LIBRERIAS$XML"xercesImpl-2.9.1.jar:"
LIBRERIAS=$LIBRERIAS$XML"xml-apis-2.9.1.jar"

echo $LIBRERIAS > classpath.txt

$JDK_PATH/bin/java -Dfile.encoding=UTF-8 -Djavax.xml.parsers.DocumentBuilderFactory=org.apache.xerces.jaxp.DocumentBuilderFactoryImpl -cp $LIBRERIAS hc3sa.saml.ProxyHC3SAML $CONF $PROP

package hc3sa.saml;
import java.io.*;
import es.hccc.saml.*;
import es.sia.exceptions.*;
import java.util.Properties;

public class ProxyHC3SAML {
	public static String getSAML(String rutaIni, String rutaProp)
    {
		String saml="";
		try {
			HCCCSAML hcccsaml = new HCCCSAML(rutaIni);
			HCCCAtributsSAML atributs = hcccsaml.getInstanciaAtributs();

			Properties prop = new Properties();
			prop.load(new FileInputStream(rutaProp));
			for (String key : prop.stringPropertyNames()) {
  				String value = prop.getProperty(key);
  				atributs.setAtribut(key, "String", value);
			}
			saml = hcccsaml.getSAML(atributs);
		} catch(SIAException e) {
			System.out.println(e.getDescription());
			System.out.println(e.getErrorCode());
		} catch(IOException e) {
        	System.out.println (e.toString());
    	}
		return saml;
	}

	public static void main(String[] args) {
		try {
			String saml = ProxyHC3SAML.getSAML(args[0], args[1]);
			System.out.println(saml);
		}catch(Exception e){
			e.printStackTrace();
		}
 	}

}

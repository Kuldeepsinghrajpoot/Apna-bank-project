/**
 * DISCLAIMER: The sample code or utility or tool described herein
 * is provided on an "as is" basis, without warranty of any kind.
 * UIDAI does not warrant or guarantee the individual success
 * developers may have in implementing the sample code on their
 * environment. 
 * 
 * UIDAI does not warrant, guarantee or make any representations
 * of any kind with respect to the sample code and does not make
 * any representations or warranties regarding the use, results
 * of use, accuracy, timeliness or completeness of any data or
 * information relating to the sample code. UIDAI disclaims all
 * warranties, express or implied, and in particular, disclaims
 * all warranties of merchantability, fitness for a particular
 * purpose, and warranties related to the code, or any service
 * or software related thereto. 
 * 
 * UIDAI is not responsible for and shall not be liable directly
 * or indirectly for any direct, indirect damages or costs of any
 * type arising out of use or any action taken by you or others
 * related to the sample code.
 * 
 * THIS IS NOT A SUPPORTED SOFTWARE.
 * 
 */
package in.gov.uidai.auth.sampleapp.converter;

import in.gov.uidai.auth.sampleapp.converter.impl.DummyConverter;
import in.gov.uidai.auth.sampleapp.converter.impl.XMLToHTMLConverter;
import in.gov.uidai.auth.sampleapp.converter.impl.XSLFOConverter;

import java.util.HashMap;
import java.util.Map;

import org.apache.xmlgraphics.util.MimeConstants;

public class ConverterFactory {

	private static Map<ConverterType, IConverter<String>> store = new HashMap<ConverterType, IConverter<String>>();

	static {
		store.put(ConverterType.XML, new DummyConverter());
		store.put(ConverterType.HTML, new XMLToHTMLConverter());
		store.put(ConverterType.PDF, new XSLFOConverter(MimeConstants.MIME_PDF));
		store.put(ConverterType.PNG, new XSLFOConverter(MimeConstants.MIME_PNG));
//		store.put(ConverterType.POSTSCRIPT, new XSLFOConverter(MimeConstants.MIME_POSTSCRIPT));
//		store.put(ConverterType.EPS, new XSLFOConverter(MimeConstants.MIME_EPS));
		

//		store.put(ConverterType.JPEG, new XSLFOConverter(MimeConstants.MIME_JPEG));
//		store.put(ConverterType.GIF, new XSLFOConverter(MimeConstants.MIME_GIF));
//		store.put(ConverterType.SVG, new XSLFOConverter(MimeConstants.MIME_SVG));
	}

	private ConverterFactory() {
		// prevent instantiation.
	}

	public static IConverter<String> getConverter(String conveterType) {
		return store.get(ConverterType.getConverterType(conveterType));
	}
}

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
package in.gov.uidai.auth.sampleapp.converter.impl;

import in.gov.uidai.auth.sampleapp.SampleClientMainFrame;
import in.gov.uidai.auth.sampleapp.converter.IConverter;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.StringReader;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.avalon.framework.configuration.Configuration;
import org.apache.avalon.framework.configuration.DefaultConfigurationBuilder;
import org.apache.commons.lang.StringUtils;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;

public class XSLFOConverter implements IConverter<String> {
	private static String DEFAULT_XSL_TEMPLATE_FILE = "format.xsl";
	private static String XSL_TEMPLATE_FILE_LR = "format_bckg_img_from_classes.xsl";
	private String outputFormat;

	public XSLFOConverter(String outputFormat) {
		this.outputFormat = outputFormat;
	}

	@Override
	public byte[] convert(String input) throws Exception {
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		FopFactory fopFactory = FopFactory.newInstance();
		// building configuration from Configuration file 
		DefaultConfigurationBuilder configurationBuilder = new DefaultConfigurationBuilder();
		Configuration configuration = configurationBuilder.build(XSLFOConverter.class
				.getResourceAsStream("/font-xml/Configuration.xml"));
		/*System.out.println("======>>>>>>>>>>>>>   "+XSLFOConverter.class.getResourceAsStream("/font-xml"));
		Configuration configuration = configurationBuilder.build(XSLFOConverter.class
				.getResourceAsStream("Configuration.xml"));*/
		fopFactory.setUserConfig(configuration);
		
		/* NOTE: donot delete 
		 * Below setting fontbaseurl only required for when running from eclipse
		 * While packaging comment this setting build and package kyc client
		 * 
		 * 		fopFactory.getFontManager().setFontBaseURL("file://"+XSLFOConverter.class
		 *		.getResource("").getPath().replace(
		 *				"/in/gov/uidai/auth/sampleapp/converter/impl", ""));
		 * 
		 * */		
		FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
		//System.out.println("outputFormat == "+outputFormat+ "  foUserAgent== "+foUserAgent+"  outputStream= "+outputStream);
		Fop fop = fopFactory.newFop(outputFormat, foUserAgent, outputStream);
		Result result = new SAXResult(fop.getDefaultHandler());
		//System.out.println("====   result   ==============  ????>>>>    "+result);
		
		StreamSource streamSource;
		/*if( StringUtils.isNotBlank(System.getenv("UIDAI_EKYC_TEMPLATE_FILE"))) {
			streamSource = new StreamSource(new File(System
					.getenv("UIDAI_EKYC_TEMPLATE_FILE")));){*/
		if (SampleClientMainFrame.lrcheckval == false ) {
			/*streamSource = new StreamSource(new File(System
					.getenv("UIDAI_EKYC_TEMPLATE_FILE")));*/
			streamSource = new StreamSource(XSLFOConverter.class
					.getResourceAsStream(XSL_TEMPLATE_FILE_LR));
		} else {
			streamSource = new StreamSource(XSLFOConverter.class
					.getResourceAsStream(DEFAULT_XSL_TEMPLATE_FILE));	
		}
		//System.out.println("input====>>>>>>>     "+streamSource.toString()); 
		Transformer transformer = TransformerFactory.newInstance()
				.newTransformer(streamSource);		
				
		transformer.setParameter("resourcePath", XSLFOConverter.class
				.getResource("").getPath().replace(
						"/in/gov/uidai/auth/sampleapp/converter/impl", ""));
		transformer
				.transform(new StreamSource(new StringReader(input)), result);
		outputStream.flush();
		outputStream.close();
		return outputStream.toByteArray();
	}
}

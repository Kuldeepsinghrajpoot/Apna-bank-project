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
package in.gov.uidai.auth.aua.httpclient;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.commons.lang.math.NumberUtils;

import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.client.urlconnection.HTTPSProperties;

public class HttpClientHelper {
	public static final int DEFAULT_CLIENT_TIMEOUT = 30000;
	public static final String CLIENT_TIME_OUT_PERIOD = "TIMEOUT_PERIOD"; // value in milli seconds

	public static ClientConfig getClientConfig(String uriScheme) {
		ClientConfig config = new DefaultClientConfig();
		config.getProperties().put(
				ClientConfig.PROPERTY_READ_TIMEOUT,
				NumberUtils.toInt(
						System.getenv(CLIENT_TIME_OUT_PERIOD),
						DEFAULT_CLIENT_TIMEOUT));

		if (uriScheme.equalsIgnoreCase("https")) {
			X509TrustManager xtm = new X509TrustManager() {

				@Override
				public void checkClientTrusted(X509Certificate[] arg0,
						String arg1) throws CertificateException {
					return;
				}

				@Override
				public void checkServerTrusted(X509Certificate[] arg0,
						String arg1) throws CertificateException {
					return;
				}

				@Override
				public X509Certificate[] getAcceptedIssuers() {
					return null;
				}
			};
			TrustManager mytm[] = { xtm };

			HostnameVerifier hv = new HostnameVerifier() {

				public boolean verify(String hostname, SSLSession sslSession) {
					return true;
				}
			};

			SSLContext ctx = null;

			try {
				ctx = SSLContext.getInstance("SSL");
				ctx.init(null, mytm, null);
				config.getProperties().put(
						HTTPSProperties.PROPERTY_HTTPS_PROPERTIES,
						new HTTPSProperties(hv, ctx));
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			} catch (KeyManagementException e) {
				e.printStackTrace();
			}
		}

		return config;
	}
}

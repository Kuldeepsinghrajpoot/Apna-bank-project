//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.kyc.uid_kyc_request._1;

import javax.xml.namespace.QName;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the in.gov.uidai.kyc.uid_kyc_request._1 package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Kyc_QNAME = new QName("http://www.uidai.gov.in/kyc/uid-kyc-request/1.0", "Kyc");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: in.gov.uidai.kyc.uid_kyc_request._1
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Kyc }
     * 
     */
    public Kyc createKyc() {
        return new Kyc();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Kyc }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link Kyc }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.uidai.gov.in/kyc/uid-kyc-request/1.0", name = "Kyc")
    public JAXBElement<Kyc> createKyc(Kyc value) {
        return new JAXBElement<Kyc>(_Kyc_QNAME, Kyc.class, null, value);
    }

}

//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.kyc.uid_kyc_response._1;

import javax.xml.namespace.QName;
import jakarta.xml.bind.JAXBElement;
import jakarta.xml.bind.annotation.XmlElementDecl;
import jakarta.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the in.gov.uidai.kyc.uid_kyc_response._1 package. 
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

    private final static QName _KycRes_QNAME = new QName("http://www.uidai.gov.in/kyc/uid-kyc-response/1.0", "KycRes");
    private final static QName _Resp_QNAME = new QName("http://www.uidai.gov.in/kyc/uid-kyc-response/1.0", "Resp");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: in.gov.uidai.kyc.uid_kyc_response._1
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link KycRes }
     * 
     */
    public KycRes createKycRes() {
        return new KycRes();
    }

    /**
     * Create an instance of {@link Resp }
     * 
     */
    public Resp createResp() {
        return new Resp();
    }

    /**
     * Create an instance of {@link UidDataType }
     * 
     */
    public UidDataType createUidDataType() {
        return new UidDataType();
    }

    /**
     * Create an instance of {@link PoiType }
     * 
     */
    public PoiType createPoiType() {
        return new PoiType();
    }

    /**
     * Create an instance of {@link PoaType }
     * 
     */
    public PoaType createPoaType() {
        return new PoaType();
    }

    /**
     * Create an instance of {@link LDataType }
     * 
     */
    public LDataType createLDataType() {
        return new LDataType();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link KycRes }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link KycRes }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.uidai.gov.in/kyc/uid-kyc-response/1.0", name = "KycRes")
    public JAXBElement<KycRes> createKycRes(KycRes value) {
        return new JAXBElement<KycRes>(_KycRes_QNAME, KycRes.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Resp }{@code >}
     * 
     * @param value
     *     Java instance representing xml element's value.
     * @return
     *     the new instance of {@link JAXBElement }{@code <}{@link Resp }{@code >}
     */
    @XmlElementDecl(namespace = "http://www.uidai.gov.in/kyc/uid-kyc-response/1.0", name = "Resp")
    public JAXBElement<Resp> createResp(Resp value) {
        return new JAXBElement<Resp>(_Resp_QNAME, Resp.class, null, value);
    }

}

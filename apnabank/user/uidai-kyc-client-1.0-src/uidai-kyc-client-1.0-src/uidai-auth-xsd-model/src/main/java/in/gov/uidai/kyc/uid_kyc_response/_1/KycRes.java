//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.kyc.uid_kyc_response._1;

import javax.xml.datatype.XMLGregorianCalendar;
import in.gov.uidai.kyc.common.types._1.YesNoType;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlSchemaType;
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for KycRes complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="KycRes"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence minOccurs="0"&gt;
 *         &lt;element name="Rar" type="{http://www.w3.org/2001/XMLSchema}base64Binary"/&gt;
 *         &lt;element name="UidData" type="{http://www.uidai.gov.in/kyc/uid-kyc-response/1.0}UidDataType"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="ret" type="{http://www.uidai.gov.in/kyc/common/types/1.0}YesNoType" /&gt;
 *       &lt;attribute name="code" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *       &lt;attribute name="txn" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *       &lt;attribute name="ts" type="{http://www.w3.org/2001/XMLSchema}dateTime" /&gt;
 *       &lt;attribute name="ttl" type="{http://www.w3.org/2001/XMLSchema}dateTime" /&gt;
 *       &lt;attribute name="actn" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *       &lt;attribute name="err" type="{http://www.w3.org/2001/XMLSchema}string" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "KycRes", propOrder = {
    "rar",
    "uidData"
})
public class KycRes {

    @XmlElement(name = "Rar")
    protected byte[] rar;
    @XmlElement(name = "UidData")
    protected UidDataType uidData;
    @XmlAttribute(name = "ret")
    protected YesNoType ret;
    @XmlAttribute(name = "code")
    protected String code;
    @XmlAttribute(name = "txn")
    protected String txn;
    @XmlAttribute(name = "ts")
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar ts;
    @XmlAttribute(name = "ttl")
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar ttl;
    @XmlAttribute(name = "actn")
    protected String actn;
    @XmlAttribute(name = "err")
    protected String err;

    /**
     * Gets the value of the rar property.
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getRar() {
        return rar;
    }

    /**
     * Sets the value of the rar property.
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setRar(byte[] value) {
        this.rar = value;
    }

    /**
     * Gets the value of the uidData property.
     * 
     * @return
     *     possible object is
     *     {@link UidDataType }
     *     
     */
    public UidDataType getUidData() {
        return uidData;
    }

    /**
     * Sets the value of the uidData property.
     * 
     * @param value
     *     allowed object is
     *     {@link UidDataType }
     *     
     */
    public void setUidData(UidDataType value) {
        this.uidData = value;
    }

    /**
     * Gets the value of the ret property.
     * 
     * @return
     *     possible object is
     *     {@link YesNoType }
     *     
     */
    public YesNoType getRet() {
        return ret;
    }

    /**
     * Sets the value of the ret property.
     * 
     * @param value
     *     allowed object is
     *     {@link YesNoType }
     *     
     */
    public void setRet(YesNoType value) {
        this.ret = value;
    }

    /**
     * Gets the value of the code property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCode() {
        return code;
    }

    /**
     * Sets the value of the code property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCode(String value) {
        this.code = value;
    }

    /**
     * Gets the value of the txn property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTxn() {
        return txn;
    }

    /**
     * Sets the value of the txn property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTxn(String value) {
        this.txn = value;
    }

    /**
     * Gets the value of the ts property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getTs() {
        return ts;
    }

    /**
     * Sets the value of the ts property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setTs(XMLGregorianCalendar value) {
        this.ts = value;
    }

    /**
     * Gets the value of the ttl property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getTtl() {
        return ttl;
    }

    /**
     * Sets the value of the ttl property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setTtl(XMLGregorianCalendar value) {
        this.ttl = value;
    }

    /**
     * Gets the value of the actn property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getActn() {
        return actn;
    }

    /**
     * Sets the value of the actn property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setActn(String value) {
        this.actn = value;
    }

    /**
     * Gets the value of the err property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getErr() {
        return err;
    }

    /**
     * Sets the value of the err property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setErr(String value) {
        this.err = value;
    }

}

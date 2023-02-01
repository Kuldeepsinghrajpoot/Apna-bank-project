//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.authentication.otp._1;

import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Otp complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Otp"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Opts" type="{http://www.uidai.gov.in/authentication/otp/1.0}Opts" minOccurs="0"/&gt;
 *         &lt;element name="Tkn" type="{http://www.uidai.gov.in/authentication/otp/1.0}Tkn" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="uid" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}uid" /&gt;
 *       &lt;attribute name="tid" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Tid" /&gt;
 *       &lt;attribute name="ac" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}AuaCode" /&gt;
 *       &lt;attribute name="sa" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}AuaCode" /&gt;
 *       &lt;attribute name="ver" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Ver" /&gt;
 *       &lt;attribute name="txn" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Txn" /&gt;
 *       &lt;attribute name="lk" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}LicenseKey" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Otp", propOrder = {
    "opts",
    "tkn"
})
public class Otp {

    @XmlElement(name = "Opts")
    protected Opts opts;
    @XmlElement(name = "Tkn")
    protected Tkn tkn;
    @XmlAttribute(name = "uid", required = true)
    protected String uid;
    @XmlAttribute(name = "tid", required = true)
    protected String tid;
    @XmlAttribute(name = "ac", required = true)
    protected String ac;
    @XmlAttribute(name = "sa", required = true)
    protected String sa;
    @XmlAttribute(name = "ver", required = true)
    protected String ver;
    @XmlAttribute(name = "txn", required = true)
    protected String txn;
    @XmlAttribute(name = "lk", required = true)
    protected String lk;

    /**
     * Gets the value of the opts property.
     * 
     * @return
     *     possible object is
     *     {@link Opts }
     *     
     */
    public Opts getOpts() {
        return opts;
    }

    /**
     * Sets the value of the opts property.
     * 
     * @param value
     *     allowed object is
     *     {@link Opts }
     *     
     */
    public void setOpts(Opts value) {
        this.opts = value;
    }

    /**
     * Gets the value of the tkn property.
     * 
     * @return
     *     possible object is
     *     {@link Tkn }
     *     
     */
    public Tkn getTkn() {
        return tkn;
    }

    /**
     * Sets the value of the tkn property.
     * 
     * @param value
     *     allowed object is
     *     {@link Tkn }
     *     
     */
    public void setTkn(Tkn value) {
        this.tkn = value;
    }

    /**
     * Gets the value of the uid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUid() {
        return uid;
    }

    /**
     * Sets the value of the uid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUid(String value) {
        this.uid = value;
    }

    /**
     * Gets the value of the tid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTid() {
        return tid;
    }

    /**
     * Sets the value of the tid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTid(String value) {
        this.tid = value;
    }

    /**
     * Gets the value of the ac property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAc() {
        return ac;
    }

    /**
     * Sets the value of the ac property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAc(String value) {
        this.ac = value;
    }

    /**
     * Gets the value of the sa property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSa() {
        return sa;
    }

    /**
     * Sets the value of the sa property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSa(String value) {
        this.sa = value;
    }

    /**
     * Gets the value of the ver property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getVer() {
        return ver;
    }

    /**
     * Sets the value of the ver property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setVer(String value) {
        this.ver = value;
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
     * Gets the value of the lk property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLk() {
        return lk;
    }

    /**
     * Sets the value of the lk property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLk(String value) {
        this.lk = value;
    }

}
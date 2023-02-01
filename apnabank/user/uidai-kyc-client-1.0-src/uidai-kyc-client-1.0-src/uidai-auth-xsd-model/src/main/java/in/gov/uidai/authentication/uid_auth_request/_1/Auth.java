//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.authentication.uid_auth_request._1;

import in.gov.uidai.authentication.common.types._1.Meta;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlType;
import jakarta.xml.bind.annotation.XmlValue;


/**
 * <p>Java class for Auth complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Auth"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Tkn" type="{http://www.uidai.gov.in/authentication/uid-auth-request/1.0}Tkn" minOccurs="0"/&gt;
 *         &lt;element name="Uses" type="{http://www.uidai.gov.in/authentication/uid-auth-request/1.0}Uses"/&gt;
 *         &lt;element name="Meta" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Meta"/&gt;
 *         &lt;element name="Skey" type="{http://www.uidai.gov.in/authentication/uid-auth-request/1.0}Skey"/&gt;
 *         &lt;element name="Data"&gt;
 *           &lt;complexType&gt;
 *             &lt;simpleContent&gt;
 *               &lt;extension base="&lt;http://www.w3.org/2001/XMLSchema&gt;base64Binary"&gt;
 *                 &lt;attribute name="type" type="{http://www.uidai.gov.in/authentication/uid-auth-request/1.0}DataType" default="X" /&gt;
 *               &lt;/extension&gt;
 *             &lt;/simpleContent&gt;
 *           &lt;/complexType&gt;
 *         &lt;/element&gt;
 *         &lt;element name="Hmac" type="{http://www.w3.org/2001/XMLSchema}base64Binary"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="uid" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}uid" /&gt;
 *       &lt;attribute name="ac" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}AuaCode" /&gt;
 *       &lt;attribute name="tid" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Tid" /&gt;
 *       &lt;attribute name="ver" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Ver" /&gt;
 *       &lt;attribute name="txn" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}Txn" /&gt;
 *       &lt;attribute name="lk" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}LicenseKey" /&gt;
 *       &lt;attribute name="sa" use="required" type="{http://www.uidai.gov.in/authentication/common/types/1.0}AuaCode" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Auth", propOrder = {
    "tkn",
    "uses",
    "meta",
    "skey",
    "data",
    "hmac"
})
public class Auth {

    @XmlElement(name = "Tkn")
    protected Tkn tkn;
    @XmlElement(name = "Uses", required = true)
    protected Uses uses;
    @XmlElement(name = "Meta", required = true)
    protected Meta meta;
    @XmlElement(name = "Skey", required = true)
    protected Skey skey;
    @XmlElement(name = "Data", required = true)
    protected Auth.Data data;
    @XmlElement(name = "Hmac", required = true)
    protected byte[] hmac;
    @XmlAttribute(name = "uid", required = true)
    protected String uid;
    @XmlAttribute(name = "ac", required = true)
    protected String ac;
    @XmlAttribute(name = "tid", required = true)
    protected String tid;
    @XmlAttribute(name = "ver")
    protected String ver;
    @XmlAttribute(name = "txn", required = true)
    protected String txn;
    @XmlAttribute(name = "lk", required = true)
    protected String lk;
    @XmlAttribute(name = "sa", required = true)
    protected String sa;

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
     * Gets the value of the uses property.
     * 
     * @return
     *     possible object is
     *     {@link Uses }
     *     
     */
    public Uses getUses() {
        return uses;
    }

    /**
     * Sets the value of the uses property.
     * 
     * @param value
     *     allowed object is
     *     {@link Uses }
     *     
     */
    public void setUses(Uses value) {
        this.uses = value;
    }

    /**
     * Gets the value of the meta property.
     * 
     * @return
     *     possible object is
     *     {@link Meta }
     *     
     */
    public Meta getMeta() {
        return meta;
    }

    /**
     * Sets the value of the meta property.
     * 
     * @param value
     *     allowed object is
     *     {@link Meta }
     *     
     */
    public void setMeta(Meta value) {
        this.meta = value;
    }

    /**
     * Gets the value of the skey property.
     * 
     * @return
     *     possible object is
     *     {@link Skey }
     *     
     */
    public Skey getSkey() {
        return skey;
    }

    /**
     * Sets the value of the skey property.
     * 
     * @param value
     *     allowed object is
     *     {@link Skey }
     *     
     */
    public void setSkey(Skey value) {
        this.skey = value;
    }

    /**
     * Gets the value of the data property.
     * 
     * @return
     *     possible object is
     *     {@link Auth.Data }
     *     
     */
    public Auth.Data getData() {
        return data;
    }

    /**
     * Sets the value of the data property.
     * 
     * @param value
     *     allowed object is
     *     {@link Auth.Data }
     *     
     */
    public void setData(Auth.Data value) {
        this.data = value;
    }

    /**
     * Gets the value of the hmac property.
     * 
     * @return
     *     possible object is
     *     byte[]
     */
    public byte[] getHmac() {
        return hmac;
    }

    /**
     * Sets the value of the hmac property.
     * 
     * @param value
     *     allowed object is
     *     byte[]
     */
    public void setHmac(byte[] value) {
        this.hmac = value;
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
     * <p>Java class for anonymous complex type.
     * 
     * <p>The following schema fragment specifies the expected content contained within this class.
     * 
     * <pre>
     * &lt;complexType&gt;
     *   &lt;simpleContent&gt;
     *     &lt;extension base="&lt;http://www.w3.org/2001/XMLSchema&gt;base64Binary"&gt;
     *       &lt;attribute name="type" type="{http://www.uidai.gov.in/authentication/uid-auth-request/1.0}DataType" default="X" /&gt;
     *     &lt;/extension&gt;
     *   &lt;/simpleContent&gt;
     * &lt;/complexType&gt;
     * </pre>
     * 
     * 
     */
    @XmlAccessorType(XmlAccessType.FIELD)
    @XmlType(name = "", propOrder = {
        "value"
    })
    public static class Data {

        @XmlValue
        protected byte[] value;
        @XmlAttribute(name = "type")
        protected DataType type;

        /**
         * Gets the value of the value property.
         * 
         * @return
         *     possible object is
         *     byte[]
         */
        public byte[] getValue() {
            return value;
        }

        /**
         * Sets the value of the value property.
         * 
         * @param value
         *     allowed object is
         *     byte[]
         */
        public void setValue(byte[] value) {
            this.value = value;
        }

        /**
         * Gets the value of the type property.
         * 
         * @return
         *     possible object is
         *     {@link DataType }
         *     
         */
        public DataType getType() {
            if (type == null) {
                return DataType.X;
            } else {
                return type;
            }
        }

        /**
         * Sets the value of the type property.
         * 
         * @param value
         *     allowed object is
         *     {@link DataType }
         *     
         */
        public void setType(DataType value) {
            this.type = value;
        }

    }

}
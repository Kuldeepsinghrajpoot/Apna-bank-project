//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.authentication.uid_auth_request_data._1;

import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlElement;
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Demo complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Demo"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="Pi" type="{http://www.uidai.gov.in/authentication/uid-auth-request-data/1.0}Pi" minOccurs="0"/&gt;
 *         &lt;element name="Pa" type="{http://www.uidai.gov.in/authentication/uid-auth-request-data/1.0}Pa" minOccurs="0"/&gt;
 *         &lt;element name="Pfa" type="{http://www.uidai.gov.in/authentication/uid-auth-request-data/1.0}Pfa" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *       &lt;attribute name="lang" type="{http://www.w3.org/2001/XMLSchema}string" default="23" /&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Demo", propOrder = {
    "pi",
    "pa",
    "pfa"
})
public class Demo {

    @XmlElement(name = "Pi")
    protected Pi pi;
    @XmlElement(name = "Pa")
    protected Pa pa;
    @XmlElement(name = "Pfa")
    protected Pfa pfa;
    @XmlAttribute(name = "lang")
    protected String lang;

    /**
     * Gets the value of the pi property.
     * 
     * @return
     *     possible object is
     *     {@link Pi }
     *     
     */
    public Pi getPi() {
        return pi;
    }

    /**
     * Sets the value of the pi property.
     * 
     * @param value
     *     allowed object is
     *     {@link Pi }
     *     
     */
    public void setPi(Pi value) {
        this.pi = value;
    }

    /**
     * Gets the value of the pa property.
     * 
     * @return
     *     possible object is
     *     {@link Pa }
     *     
     */
    public Pa getPa() {
        return pa;
    }

    /**
     * Sets the value of the pa property.
     * 
     * @param value
     *     allowed object is
     *     {@link Pa }
     *     
     */
    public void setPa(Pa value) {
        this.pa = value;
    }

    /**
     * Gets the value of the pfa property.
     * 
     * @return
     *     possible object is
     *     {@link Pfa }
     *     
     */
    public Pfa getPfa() {
        return pfa;
    }

    /**
     * Sets the value of the pfa property.
     * 
     * @param value
     *     allowed object is
     *     {@link Pfa }
     *     
     */
    public void setPfa(Pfa value) {
        this.pfa = value;
    }

    /**
     * Gets the value of the lang property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLang() {
        if (lang == null) {
            return "23";
        } else {
            return lang;
        }
    }

    /**
     * Sets the value of the lang property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLang(String value) {
        this.lang = value;
    }

}

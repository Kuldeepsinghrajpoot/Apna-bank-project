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
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Pfa complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="Pfa"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;attribute name="mv" type="{http://www.w3.org/2001/XMLSchema}int" default="100" /&gt;
 *       &lt;attribute name="ms" type="{http://www.uidai.gov.in/authentication/uid-auth-request-data/1.0}matchingStrategy" default="E" /&gt;
 *       &lt;attribute name="av"&gt;
 *         &lt;simpleType&gt;
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *             &lt;maxLength value="1024"/&gt;
 *           &lt;/restriction&gt;
 *         &lt;/simpleType&gt;
 *       &lt;/attribute&gt;
 *       &lt;attribute name="lmv" type="{http://www.w3.org/2001/XMLSchema}int" /&gt;
 *       &lt;attribute name="lav"&gt;
 *         &lt;simpleType&gt;
 *           &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *             &lt;maxLength value="1024"/&gt;
 *           &lt;/restriction&gt;
 *         &lt;/simpleType&gt;
 *       &lt;/attribute&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "Pfa")
public class Pfa {

    @XmlAttribute(name = "mv")
    protected Integer mv;
    @XmlAttribute(name = "ms")
    protected MatchingStrategy ms;
    @XmlAttribute(name = "av")
    protected String av;
    @XmlAttribute(name = "lmv")
    protected Integer lmv;
    @XmlAttribute(name = "lav")
    protected String lav;

    /**
     * Gets the value of the mv property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public int getMv() {
        if (mv == null) {
            return  100;
        } else {
            return mv;
        }
    }

    /**
     * Sets the value of the mv property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setMv(Integer value) {
        this.mv = value;
    }

    /**
     * Gets the value of the ms property.
     * 
     * @return
     *     possible object is
     *     {@link MatchingStrategy }
     *     
     */
    public MatchingStrategy getMs() {
        if (ms == null) {
            return MatchingStrategy.E;
        } else {
            return ms;
        }
    }

    /**
     * Sets the value of the ms property.
     * 
     * @param value
     *     allowed object is
     *     {@link MatchingStrategy }
     *     
     */
    public void setMs(MatchingStrategy value) {
        this.ms = value;
    }

    /**
     * Gets the value of the av property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAv() {
        return av;
    }

    /**
     * Sets the value of the av property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAv(String value) {
        this.av = value;
    }

    /**
     * Gets the value of the lmv property.
     * 
     * @return
     *     possible object is
     *     {@link Integer }
     *     
     */
    public Integer getLmv() {
        return lmv;
    }

    /**
     * Sets the value of the lmv property.
     * 
     * @param value
     *     allowed object is
     *     {@link Integer }
     *     
     */
    public void setLmv(Integer value) {
        this.lmv = value;
    }

    /**
     * Gets the value of the lav property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLav() {
        return lav;
    }

    /**
     * Sets the value of the lav property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLav(String value) {
        this.lav = value;
    }

}

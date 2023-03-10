//
// This file was generated by the Eclipse Implementation of JAXB, v3.0.0 
// See https://eclipse-ee4j.github.io/jaxb-ri 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2022.09.04 at 04:37:39 PM IST 
//


package in.gov.uidai.authentication.uid_auth_request_data._1;

import jakarta.xml.bind.annotation.XmlEnum;
import jakarta.xml.bind.annotation.XmlType;


/**
 * <p>Java class for BiometricPosition.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <pre>
 * &lt;simpleType name="BiometricPosition"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="LEFT_IRIS"/&gt;
 *     &lt;enumeration value="RIGHT_IRIS"/&gt;
 *     &lt;enumeration value="LEFT_INDEX"/&gt;
 *     &lt;enumeration value="LEFT_LITTLE"/&gt;
 *     &lt;enumeration value="LEFT_MIDDLE"/&gt;
 *     &lt;enumeration value="LEFT_RING"/&gt;
 *     &lt;enumeration value="LEFT_THUMB"/&gt;
 *     &lt;enumeration value="RIGHT_INDEX"/&gt;
 *     &lt;enumeration value="RIGHT_LITTLE"/&gt;
 *     &lt;enumeration value="RIGHT_MIDDLE"/&gt;
 *     &lt;enumeration value="RIGHT_RING"/&gt;
 *     &lt;enumeration value="RIGHT_THUMB"/&gt;
 *     &lt;enumeration value="UNKNOWN"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 * 
 */
@XmlType(name = "BiometricPosition")
@XmlEnum
public enum BiometricPosition {

    LEFT_IRIS,
    RIGHT_IRIS,
    LEFT_INDEX,
    LEFT_LITTLE,
    LEFT_MIDDLE,
    LEFT_RING,
    LEFT_THUMB,
    RIGHT_INDEX,
    RIGHT_LITTLE,
    RIGHT_MIDDLE,
    RIGHT_RING,
    RIGHT_THUMB,
    UNKNOWN;

    public String value() {
        return name();
    }

    public static BiometricPosition fromValue(String v) {
        return valueOf(v);
    }

}

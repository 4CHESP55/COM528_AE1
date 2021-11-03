/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.oodd.cardreadersystem.model.dto;

/**
 *
 * @author Admin
 */
public class CardDetails {
    
    private String uuid=null;
    private String number=null;
    private String cvv=null;
    private String expiry=null;
    private String issue=null;
    
    public CardDetails(){
        
    }

    public CardDetails(String number, String cvv, String expiry, String issue) {
        this.number = number;
        this.cvv = cvv;
        this.expiry = expiry;
        this.issue = issue;
    }


    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuuid) {
        this.uuid = uuuid;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }
    
    public String getExpiry() {
        return expiry;
    }

    public void setExpiry(String expiry) {
        this.expiry = expiry;
    }
    
    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    @Override
    public String toString() {
        return "CardDetails{" + "uuuid=" + uuid + ", number=" + number + ", cvv=" + cvv + ", expiry=" + expiry + ", issue=" + issue + "}";
    }
    
}

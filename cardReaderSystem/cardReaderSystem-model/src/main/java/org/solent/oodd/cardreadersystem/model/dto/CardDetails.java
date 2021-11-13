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
    
    private String name="";
    private String endDate="";
    private String cardnumber="";
    private String cvv="111";
    private String issueNumber="01";
    
       public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getExpiry() {
        return endDate;
    }

    public void setExpiry(String endDate) {
        this.endDate = endDate;
    }

    public String getNumber() {
        return cardnumber;
    }

    public void setNumber(String cardnumber) {
        this.cardnumber = cardnumber;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    public String getIssue() {
        return issueNumber;
    }

    public void setIssue(String issueNumber) {
        this.issueNumber = issueNumber;
    }

    @Override
    public String toString() {
        return "CreditCard{" + "name=" + name + ", endDate=" + endDate + ", cardnumber=" + cardnumber + ", cvv=NOT PRINTED" +  ", issueNumber=" + issueNumber + '}';
    }

    
}

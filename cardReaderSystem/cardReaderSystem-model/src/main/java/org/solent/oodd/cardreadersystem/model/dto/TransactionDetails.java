/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.oodd.cardreadersystem.model.dto;

/**
 *
 * @author Admin
 */
public class TransactionDetails {
    
    private String uuid = null;
    private String toCard = null;
    private String fromCard = null;
    private String amount = null;
    
    public TransactionDetails (){
        
    }
    
    public TransactionDetails (String toCard, String fromCard, String amount){
        this.toCard = toCard;
        this.fromCard = fromCard;
        this.amount = amount;
        
    }
    
    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuuid) {
        this.uuid = uuuid;
    }
    
    public String getToCard () {
        return toCard;
    }
    
    public void setToCard (String toCard) {
        this.toCard = toCard;
    }
    
    public String getFromCard () {
        return fromCard;
    }
    
    public void setFromCard (String fromCard) {
        this.fromCard = fromCard;
    }
    
    public String getAmount () {
        return amount;
    }
    
    public void setAmount (String amount) {
        this.amount = amount;
    }
}

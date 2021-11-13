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
    
    private CardDetails fromCard;

    private CardDetails toCard;

    private String amount;

    public CardDetails getFromCard() {
        return fromCard;
    }

    public void setFromCard(CardDetails fromCard) {
        this.fromCard = fromCard;
    }

    public CardDetails getToCard() {
        return toCard;
    }

    public void setToCard(CardDetails toCard) {
        this.toCard = toCard;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "TransactionRequestMessage{" + "fromCard=" + fromCard + ", toCard=" + toCard + ", amount=" + amount + '}';
    }
}

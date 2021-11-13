/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.oodd.cardreadersystem.service;
import java.util.HashMap;
import java.util.UUID;
import org.solent.oodd.cardreadersystem.model.dto.CardDetails;
import org.solent.oodd.cardreadersystem.model.service.CardInterface;

/**
 *
 * @author Admin
 */
public class CardInterfaceImpl implements CardInterface {
        
    @Override
    public CardDetails addCardDetails(String number, String cvv, String expiry, String issue) {
        CardDetails card = new CardDetails();
        card.setNumber(number);
        card.setCvv(cvv);
        card.setExpiry(expiry);
        card.setIssue(issue);
        return card;
    }

    
}

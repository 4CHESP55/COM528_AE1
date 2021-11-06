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
    
    private HashMap<String, CardDetails> itemMap = new HashMap<String, CardDetails>(); 
    
    @Override
    public void addCard(CardDetails CardDetails) {
        itemMap.put(CardDetails.getUuid(), CardDetails);
    }
    
    @Override
    public void addCardDetails(String number, String cvv, String expiry, String issue) {
        CardDetails toCard = new CardDetails();
        toCard.setNumber(number);
        toCard.setCvv(cvv);
        toCard.setExpiry(expiry);
        toCard.setIssue(issue);
        toCard.setUuid(UUID.randomUUID().toString());
        itemMap.put(toCard.getUuid(), toCard);
    }

    @Override
    public void removeCardDetails(String cardUuid) {
        itemMap.remove(cardUuid);
    }
    
}

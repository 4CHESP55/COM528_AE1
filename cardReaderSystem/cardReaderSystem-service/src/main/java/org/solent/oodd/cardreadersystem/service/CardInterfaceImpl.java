/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.oodd.cardreadersystem.service;
import java.util.HashMap;
import org.solent.oodd.cardreadersystem.model.dto.CardDetails;
import org.solent.oodd.cardreadersystem.model.service.CardInterface;

/**
 *
 * @author Admin
 */
public class CardInterfaceImpl implements CardInterface {
    
    private HashMap<String, CardDetails> itemMap = new HashMap<String, CardDetails>();

    @Override
    public void addCardDetails(CardDetails cardDetails) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void removeCardDetails(String cardUuid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

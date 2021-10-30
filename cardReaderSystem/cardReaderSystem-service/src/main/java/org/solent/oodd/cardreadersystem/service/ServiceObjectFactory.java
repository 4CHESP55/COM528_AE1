/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.oodd.cardreadersystem.service;

import org.solent.oodd.cardreadersystem.model.service.CardInterface;
import org.solent.oodd.cardreadersystem.model.service.TransactionInterface;

/**
 *
 * @author cgallen
 */
public class ServiceObjectFactory {
    
    // cannot instantiate
    private ServiceObjectFactory(){
        
    }
    
    public static CardInterface getCardInterface(){
        return new CardInterfaceImpl();
    }
    
    public static TransactionInterface getTransactionInterface(){
        return new TransactionInterfaceImpl();
    }

    
}

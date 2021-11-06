/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.oodd.cardreadersystem.web;

import org.solent.oodd.cardreadersystem.service.CardInterfaceImpl;
import org.solent.oodd.cardreadersystem.service.TransactionInterfaceImpl;
import org.solent.oodd.cardreadersystem.model.service.CardInterface;
import org.solent.oodd.cardreadersystem.model.service.TransactionInterface;
import org.solent.oodd.cardreadersystem.service.ServiceObjectFactory;
import org.solent.oodd.cardreadersystem.model.dto.TransactionDetails;
import org.solent.oodd.cardreadersystem.model.dto.CardDetails;

/**
 *
 * @author cgallen
 */
public class WebObjectFactory {
    
    // cannot instantiate
    private WebObjectFactory(){
        
    }
    
    public static CardInterface getCardInterface(){
        return ServiceObjectFactory.getCardInterface();
    }
    
    public static TransactionInterface getTransactionInterface(){
        return ServiceObjectFactory.getTransactionInterface();
    }
    
    public static CardDetails getCardDetails(){
        return ServiceObjectFactory.getCardDetails();
    }
    
    public static TransactionDetails getTransactionDetails(){
        return ServiceObjectFactory.getTransactionDetails();
    }
    
}

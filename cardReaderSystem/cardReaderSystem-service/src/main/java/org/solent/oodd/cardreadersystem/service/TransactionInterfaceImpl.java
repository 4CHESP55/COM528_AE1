/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.oodd.cardreadersystem.service;
import java.util.HashMap;
import java.util.UUID;
import org.solent.oodd.cardreadersystem.model.dto.CardDetails;
import org.solent.oodd.cardreadersystem.model.service.CardInterface;
import org.solent.oodd.cardreadersystem.model.dto.TransactionDetails;
import org.solent.oodd.cardreadersystem.model.service.TransactionInterface;

/**
 *
 * @author Admin
 */
public class TransactionInterfaceImpl implements TransactionInterface {

    private HashMap<String, TransactionDetails> itemMap = new HashMap<String, TransactionDetails>();
    
    @Override
    public void addTransactionDetails(String toCard, String fromCard, String amount) {
        TransactionDetails transaction = new TransactionDetails();
        transaction.setToCard(toCard);
        transaction.setFromCard(fromCard);
        transaction.setAmount(amount);
        transaction.setUuid(UUID.randomUUID().toString());
        itemMap.put(transaction.getUuid(), transaction);
    }

    @Override
    public void removeTransactionDetails(String transactionUuid) {
        itemMap.remove(transactionUuid);
    }
    
}

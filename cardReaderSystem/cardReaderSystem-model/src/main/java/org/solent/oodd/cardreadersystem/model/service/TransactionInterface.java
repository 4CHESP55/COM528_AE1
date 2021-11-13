/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.solent.oodd.cardreadersystem.model.service;

import org.solent.oodd.cardreadersystem.model.dto.TransactionDetails;
import org.solent.oodd.cardreadersystem.model.dto.CardDetails;

/**
 *
 * @author Admin
 */
public interface TransactionInterface {
    public TransactionDetails addTransactionDetails(CardDetails toCard, CardDetails fromCard, String amount);
    public void sendTransaction(String url, TransactionDetails newTransaction);
}

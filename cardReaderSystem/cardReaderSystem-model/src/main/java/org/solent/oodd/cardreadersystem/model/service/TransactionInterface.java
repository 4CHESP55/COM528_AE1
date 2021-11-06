/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.solent.oodd.cardreadersystem.model.service;

import org.solent.oodd.cardreadersystem.model.dto.TransactionDetails;

/**
 *
 * @author Admin
 */
public interface TransactionInterface {
    public void addTransactionDetails(String toCard, String fromCard, String amount);
    public void removeTransactionDetails(String transactionUuid);
}

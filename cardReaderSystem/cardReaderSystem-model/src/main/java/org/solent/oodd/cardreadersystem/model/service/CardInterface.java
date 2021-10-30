/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.solent.oodd.cardreadersystem.model.service;

import org.solent.oodd.cardreadersystem.model.dto.CardDetails;

/**
 *
 * @author Admin
 */
public interface CardInterface {
    public void addCardDetails(CardDetails cardDetails);
    public void removeCardDetails(String cardUuid);
}

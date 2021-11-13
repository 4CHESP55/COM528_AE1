/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.solent.oodd.cardreadersystem.service;
import java.util.HashMap;
import java.util.UUID;
import java.util.logging.Level;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedHashMap;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;
import org.glassfish.jersey.jackson.internal.jackson.jaxrs.json.JacksonJsonProvider;
import org.glassfish.jersey.logging.LoggingFeature;
import org.solent.oodd.cardreadersystem.model.dto.CardDetails;
import org.solent.oodd.cardreadersystem.model.service.CardInterface;
import org.solent.oodd.cardreadersystem.model.dto.TransactionDetails;
import org.solent.oodd.cardreadersystem.model.service.TransactionInterface;

/**
 *
 * @author Admin
 */
public class TransactionInterfaceImpl implements TransactionInterface {
    
    final static Logger LOG = LogManager.getLogger(TransactionInterfaceImpl.class);
    
    @Override
    public TransactionDetails addTransactionDetails(CardDetails toCard, CardDetails fromCard, String amount) {
        TransactionDetails transaction = new TransactionDetails();
        transaction.setToCard(toCard);
        transaction.setFromCard(fromCard);
        transaction.setAmount(amount);
        return transaction;
    }
    
    @Override
    public void sendTransaction(String url, TransactionDetails newTransaction) {
        // sets up logging for the client       
        Client client = ClientBuilder.newClient(new ClientConfig().register(
                new LoggingFeature(java.util.logging.Logger.getLogger(LoggingFeature.DEFAULT_LOGGER_NAME),
                        Level.INFO, LoggingFeature.Verbosity.PAYLOAD_ANY, 10000)));

        // allows client to decode json
        client.register(JacksonJsonProvider.class);
        
        WebTarget webTarget = client.target(url).path("/transactionRequest");

        Invocation.Builder invocationBuilder = webTarget.request(MediaType.APPLICATION_JSON);        
       
        invocationBuilder.post(Entity.entity(newTransaction, MediaType.APPLICATION_JSON));
        
        

    }
    
}

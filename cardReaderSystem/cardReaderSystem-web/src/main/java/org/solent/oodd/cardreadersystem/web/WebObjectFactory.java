/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.solent.oodd.cardreadersystem.web;

import java.io.File;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
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
    private WebObjectFactory() {

    }

    final static Logger LOG = LogManager.getLogger(WebObjectFactory.class);

    private static PropertiesDao propertiesDao = null;

    public static PropertiesDao getPropertiesDao() {
        if (propertiesDao == null) {
            synchronized (WebObjectFactory.class) {
                if (propertiesDao == null) {
                    // creates a single instance of the dao
                    String TEMP_DIR = System.getProperty("java.io.tmpdir");
                    File propertiesFile = new File(TEMP_DIR + "/application.properties");
                    LOG.debug("using system temp directory: " + TEMP_DIR);
                    LOG.debug("using application properties file : " + propertiesFile.getAbsolutePath());
                    propertiesDao = new PropertiesDao(propertiesFile.getAbsolutePath(), "default.properties");
                }
            }
        }
        return propertiesDao;
    }

    public static CardInterface getCardInterface() {
        return ServiceObjectFactory.getCardInterface();
    }

    public static TransactionInterface getTransactionInterface() {
        return ServiceObjectFactory.getTransactionInterface();
    }

    public static CardDetails getCardDetails() {
        return ServiceObjectFactory.getCardDetails();
    }

    public static TransactionDetails getTransactionDetails() {
        return ServiceObjectFactory.getTransactionDetails();
    }


}

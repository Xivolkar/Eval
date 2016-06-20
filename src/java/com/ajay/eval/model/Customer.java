package com.ajay.eval.model;

/**
 *
 * @author Ajay Kelkar
 */
public class Customer {

    private String CustomerID;
    private String CustomerName;
    private String CustomerContactNum;

    public Customer() {
    }

    public Customer(String CustomerID, String CustomerName, String CustomerContactNum) {
        this.CustomerID = CustomerID;
        this.CustomerName = CustomerName;
        this.CustomerContactNum = CustomerContactNum;
    }

    public String getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(String CustomerID) {
        this.CustomerID = CustomerID;
    }

    public String getCustomerName() {
        return CustomerName;
    }

    public void setCustomerName(String CustomerName) {
        this.CustomerName = CustomerName;
    }

    public String getCustomerContactNum() {
        return CustomerContactNum;
    }

    public void setCustomerContactNum(String CustomerContactNum) {
        this.CustomerContactNum = CustomerContactNum;
    }
}

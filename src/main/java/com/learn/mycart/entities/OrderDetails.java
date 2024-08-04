package com.learn.mycart.entities;

//import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OrderDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderId;
    private String userName;
    private String userEmail;
    private String userPhone;
    private String userAddress;
    
   
//    private String productName;
//    private int productQuantity;
//    private double productPrice;

    
    //constructor
    public OrderDetails(int orderId,String userName, String userEmail,  String userPhone, String userAddress) {
        this.orderId = orderId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
        
//        this.productName = productName;
//        this.productQuantity = productQuantity;
//        this.productPrice = productPrice;
    }

    public OrderDetails(String userName,String userEmail,  String userPhone, String userAddress) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
   
//        this.productName = productName;
//        this.productQuantity = productQuantity;
//        this.productPrice = productPrice;
    }

    public OrderDetails() {
    }

   //getter and setter

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

     public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }


    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

//    public String getProductName() {
//        return productName;
//    }
//
//    public void setProductName(String productName) {
//        this.productName = productName;
//    }
//
//    public int getProductQuantity() {
//        return productQuantity;
//    }
//
//    public void setProductQuantity(int productQuantity) {
//        this.productQuantity = productQuantity;
//    }
//
//    public double getProductPrice() {
//        return productPrice;
//    }
//
//    public void setProductPrice(double productPrice) {
//        this.productPrice = productPrice;
//    }
    
    //tostring method to get data in string format

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", userName=" + userName + ", userEmail=" + userEmail +  ", userPhone=" + userPhone + ", userAddress=" + userAddress + '}';
    }
    
   
}

package entity;

import java.math.BigDecimal;
import java.time.LocalDate;

/**
 * Entity class representing an order item
 */
public class OrderItem {
    private int id;
    private int orderId;
    private int carId;
    private int variantId;
    private int quantity;
    private BigDecimal unitPrice;
    private String carName;
    private String variantName;
    private String categoryName;
    
    // Getters and Setters
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public int getOrderId() {
        return orderId;
    }
    
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    
    public int getCarId() {
        return carId;
    }
    
    public void setCarId(int carId) {
        this.carId = carId;
    }
    
    public int getVariantId() {
        return variantId;
    }
    
    public void setVariantId(int variantId) {
        this.variantId = variantId;
    }
    
    public int getQuantity() {
        return quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    public BigDecimal getUnitPrice() {
        return unitPrice;
    }
    
    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }
    
    public String getCarName() {
        return carName;
    }
    
    public void setCarName(String carName) {
        this.carName = carName;
    }
    
    public String getVariantName() {
        return variantName;
    }
    
    public void setVariantName(String variantName) {
        this.variantName = variantName;
    }
    
    public String getCategoryName() {
        return categoryName;
    }
    
    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
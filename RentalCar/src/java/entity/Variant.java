package entity;

import java.util.Date;

/**
 *
 * @author nguye
 */
public class Variant {
    private int id;
    private int carId;
    private Color color;
    private Size size;
    private int quantity;
    private Date lastRestockDate;

    public Variant(int id, int carId, Color color, Size size, int quantity, Date lastRestockDate) {
        this.id = id;
        this.carId = carId;
        this.color = color;
        this.size = size;
        this.quantity = quantity;
        this.lastRestockDate = lastRestockDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getLastRestockDate() {
        return lastRestockDate;
    }

    public void setLastRestockDate(Date lastRestockDate) {
        this.lastRestockDate = lastRestockDate;
    }

    @Override
    public String toString() {
        return "Variant{" + "id=" + id + ", carId=" + carId + ", color=" + color + ", size=" + size + ", quantity=" + quantity + ", lastRestockDate=" + lastRestockDate + '}';
    }
    
    
}
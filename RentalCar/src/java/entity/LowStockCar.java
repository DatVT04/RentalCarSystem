package entity;

public class LowStockCar {
    private int carId;
    private String carName;
    private String size;
    private String color;
    private int stockQuantity;

    // Thêm constructor không tham số
    public LowStockCar() {
        // Constructor không tham số
    }

    public LowStockCar(int carId, String carName, String size, String color, int stockQuantity) {
        this.carId = carId;
        this.carName = carName;
        this.size = size;
        this.color = color;
        this.stockQuantity = stockQuantity;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }
}
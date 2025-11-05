package entity;

public class CartItem {

    private int id;
    private int cartId;
    private int carId;
    private int variantId;
    private int quantity;
    private String carTitle;
    private String carThumbnail;
    private double carPrice;
    private String size;
    private String color;

    public CartItem() {
    }

    public CartItem(int id, int cartId, int carId, int variantId, int quantity) {
        this.id = id;
        this.cartId = cartId;
        this.carId = carId;
        this.variantId = variantId;
        this.quantity = quantity;
    }

    public CartItem(int cartId, int carId, int variantId, int quantity) {
        this.cartId = cartId;
        this.carId = carId;
        this.variantId = variantId;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
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

    public String getCarTitle() {
        return carTitle;
    }

    public void setCarTitle(String carTitle) {
        this.carTitle = carTitle;
    }

    public String getCarThumbnail() {
        return carThumbnail;
    }

    public void setCarThumbnail(String carThumbnail) {
        this.carThumbnail = carThumbnail;
    }

    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
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
}

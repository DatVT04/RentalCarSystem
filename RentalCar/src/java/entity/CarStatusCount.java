package entity;

public class CarStatusCount {
    private int totalCars;
    private int activeCount;
    private int inactiveCount;
    private int eoStockCount;
    
    public int getTotalCars() {
        return totalCars;
    }
    
    public void setTotalCars(int totalCars) {
        this.totalCars = totalCars;
    }
    
    public int getActiveCount() {
        return activeCount;
    }
    
    public void setActiveCount(int activeCount) {
        this.activeCount = activeCount;
    }
    
    public int getInactiveCount() {
        return inactiveCount;
    }
    
    public void setInactiveCount(int inactiveCount) {
        this.inactiveCount = inactiveCount;
    }
    
    public int getEoStockCount() {
        return eoStockCount;
    }
    
    public void setEoStockCount(int eoStockCount) {
        this.eoStockCount = eoStockCount;
    }
}
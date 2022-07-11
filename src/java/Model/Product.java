package Model;

public class Product {

    int productId;
    String pName;
    int quantity;
    String image;
    double price;
    int cid;

    public Product() {

    }

    public Product(int productId, String pName, int quantity, String image, double price, int cid) {
        this.productId = productId;
        this.pName = pName;
        this.quantity = quantity;
        this.image = image;
        this.price = price;
        this.cid = cid;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public String getPrice2() {
        return String.format("%.2f", price);
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

}

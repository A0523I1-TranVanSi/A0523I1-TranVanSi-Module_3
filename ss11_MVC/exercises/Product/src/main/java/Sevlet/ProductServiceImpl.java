package Sevlet;

import Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService   {
    private static Map<Integer,Product> productMap ;
    static {
        productMap = new HashMap<>();
        productMap.put(1,new Product(1,"may tinh","20000","new","Viet Nam"));
        productMap.put(2,new Product(2,"tivi","20000","new","Viet Nam"));
        productMap.put(3,new Product(3,"xe","20000","new","Viet Nam"));
        productMap.put(4,new Product(4,"may tinh","20000","new","Viet Nam"));
        productMap.put(5,new Product(5,"may tinh","20000","new","Viet Nam"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId(), product);
    }

    @Override
    public Product findByName(String name) {
        return productMap.get(name);
    }

    @Override
    public Product findById(int id) {
        return productMap.get(id);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id,product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }
}

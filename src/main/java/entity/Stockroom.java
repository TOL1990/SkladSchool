package entity;

import java.util.HashSet;
import java.util.Set;


public class Stockroom {

    private long id;

    private String stockName; //название склада. Напр: мед. склад, каб. 22, личный

    private Set<Product> products = new HashSet<Product>();

    private Employee stockOwner;


}

package entity;

import java.util.Date;
import java.util.Set;


public class Transaction {

    private Long id;

    private Stockroom from;

    private Stockroom to;

    private Date date;

    private Set<Products> productList; // список продуктов (Товар, количество)


}

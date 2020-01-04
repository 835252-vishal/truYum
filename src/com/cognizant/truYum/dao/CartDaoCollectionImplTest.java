package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public class CartDaoCollectionImplTest {
    static CartDao cartDao = new CartDaoCollectionImpl();

    public static void main(String[] args) {
        testAddCartItem();
        testGetAllCartItems();
        testRemoveCartItem();
        testGetAllCartItems();
    }

    public static void testAddCartItem() {
        System.out.println("Products added into cart\n");
        cartDao.addCartItem(1, 2);
        cartDao.addCartItem(1, 3);
    }

    public static void testGetAllCartItems() {
        try {

            System.out.println("Retrieving all the items from cart\n");
            List<MenuItem> list = cartDao.getAllCartItems(1).getMenuItemList();
            for (MenuItem menuItem : list) {
                System.out.println(menuItem);
            }
            System.out.println("Total Price : " + cartDao.getAllCartItems(1).getTotal());
        } catch (CartEmptyException e) {
            System.err.println(e);
        }
    }

    public static void testRemoveCartItem() {
        System.out.println("Remove Cart\n");
        cartDao.removeCartItem(1, 3);
    }
}

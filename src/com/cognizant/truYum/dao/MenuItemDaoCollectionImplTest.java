package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

//menu item main class
public class MenuItemDaoCollectionImplTest {
    static MenuItemDao menuDao = new MenuItemDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMenuItemListAdmin();
        testGetMenuItemListCustomer();
        testModifyMenuItem();
        // testGetMenuItemListAdmin();
        // testGetMenuItemListCustomer();
        testGetMenuItem();
    }

    static public void testGetMenuItemListAdmin() {
        System.out.println("Admin View\n");
        List<MenuItem> menu = menuDao.getMenuItemListAdmin();
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date Of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem : menu) {
            System.out.println(menuItem);// invoke toString
        }
    }

    static public void testGetMenuItemListCustomer() {
        System.out.println("Customer View\n");
        List<MenuItem> menu = menuDao.getMenuItemListCustomer();
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date Of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menu) {
            System.out.println(menuItem2);
        }
    }

    static public void testModifyMenuItem() {

        System.out.println("Modify Menu Item\n");
        MenuItem menuitem = new MenuItem(1, "Eat and Enjoy", 123.0f, true,
                DateUtil.convertToDate("02/01/2022"), "Main Courese", false);
        menuDao.modifyMenuItem(menuitem);
    }

    static public void testGetMenuItem() {
        System.out.println("Get Menu Item\n");
        System.out.printf("%-10s%-20s%-10s%-10s%-15s%-15s%-10s\n", "Id", "Name", "Price", "Active",
                "Date Of Launch", "Category", "Free Delivery");
        MenuItem menuitem = menuDao.getMenuItem(3);
        System.out.println(menuitem);
    }
}

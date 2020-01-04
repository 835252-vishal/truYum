package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;

public interface MenuItemDao {
    public List<MenuItem> getMenuItemListAdmin();

    public List<MenuItem> getMenuItemListCustomer();

    public void modifyMenuItem(MenuItem menuitem);// update menu items

    public MenuItem getMenuItem(long menuItemId);// retrive perticular menu item
}

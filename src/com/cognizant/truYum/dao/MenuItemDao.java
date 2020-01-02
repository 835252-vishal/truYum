package com.cognizant.truYum.dao;

import java.util.List;

import com.cognizant.truYum.model.MenuItem;

public interface MenuItemDao {
    public List<MenuItem> getMenuItemListAdmin();

    public List<MenuItem> getMenuItemListCustomer();

    public void modifyMenuItem(MenuItem menuitem);// update menu items

    public MenuItem getMenuItem(long menuItemId);// retrive perticular menu item
}

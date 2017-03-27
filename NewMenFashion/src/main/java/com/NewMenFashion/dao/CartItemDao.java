package com.NewMenFashion.dao;

import com.NewMenFashion.model.Cart;
import com.NewMenFashion.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}

package com.NewMenFashion.Service;

import com.NewMenFashion.model.Cart;
import com.NewMenFashion.model.CartItem;
public interface CartItemService
{
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);

}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEBD3000Assn1
{
    public static class Cart
    {
        private static List<CartItem> cart = new List<CartItem>();

        #region Properties


        #endregion

        #region Constructors

        #endregion


        #region Select Methods

        public static List<CartItem> FetchAllItems()
        {
            return cart;
        }

        #endregion

        #region Add Methods

        public static void AddItemToCart(CartItem item)
        {
            foreach (CartItem cartItem in cart)
            {
                if (cartItem.TitleId == item.TitleId)
                {
                    cartItem.Quantity++;
                    return;
                }
            }

            cart.Add(item);
        }

        public static void AddItemToCart(int titleId, string title, string type, string pubId, double price, string memo, int quantity)
        {
            CartItem newItem = new CartItem(titleId, title, type, pubId, price, memo,quantity);
            foreach (CartItem cartItem in cart)
            {
                if (cartItem.TitleId == newItem.TitleId)
                {
                    cartItem.Quantity++;
                    return;
                }
            }

            cart.Add(newItem);
        }

        #endregion

        #region Delete Methods
        public static bool DeleteItemFromCart(CartItem item)
        {
            foreach (CartItem listItem in cart)
            {
                if (item.TitleId == listItem.TitleId)
                {
                    cart.Remove(listItem);
                    return true;
                }
            }

            return false;
        }

        public static bool DeleteItemFromCart(int titleId)
        {
            foreach (CartItem listItem in cart)
            {
                if (listItem.TitleId == titleId)
                {
                    cart.Remove(listItem);
                    return true;
                }
            }

            return false;
        }
        #endregion


    }
}
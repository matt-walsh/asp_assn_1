using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WEBD3000Assn1
{
    public class CartItem
    {
        private int titleId;
        private string title;
        private string type;
        private string pubId;
        private double price;
        private string memo;
        private int quantity;

        #region Properties

        public int Quantity
        {
            get { return quantity; }
            set { quantity = value; }
        }

        public int TitleId
        {
            get { return titleId; }
            set { titleId = value; }
        }


        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        public string Type
        {
            get { return type; }
            set { type = value; }
        }

        public string PubId
        {
            get { return pubId; }
            set { pubId = value; }
        }

        public double Price
        {
            get { return price; }
            set { price = value; }
        }

        public string Memo
        {
            get { return memo; }
            set { memo = value; }
        }
        #endregion

        #region Constructors

        public CartItem(int titleId, string title, string type, string pubId, double price, string memo,int quantity)
        {
            this.titleId = titleId;
            this.title = title;
            this.type = type;
            this.pubId = pubId;
            this.price = price;
            this.memo = memo;
            this.quantity = quantity;
        }

        public CartItem(CartItem cartItem)
        {
            this.titleId = cartItem.titleId;
            this.title = cartItem.title;
            this.type = cartItem.type;
            this.pubId = cartItem.pubId;
            this.price = cartItem.price;
            this.memo = cartItem.memo;
            this.quantity = cartItem.quantity;

        }

        #endregion
    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WEBD3000Assn1.Restricted.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="CartDataSource">
        <Columns>
            <asp:BoundField DataField="TitleId" HeaderText="TitleId" 
                SortExpression="TitleId" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" 
                ReadOnly="True" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" 
                ReadOnly="True" />
            <asp:BoundField DataField="PubId" HeaderText="PubId" SortExpression="PubId" 
                ReadOnly="True" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" 
                ReadOnly="True" />
            <asp:BoundField DataField="Memo" HeaderText="Memo" ReadOnly="True" 
                SortExpression="Memo" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="CartDataSource" runat="server" 
        DeleteMethod="DeleteItemFromCart" 
        SelectMethod="FetchAllItems" TypeName="WEBD3000Assn1.Cart" 
    DataObjectTypeName="WEBD3000Assn1.CartItem" UpdateMethod="AddItemToCart">
        <DeleteParameters>
            <asp:Parameter Name="titleId" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publishers.aspx.cs" Inherits="WEBD3000Assn1.Restricted.Publishers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Search for Publishers here...</h2>

    <p>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pub_id" 
            DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="pub_id" HeaderText="Publisher Id" ReadOnly="True" 
                    SortExpression="pub_id" />
                <asp:BoundField DataField="pub_name" HeaderText="Publisher Name" 
                    SortExpression="pub_name" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="Country" 
                    SortExpression="country" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </p>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="WEBD3000Assn1.pubs_LINQDataContext" EntityTypeName="" 
        TableName="publishers" EnableDelete="True" EnableInsert="True" 
        EnableUpdate="True">
    </asp:LinqDataSource>
</asp:Content>

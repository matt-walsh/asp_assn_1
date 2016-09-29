<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Titles.aspx.cs" Inherits="WEBD3000Assn1.Restricted.Titles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Search for Books here...</h2>
    <p>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="WEBD3000Assn1.pubs_LINQDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="titles">
        </asp:LinqDataSource>


        <asp:GridView ID="titleGridView" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="title_id" 
            DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Title Id" SortExpression="title_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("title_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("title_id") %>'></asp:Label>
                        <br />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="title1">
                    <EditItemTemplate>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("title1") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nameValidator" runat="server" 
                            ControlToValidate="nameTextBox" ErrorMessage="Name Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("title1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Genre" SortExpression="type">
                    <EditItemTemplate>
                        <asp:TextBox ID="genreTextBox" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="genreValidator" runat="server" 
                            ControlToValidate="genreTextBox" ErrorMessage="Genre Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publisher" SortExpression="pub_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pub_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("pub_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price" SortExpression="price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Advances" SortExpression="advance">
                    <EditItemTemplate>
                        <asp:TextBox ID="advanceTextBox" runat="server" Text='<%# Bind("advance") %>'></asp:TextBox>
                        <asp:RangeValidator ID="advanceRangeValidator" runat="server" 
                            ControlToValidate="advanceTextBox" 
                            ErrorMessage="Value must be between 0 and 15000" ForeColor="#660066" 
                            MaximumValue="15000" MinimumValue="0" Type="Double"></asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("advance") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Royalties" SortExpression="royalty">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("royalty") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("royalty") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Year-to-Date Sales" SortExpression="ytd_sales">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ytd_sales") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("ytd_sales") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Notes" SortExpression="notes">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("notes") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("notes") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date Published" SortExpression="pubdate">
                    <EditItemTemplate>
                        <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("pubdate") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="dateValidator" runat="server" 
                            ControlToValidate="dateTextBox" ErrorMessage="Date Required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Bind("pubdate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="addToCartButton" runat="server" CausesValidation="False" 
                            CommandArgument='<%# Eval("title_id") %>' CommandName="&quot;AddToCart&quot;" 
                            onclick="addToCartButton_Click" oncommand="addToCartButton_Command" 
                            Text="Add to Cart"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
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
    <p>
        &nbsp;</p>


</asp:Content>

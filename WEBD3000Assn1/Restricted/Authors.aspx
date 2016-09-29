<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Authors.aspx.cs" Inherits="WEBD3000Assn1.Restricted.Authors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Search for Authors here...</h2>

    <p>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="WEBD3000Assn1.pubs_LINQDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="authors">
        </asp:LinqDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="au_id" 
            DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None" BackColor="#33CCFF">
            <AlternatingRowStyle BackColor="#FF0066" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Author Id" SortExpression="au_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("au_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("au_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name" SortExpression="au_fname">
                    <EditItemTemplate>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("au_lname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="lnameValidator" runat="server" 
                            ControlToValidate="lnameTextBox" ErrorMessage="Name Required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("au_lname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="au_lname">
                    <EditItemTemplate>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("au_fname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="fnameValidator" runat="server" 
                            ControlToValidate="fnameTextBox" ErrorMessage="Name Required." 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("au_fname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number" SortExpression="phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="phoneValidator" runat="server" 
                            ControlToValidate="phoneTextBox" ErrorMessage="Phone Required." 
                            ForeColor="#660066"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="phoneTextBox" ErrorMessage="Wrong Format (555 555-5555)" 
                            ValidationExpression="((\d{3} ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Street Address" SortExpression="address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="city">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("city") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("city") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State" SortExpression="state">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("state") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("state") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Zip" SortExpression="zip">
                    <EditItemTemplate>
                        <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>'></asp:TextBox>
                        <asp:RegularExpressionValidator ID="zipValidator" runat="server" 
                            ControlToValidate="zipTextBox" ErrorMessage="Exactly five numbers required" 
                            ForeColor="#660066" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("zip") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="On Contract" SortExpression="contract">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("contract") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("contract") %>' 
                            Enabled="false" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#0066FF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    
    </p>
</asp:Content>

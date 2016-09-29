<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="WEBD3000Assn1.Restricted.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Search for Employees here...</h2>

    <p>
    
        <asp:GridView ID="employeeGrid" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="emp_id" 
            DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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
                <asp:TemplateField HeaderText="Emp Id" SortExpression="emp_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("emp_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("emp_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First Name" SortExpression="fname">
                    <EditItemTemplate>
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="fnameValidator" runat="server" 
                            ControlToValidate="fnameTextBox" ErrorMessage="Name Required." 
                            ForeColor="#660066"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("fname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Init." SortExpression="minit">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("minit") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("minit") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="lname">
                    <EditItemTemplate>
                        <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="lnameValidator" runat="server" 
                            ControlToValidate="lnameTextBox" ErrorMessage="Name Required." 
                            ForeColor="#660066"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("lname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Id" SortExpression="job_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="jobTextBox" runat="server" Text='<%# Bind("job_id") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="jobValidator" runat="server" 
                            ControlToValidate="jobTextBox" ErrorMessage="Job Required." ForeColor="#660066"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("job_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Level" SortExpression="job_lvl">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("job_lvl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("job_lvl") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publisher" SortExpression="pub_id">
                    <EditItemTemplate>
                        <asp:TextBox ID="publisherTextBox" runat="server" Text='<%# Bind("pub_id") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="publisherValidator" runat="server" 
                            ControlToValidate="publisherTextbox" ErrorMessage="Pub Required" 
                            ForeColor="#660066"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("pub_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hire Date" SortExpression="hire_date">
                    <EditItemTemplate>
                        <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("hire_date") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="dateValidator" runat="server" 
                            ControlToValidate="dateTextBox" ErrorMessage="Date Required." 
                            ForeColor="#660066"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("hire_date") %>'></asp:Label>
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
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="WEBD3000Assn1.pubs_LINQDataContext" EnableDelete="True" 
            EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="employees">
        </asp:LinqDataSource>
    
    </p>
</asp:Content>

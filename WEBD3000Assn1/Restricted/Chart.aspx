<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="WEBD3000Assn1.Restricted.Chart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
    ContextTypeName="WEBD3000Assn1.pubs_LINQDataContext" EntityTypeName="" 
        TableName="titles">
</asp:LinqDataSource>
    <asp:Chart ID="ytdSalesChart" runat="server" DataSourceID="LinqDataSource1" 
        Width="571px" Height="275px" style="margin-left: 308px">
        <Series>
            <asp:Series ChartType="Pie" Legend="Legend1" Name="Series1" XValueMember="type" 
                YValueMembers="ytd_sales">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
    </asp:Chart>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Sort By:"></asp:Label>
    <asp:RadioButton ID="publisherRadioBtn" runat="server" GroupName="SortGroup" 
        oncheckedchanged="publisherRadioBtn_CheckedChanged" Text="Publisher" />
    <asp:RadioButton ID="typeRadioBtn" runat="server" Checked="True" 
        GroupName="SortGroup" oncheckedchanged="typeRadioBtn_CheckedChanged" 
        Text="Type" />
    <asp:RadioButton ID="priceRangeRadioBtn" runat="server" GroupName="SortGroup" 
        oncheckedchanged="priceRangeRadioBtn_CheckedChanged" Text="Price Range:" />
    <asp:DropDownList ID="priceRangeDDBox" runat="server">
        <asp:ListItem Value="Range1">$0.00 to $10.00</asp:ListItem>
        <asp:ListItem Value="Range2">$10.00 to $20.00</asp:ListItem>
        <asp:ListItem Value="Range3">&gt;$20.00</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Chart Type:"></asp:Label>
    <asp:DropDownList ID="chartTypeDDList" runat="server" AutoPostBack="True" 
        onselectedindexchanged="chartTypeDDList_SelectedIndexChanged">
        <asp:ListItem Selected="True" Value="Pie">Pie Chart</asp:ListItem>
        <asp:ListItem Value="Bar">Bar Graph</asp:ListItem>
        <asp:ListItem Value="Line">Line Graph</asp:ListItem>
    </asp:DropDownList>
</asp:Content>

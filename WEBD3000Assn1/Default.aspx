<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WEBD3000Assn1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content> 
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1>
        Pubs Online Book Store
        <asp:DropDownList ID="themeDropDown" runat="server" 
            onselectedindexchanged="themeDropDown_SelectedIndexChanged" 
            ontextchanged="themeDropDown_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="0">Select a Theme...</asp:ListItem>
            <asp:ListItem Value="LightColor">Light</asp:ListItem>
            <asp:ListItem Value="DarkColor">Dark</asp:ListItem>
        </asp:DropDownList>
    </h1>
    <h4>
        Welcome to Pubs Book store! 
    </h4>
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean porta nisi magna. Nullam nec odio lacus. Proin dapibus sodales placerat. 
        Aenean vulputate commodo massa. Morbi vel turpis et justo tempus luctus ut ut justo. Morbi lobortis, mi eu vestibulum pulvinar, ipsum ante 
        fermentum ipsum, in tristique mi sapien vitae elit. Aenean ut sem ante, non sollicitudin ante. In viverra mi nec risus placerat blandit. 
        Phasellus tellus nulla, feugiat sit amet consequat sed, dictum vel lorem. Fusce a massa et elit tincidunt suscipit sed id massa. 
        Suspendisse volutpat mollis viverra. Maecenas accumsan elit a elit fringilla et adipiscing tellus laoreet. Aliquam iaculis, nulla non 
        suscipit rutrum, lectus enim fringilla quam, ut iaculis diam elit ut risus. Nulla commodo, arcu et congue tempus, mi nisl congue eros, sit 
        amet sagittis mauris nisl in ligula. Nullam id velit gravida augue ultrices facilisis. Aliquam fringilla neque id eros mattis ut convallis 
        nisi pharetra.</p>
 
        <p>Proin vitae urna nunc. Aenean a augue velit. Ut id ipsum sapien. In hac habitasse platea dictumst. Etiam sed imperdiet ipsum. Vestibulum ante ipsum
        primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus
        mus. In hac habitasse platea dictumst. Nam dictum commodo nisl. Cras euismod dapibus vehicula. Vestibulum eu lectus quis tellus pellentesque
        condimentum a eget eros.

    </p>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="IcecekAl.aspx.cs" Inherits="Sinema_Bilgi_Sistemi.IcecekAl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- DropDownList -->
    <asp:DropDownList ID="icecekDropDown" runat="server" Height="102px" Width="135px" style="vertical-align: top; margin-left: 683px;">
        <asp:ListItem Text="Su 20 TL" Value="1" />
        <asp:ListItem Text="Çay 40 TL" Value="2" />
        <asp:ListItem Text="Kahve 50 TL" Value="3" />
        <asp:ListItem Text="Meyve Suyu 30 TL" Value="4" />
        <asp:ListItem Text="RedBull 110 TL" Value="5" />
    </asp:DropDownList>

    <!-- Ekle Button -->
    <asp:Button ID="ekleButon" runat="server" Text="Ekle" style="vertical-align: top;" OnClick="ekleButon_Click" Width="51px" />

    <!-- ListBox -->
    <asp:ListBox ID="icecekListBox" runat="server" Height="206px" Width="171px" style="margin-left: 0px; margin-top: 40px;"></asp:ListBox>

    <!-- Hesapla Button -->
    <asp:Button ID="hesaplaButon" runat="server" Text="Hesapla" OnClick="hesaplaButton_Click" Height="36px" />

    <!-- İndirim Label -->
    <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
</asp:Content>

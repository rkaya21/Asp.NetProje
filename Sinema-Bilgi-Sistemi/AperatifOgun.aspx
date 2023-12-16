<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="AperatifOgun.aspx.cs" Inherits="Sinema_Bilgi_Sistemi.AperatifOgun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 68px;
        }
        .button {
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:46%; height: 190px; margin-left: 510px;">
        <tr>
            <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Menüler"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="XX-Large" Width="409px">
                    <asp:ListItem Value="50">Mısır</asp:ListItem>
                    <asp:ListItem Value="50">Cips</asp:ListItem>
                    <asp:ListItem Value="80">Protein Bar</asp:ListItem>
                    <asp:ListItem Value="150">Lüks Çerez</asp:ListItem>
                    <asp:ListItem Value="200">Full Menü</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td rowspan="4">
                <asp:ListBox ID="ListBox1" runat="server" Font-Size="Large" Height="320px" Width="225px"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" Font-Size="XX-Large" GroupName="1" Text="Tam" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="XX-Large" GroupName="1" Text="Öğrenci" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;<asp:Button ID="ekleBtn" runat="server" CssClass="auto-style2" Font-Size="Large" OnClick="ekleBtn_Click" Text="Ekle" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;
               &nbsp;&nbsp; <asp:Button ID="siparisBtn" runat="server" CssClass="button" OnClick="siparisBtn_Click" Text="Siparişi Tamamla" Width="120px" />
&nbsp;<asp:Button ID="temizleBtn" runat="server" OnClick="temizleBtn_Click" Text="Temizle" Width="93px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: x-large">&nbsp;&nbsp;&nbsp;3 ürün ve üstü alana %50 indirim (Tam Kişi)&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Her ürün %50 indirim(Öğrenci)</td>
        </tr>
    </table>
</asp:Content>


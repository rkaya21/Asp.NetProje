<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Sinema_Bilgi_Sistemi.Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="web/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="box-form">
            <div class="left">
                <div class="overlay">
                    <h1>ReCinema</h1>
                    <p>ReCinema ile Gerçek Dünyadan Kopmayın, Sinemanın Büyülü Dünyasında Kalın!</p>
                    <span>
                        <p>Sosyal Medya Adresinle Giriş Yapabilirsin.</p>
                        <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </span>
                </div>
            </div>

            <div class="right">
                <h5>Giriş</h5>
                <p>Hesabınız yok mu? <a href="#">Hesap Oluşturun</a>, bir dakikanızı bile almaz</p>
                <div class="inputs">
                    <asp:TextBox ID="user" runat="server" placeholder="Kullanıcı Adınız"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="pass" runat="server" placeholder="Şifreniz" TextMode="Password"></asp:TextBox>
                </div>

                <br /><br />

                <div class="remember-me--forget-password">
                    <label>
                        <input type="checkbox" name="item" checked />
                        <span class="text-checkbox">Beni Hatırla</span>
                    </label>
                    <p>Şifreni mi unuttun?</p>
                </div>

                <br />
                <asp:Label ID="lblsonuc" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
            </div>
        </div>
    </form>
</body>
</html>
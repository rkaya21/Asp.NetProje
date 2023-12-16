<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BiletAl.aspx.cs" Inherits="Sinema_Bilgi_Sistemi.BiletAl" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="biletal/style.css">
    <title>Sinema Bilet Rezervasyon</title>
    <style>
        /* Yeni eklenen stil kuralları */
        body {
            background-color: #292929;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            color: #fff;
        }

        .info {
            background-color: rgba(0, 0, 0, 0.2);
            padding: 5px 10px;
            color: #777;
            display: flex;
        }

            .info li {
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 10px;
            }

        p.text span {
            color: #f6eb6f;
        }

        /* Eski eklenen stiller */
        .film-list {
            margin-top: 20px;
            text-align: center;
            position: relative; /* Relative pozisyon */
        }

        #ekleButton, #satinalButton, #tutarLabel {
            position: absolute; /* Absolute pozisyon */
            top: 100%; /* Dropdown listin altında */
            font-size: 14px;
            padding: 8px 16px;
        }

        #ekleButton {
            left: 20%; /* Sol tarafta */
            transform: translateX(-50%); /* Orta hizalama */
        }

        #satinalButton {
            left: 50%; /* Tam ortada */
            transform: translateX(-50%); /* Orta hizalama */
        }

        #tutarLabel {
            left: 80%; /* Sağ tarafta */
            transform: translateX(-50%); /* Orta hizalama */
        }

        .checkout-box {
            margin-top: 20px;
            text-align: center; /* Aligned center */
        }

        #fiyatLabel {
            position: fixed; /* Sabit pozisyon */
            bottom: 10px; /* Sayfanın altına 10px mesafe */
            left: 10px; /* Sayfanın soluna 10px mesafe */
            font-size: 16px;
        }

        /* Yeni eklenen stiller - Koltuklar */
        .row {
            display: flex;
        }

        .seat {
            background-color: #444451;
            height: 15px;
            width: 15px;
            margin: 3px;
            border-radius: 5px;
        }

            .seat.selected {
                background-color: #f6eb6f;
            }

            .seat.reserved {
                background-color: #fff;
            }

            .seat:not(.reserved):hover {
                cursor: pointer;
                transform: scale(1.3);
            }

            .seat:nth-of-type(2) {
                margin-right: 20px;
            }

            .seat:nth-last-of-type(3) {
                margin-right: 20px;
            }

        /* Eski eklenen stiller - Ekstra Stiller */
        .info {
            display: flex;
            justify-content: space-around;
            list-style: none;
            padding: 0;
            margin: 0;
        }

            .info li {
                text-align: center;
            }

            .info .seat {
                width: 30px;
                height: 30px;
                margin-right: 5px;
            }

            .info .selected {
                background-color: #4CAF50; /* Yeşil */
            }

            .info .reserved {
                background-color: #f44336; /* Kırmızı */
            }

        /* Eski eklenen stiller - Ekstra Stiller */
        .screen {
            background-color: #fff;
            height: 50px;
            width: 100%;
            margin: 20px 0;
            box-shadow: 0 3px 8px rgba(255, 255, 255, 0.7);
        }

        .movie-list {
            margin: 20px 0;
        }
        .auto-style1 {
            width: 517px;
            height: 324px;
        }
        .auto-style2 {
            width: 485px;
            height: 321px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="screen">
                <!-- Eski oturma planı kodları buraya -->
            </div>
            <div class="row">
                <!-- Koltuklar -->
            </div>
        </div>

        <ul class="info">
            <li>
                <!-- Ana Sayfaya Dön butonu burada -->
                <asp:Button ID="Button2" runat="server" OnClick="exit_Click" Text="Ana Sayfaya Dön " />
            </li>
            <li>
                <div class="seat selected"></div>
                <small>Seçili</small>
            </li>
            <li>
                <div class="seat"></div>
                <small>Boş</small>
            </li>
            <li>
                <div class="seat reserved"></div>
                <small>Dolu</small>
            </li>
        </ul>

        <!-- Film Listesi -->
        <div class="film-list">
            <asp:DropDownList ID="filmDropDown" runat="server" OnSelectedIndexChanged="filmDropDown_SelectedIndexChanged">
                <asp:ListItem Text="Uçurtma Avcısı" Value="1" />
                <asp:ListItem Text="Maymunlar Cehennemi" Value="2" />
                <asp:ListItem Text="Ragnar Lothbrok" Value="3" />
                <asp:ListItem Text="Yuri Boyka" Value="4" />
                <asp:ListItem Text="Hızlı ve Öfkeli" Value="5" />
            </asp:DropDownList>

            <asp:ListBox ID="filmListBox" runat="server" Height="105px" Width="164px"></asp:ListBox>

            <!-- Ekle butonu burada -->
            <asp:Button ID="ekleButton" runat="server" Text="Ekle" OnClick="ekleButton_Click" />

            <!-- Satın Al butonu burada -->
            <asp:Button ID="satinalButton" runat="server" OnClick="satinalButton_Click" Text="Satın Al" />

            <!-- Tutar Label -->
            
                          <asp:Label ID="hesaplaLbl" runat="server" Text="Label"></asp:Label>

        </div>

        <!-- Fiyat Label -->
        <asp:Label ID="fiyatLabel" runat="server" Text="Filmlerin fiyatı: 50 TL"></asp:Label>
        
    </form>
    <p>
        &nbsp;</p>
    <p>
        <img alt="" class="auto-style1" longdesc="https://localhost:44392/BiletAl.aspx" src="assets/Ivar.jpg" style="position: fixed; top: 10px; left: 10px; z-index: 999;" /></p>
    <p>
        <img alt="" class="auto-style2" longdesc="https://localhost:44392/BiletAl.aspx" src="assets/rec.jpg" style="position: fixed; top: 10px; right: 10px; z-index: 999;" /></p>
</body>
</html>

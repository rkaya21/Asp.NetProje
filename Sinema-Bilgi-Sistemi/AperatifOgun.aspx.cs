using System;

namespace Sinema_Bilgi_Sistemi
{
    public partial class AperatifOgun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ekleBtn_Click(object sender, EventArgs e)
        {
            // DropDownList'tan seçilen ürünün metnini ve değerini al
            string secilenUrun = DropDownList1.SelectedItem.Text;
            int urunFiyati = Convert.ToInt32(DropDownList1.SelectedValue);

            // ListBox'a seçilen ürünü ekle
            ListBox1.Items.Add(secilenUrun + " - " + urunFiyati);

            // Session'da tutulan değerleri güncelle
            if (Session["adet"] == null)
            {
                Session["adet"] = 1;
                Session["min"] = urunFiyati;
                Session["toplam"] = urunFiyati;
            }
            else
            {
                if (urunFiyati < Convert.ToInt32(Session["min"]))
                {
                    Session["min"] = urunFiyati;
                }
                Session["adet"] = Convert.ToInt32(Session["adet"]) + 1;
                Session["toplam"] = Convert.ToInt32(Session["toplam"]) + urunFiyati;
            }
        }

        protected void siparisBtn_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["adet"]) >= 3 && RadioButton1.Checked)
            {
                int indirimTutari = Convert.ToInt32(Session["min"]);
                int toplamTutar = Convert.ToInt32(Session["toplam"]);

                // 3 ürün ve üstü için %50 indirim yap
                indirimTutari = toplamTutar / 2;

                ListBox1.Items.Add("Toplam Tutar: " + toplamTutar);
                ListBox1.Items.Add("İndirim Tutarı: " + indirimTutari);
                int odenecektutar = toplamTutar - indirimTutari;
                ListBox1.Items.Add("Ödenecek Tutar : " + odenecektutar);
            }
            else if (Convert.ToInt32(Session["adet"]) < 3 && RadioButton1.Checked)
            {
                // 3'ten az ürün ve RadioButton1 seçiliyse direkt yazdır
                ListBox1.Items.Add("Toplam Tutar: " + Convert.ToInt32(Session["toplam"]));
                ListBox1.Items.Add("Ödenecek Tutar : " + Convert.ToInt32(Session["toplam"]));
            }
            else
            {
                // RadioButton2 seçiliyse, seçilen ürün miktarını al ve %50'sini hesapla
                double indirimOrani = 0.5;
                double odenecektutar = Convert.ToDouble(Session["toplam"]) * (1 - indirimOrani);

                ListBox1.Items.Add("Toplam Tutar: " + Convert.ToInt32(Session["toplam"]));
                ListBox1.Items.Add("Ödenecek Tutar : " + odenecektutar);
            }
        }

        protected void temizleBtn_Click(object sender, EventArgs e)
        {
            // ListBox'ı temizle
            ListBox1.Items.Clear();

            // Session bilgilerini temizle
            Session["adet"] = null;
            Session["min"] = null;
            Session["toplam"] = null;
        }
    }
}

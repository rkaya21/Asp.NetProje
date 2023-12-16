using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Sinema_Bilgi_Sistemi
{
    public partial class IcecekAl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl.Visible = false;
                // Sayfa ilk kez yükleniyorsa, Session'ı temizle
                Session["SecilenIcecekler"] = new List<string>();
            }
        }

        protected void ekleButon_Click(object sender, EventArgs e)
        {
            // DropDownList'dan seçilen öğenin metnini ve değerini al
            string secilenIcecek = icecekDropDown.SelectedItem.Text;

            // Session'da seçilen içecekleri tutan listeyi al
            List<string> secilenIcecekler = Session["SecilenIcecekler"] as List<string>;

            // Eğer liste henüz oluşturulmadıysa, yeni bir liste oluştur
            if (secilenIcecekler == null)
            {
                secilenIcecekler = new List<string>();
            }

            // Seçilen içeceği listeye ekle
            secilenIcecekler.Add(secilenIcecek);

            // Güncellenmiş listeyi Session'a geri kaydet
            Session["SecilenIcecekler"] = secilenIcecekler;

            // ListBox'a seçilen içeceği ekle
            icecekListBox.Items.Add(secilenIcecek);
        }

        protected void hesaplaButton_Click(object sender, EventArgs e)
        {
            // Session'da seçilen içecekleri tutan listeyi al
            List<string> secilenIcecekler = Session["SecilenIcecekler"] as List<string>;

            if (secilenIcecekler != null)
            {
                int icecekSayisi = secilenIcecekler.Count;
                int toplamTutar = 0;

                foreach (string icecek in secilenIcecekler)
                {
                    // Her bir içeceğin fiyatını belirle
                    int fiyat = 0;
                    switch (icecek)
                    {
                        case "Su 20 TL":
                            fiyat = 20;
                            break;
                        case "Çay 40 TL":
                            fiyat = 40;
                            break;
                        case "Kahve 50 TL":
                            fiyat = 50;
                            break;
                        case "Meyve Suyu 30 TL":
                            fiyat = 30;
                            break;
                        case "RedBull 110 TL":
                            fiyat = 110;
                            break;
                        default:
                            break;
                    }

                    // Her bir içeceğin fiyatını topla
                    toplamTutar += fiyat;
                }

                // Toplam içecek sayısı ve tutarı göster
                lbl.Text = $"Toplam İçecek Sayısı: {icecekSayisi}, Toplam Tutar: {toplamTutar} TL";

                // Label'ı görünür yap
                lbl.Visible = true;
            }

        }
    }
}

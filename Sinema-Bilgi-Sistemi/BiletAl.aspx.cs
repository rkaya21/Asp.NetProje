using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Sinema_Bilgi_Sistemi
{
    public partial class BiletAl : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                hesaplaLbl.Visible = false;
            }
        }

        protected void exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnaSayfa.aspx");
        }

        protected void filmDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void ekleButton_Click(object sender, EventArgs e)
        {
            // Ekle butonuna basınca secileni listbox'a ekle
            string secilenFilm = filmDropDown.SelectedItem.Text;

            if (!filmListBox.Items.Contains(new ListItem(secilenFilm))) // aynı film 
            {
                filmListBox.Items.Add(secilenFilm);
            }
        }

        protected void satinalButton_Click(object sender, EventArgs e)
        {
            // Seçilen filmleri al
            List<string> secilenFilmler = new List<string>();
            foreach (ListItem item in filmListBox.Items)
            {
                secilenFilmler.Add(item.Text);
            }

            // Seçilen filmleri ve toplam tutarı Session'da sakla
            if (secilenFilmler.Count > 0)
            {
                Session["SecilenFilmler"] = secilenFilmler;
                Session["ToplamTutar"] = (secilenFilmler.Count * 50).ToString("C"); // Her film 50 TL
                hesaplaLbl.Text = "Toplam Tutar: " + Session["ToplamTutar"];
                hesaplaLbl.Visible = true;
            }
            else
            {
                hesaplaLbl.Text = "Lütfen en az bir film seçiniz.";
                hesaplaLbl.Visible = true;
            }
        }
    }
}

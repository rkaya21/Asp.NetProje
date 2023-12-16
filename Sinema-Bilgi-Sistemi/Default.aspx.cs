using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sinema_Bilgi_Sistemi
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblsonuc.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (user.Text == "admin" && pass.Text == "admin")
            {
                Session["Giris"] = user.Text;
                Response.Redirect("AnaSayfa.aspx");
            }
            else lblsonuc.Text = "Hatalı Giriş Yaptınız"; lblsonuc.Visible = true;
            
        }
    }
}
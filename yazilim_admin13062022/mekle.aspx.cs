using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yazilim_admin13062022
{
    public partial class mekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            kbasarili.Visible = false;
            kbasarisiz.Visible = false;
            MusteriCRUD mustericrud = new MusteriCRUD();
           Musteri musteri=new Musteri();
            musteri.Tc = TextBox1.Text;
            musteri.Unvan = DropDownList1.SelectedItem.Text;
            musteri.Cinsiyet = DropDownList2.SelectedItem.Text;
            musteri.Dtar = Convert.ToDateTime(TextBox2.Text);
           bool cevap= mustericrud.mekle(musteri);
            if (cevap==false)
            {
                //Label1.Text = "Hata.Kayıt Eklenemedi!!!";
                kbasarisiz.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "deneme", "hata()", true);
            }
            else
            {
                //Label1.Text = "Kayıt başarıyla eklendi!!!";
                //kbasarili.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "deneme", "tamam()", true);
            }
        }
    }
}
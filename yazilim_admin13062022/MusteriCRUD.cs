using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace yazilim_admin13062022
{
    public class MusteriCRUD
    {
        Db db = new Db();
        //müşteri ekleme
        public bool mekle(Musteri ymusteri)
        {
            bool donus = true;
            db.ac();
            SqlCommand komut = new SqlCommand("insert into okuyucu values(@a,@b,@c,@d)",db.baglanti);
            komut.Parameters.AddWithValue("@a", ymusteri.Tc);
            komut.Parameters.AddWithValue("@b", ymusteri.Unvan);
            komut.Parameters.AddWithValue("@c", ymusteri.Cinsiyet);
            komut.Parameters.AddWithValue("@d",ymusteri.Dtar);
            int sonuc=komut.ExecuteNonQuery();
            if (sonuc==0)//kayıt ekleme işlemi başarısız
            {
                donus = false;
            }

            db.kapat();
            return donus;
        }

        //müşteri güncelleme
        //müşteri silme
        //müşteri listeleme
    }
}
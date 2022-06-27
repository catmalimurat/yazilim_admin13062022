using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace yazilim_admin13062022
{

    public class Db
    {
        public SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["yazkutuphanedbConnectionString1"].ConnectionString);

        public void ac()
        {
            baglanti.Open();
        }

        public void kapat()
        {
            baglanti.Close();
        }
    }
}
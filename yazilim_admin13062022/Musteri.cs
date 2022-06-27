using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yazilim_admin13062022
{
    public class Musteri
    {
        string tc, unvan, cinsiyet;
        DateTime dtar;

        public string Tc { get => tc; set => tc = value; }
        public string Unvan { get => unvan; set => unvan = value; }
        public string Cinsiyet { get => cinsiyet; set => cinsiyet = value; }
        public DateTime Dtar { get => dtar; set => dtar = value; }
    }
}
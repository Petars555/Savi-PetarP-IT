using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DomaciLPgit
{
    public partial class prijava : System.Web.UI.Page
    {
        public string ime
        {
            get { return tbime.Text; }
        }

        public string mejl
        {
            get { return tbemail.Text; }
        }

        public string godina
        {
            get { return tbgodina.Text; }
        }

        public string razred
        {
            get { return rbl.Text; }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if (valime.IsValid && valemail.IsValid
                           && expvalemail.IsValid && valemailconf.IsValid
                           && valporediemail.IsValid && valrbl.IsValid && valgodina.IsValid && valrangegod.IsValid)
            {
                btn.PostBackUrl = "izvestaj.aspx";
                lblPoruka.Text = "Upitnik je ispravno popunjen!";
            }
            else
                lblPoruka.Text = "Upitnik nije ispravno popunjen!";
        }
    }
}
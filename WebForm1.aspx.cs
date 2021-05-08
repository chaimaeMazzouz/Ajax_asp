using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Threading;
using System.Data;
using System.Data.SqlClient;

namespace AT10
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn_ComVoyage = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RemplirGrid();
            }
        }
        void RemplirGrid()
        {
            cn_ComVoyage.Open();
            SqlCommand cmd_rp = new SqlCommand("select*from chauffeur", cn_ComVoyage);
            GridView1.DataSource = cmd_rp.ExecuteReader();
            GridView1.DataBind();
            cn_ComVoyage.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Thread.Sleep(3000);
            cn_ComVoyage.Open();
            SqlCommand cmd = new SqlCommand($"insert into chauffeur values('{ID.Text}','{NOM.Text}','{PRENOM.Text}','{Adresse.Text}','{Date.Text}',{salaire.Text})", cn_ComVoyage);
            cmd.ExecuteNonQuery();
            cn_ComVoyage.Close();
            
        }


        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            RemplirGrid();

        }
    }
}
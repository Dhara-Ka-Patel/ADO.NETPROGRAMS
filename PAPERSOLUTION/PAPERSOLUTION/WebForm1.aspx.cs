using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PAPERSOLUTION
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("<%$ ConnectionStrings:ce53ConnectionString %>");
            SqlCommand cmd = new SqlCommand("SELECT * FROM [login]");
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

        }
    }
}
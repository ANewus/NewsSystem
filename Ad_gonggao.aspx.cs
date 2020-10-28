using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Ad_gonggao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            this.MultiView1.ActiveViewIndex = 0;

        }
        else
        {
         
            this.MultiView1.ActiveViewIndex = 1;
            this.HyperLink1.Text = Session["name"].ToString();
        }
        if (!IsPostBack)
        {
            int k = Convert.ToInt32(Request["a"]);
            string s = "select * from gonggao where id=" + k.ToString();
            DataSet ds = DB.reDs(s);
            this.Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            this.Label2.Text = ds.Tables[0].Rows[0][3].ToString();
            this.Label3.Text = ds.Tables[0].Rows[0][2].ToString();
            this.Label4.Text = ds.Tables[0].Rows[0][1].ToString();
        }
    }
   
}
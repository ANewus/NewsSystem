using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["search"] == null)
            {
                this.TextBox1.Text = "";

            }
            else
            {
                this.TextBox1.Text = Session["search"].ToString();
                ss();

            }
        }
    }
 
    protected void Button1_Click1(object sender, EventArgs e)
    {
        ss();
    }
    #region 搜索
    public void ss()
    {

          string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from wenzhang where biaoti like '%" + this.TextBox1.Text.Trim() + "%'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.SqlDataSource1.SelectCommand = cmd.CommandText;
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('搜索不到,请换关键字！')</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('搜索失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }

    }
    #endregion

}
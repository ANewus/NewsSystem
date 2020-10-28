using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Ad_wenzhang : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            this.MultiView1.ActiveViewIndex = 0;

        }
        else
        {
            Ad();
            this.MultiView1.ActiveViewIndex = 1;
            this.HyperLink1.Text = Session["name"].ToString();
        }
        if (!IsPostBack)
        {
            int k = Convert.ToInt32(Request["a"]);
            string s = "select * from news where id=" + k.ToString();
            DataSet ds = DB.reDs(s);
            this.Label1.Text = ds.Tables[0].Rows[0][1].ToString(); //标题
            this.Label2.Text = ds.Tables[0].Rows[0][4].ToString(); //时间
            this.Label3.Text = ds.Tables[0].Rows[0][2].ToString(); //内容
            this.Label4.Text = ds.Tables[0].Rows[0][1].ToString(); //位置
            Page.Title = ds.Tables[0].Rows[0][1].ToString(); 
            //this.Label5.Text = ds.Tables[0].Rows[0][1].ToString(); //标题
            this.Image1.ImageUrl = ds.Tables[0].Rows[0][3].ToString();

        }
    }
    #region 判断是否管理员
    public void Ad()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            // cmd.CommandText = "select * from wenzhang where biaoti like'%" +this.TextBox1.Text.Trim()+ "%'";
            cmd.CommandText = "select * from Admin where ad_id ='" + Session["name"].ToString() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                dr.Close();
            }
            else
            {
                RegisterStartupScript("提示", "<script>alert('非管理员用户！');window.close()</script>");
                dr.Close();
            }

        }
        catch
        {
            Response.Write("<script>alert('查询用户失败，请重试！')</script>");

        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
}
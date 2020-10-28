using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class yhfk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else 
        {
            this.Label1.Text = Session["name"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        qrly();
    }
    #region 确认留言
    public void qrly()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into liuyan(yh_id,lytime,lynr) values('" + Session["name"].ToString() + "','" + DateTime.Now.ToLocalTime().ToString() + "','" + this.TextBox2.Text.Trim() + "')";
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('留言成功！')</script>");
            this.TextBox2.Text = "";

        }
        catch
        {
            Response.Write("<script>alert('留言失败，请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
}
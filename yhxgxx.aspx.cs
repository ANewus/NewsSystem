using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class yhxgxx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else
            this.Label1.Text = Session["name"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        xuigaixx();
    }
    #region 确认修改
    public void xuigaixx()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update yonghu set yh_name=@Name,yh_Email=@Email where yh_id='" + this.Label1.Text.ToString() + "'";
            cmd.Parameters.AddWithValue("@Name", this.TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", this.TextBox2.Text.Trim());
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('修改成功！')</script>");

        }
        catch
        {
            Response.Write("<script>alert('修改失败，请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }


    }
    #endregion
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class yhxgmm : System.Web.UI.Page
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
        xuigaimm();
    }
    #region 确认修改
    public void xuigaimm()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from yonghu where yh_id='" + Session["name"].ToString() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
              
                if (this.TextBox1.Text.Trim() == dr["yh_pwd"].ToString().Trim())
                {
                    conn.Close();
                    conn.Open();
                    cmd.CommandText = "update yonghu set yh_Pwd='" + this.TextBox3.Text.Trim() + "' where yh_id='" + Session["name"].ToString() + "'";
                    cmd.Connection = conn;
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('修改成功！')</script>");

                }
                else
                    Response.Write("<script>alert('原密码错误！')</script>");
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('该用户不存在！')</script>");
                dr.Close();
            }

        }
        catch (System.Exception e)
        {
            Response.Write("<script>alert('" + e.Message.ToString() + "')</script>");

        }
        finally
        {
            conn.Close();
        }

    }
    #endregion
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Ad_zhgl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
        }
        else
            Ad();

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        tjAd();
    }
    #region 添加管理员用户
    public void tjAd()
    {
        
                string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = mystr;
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select * from Admin where ad_id='" + this.TextBox1.Text.Trim() + "'";
                    cmd.Connection = conn;
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Response.Write("<script>alert('该用户已存在！')</script>");
                        dr.Close();
                    }
                    else
                    {

                        dr.Close();
                        cmd.CommandText = "insert into Admin values(@User_id,@Pwd)";
                        cmd.Parameters.AddWithValue("@User_id", this.TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@Pwd", this.TextBox3.Text.Trim());
                        cmd.Connection = conn;
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('添加成功！')</script>");
                    }

                }
                catch
                {
                    Response.Write("<script>alert('添加失败，请重试！')</script>");
                }
                finally
                {
                    conn.Close();
                }

    }

    #endregion
}
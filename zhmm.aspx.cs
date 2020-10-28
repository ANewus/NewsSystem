using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class zhmm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from yonghu where yh_id='" + this.TextBox1.Text.Trim() + "'";
            cmd.Connection = conn;
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
              if(this.TextBox2.Text.Trim() == dr["yh_name"].ToString().Trim())
                {
                  if (this.TextBox3.Text.Trim() == dr["yh_Email"].ToString().Trim())
                {
                    conn.Close();
                    conn.Open();
                    cmd.CommandText = "update yonghu set yh_pwd='123456' where yh_id='" + this.TextBox1.Text.Trim() + "'";
                    cmd.Connection = conn;
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('密码已重置为123456，请登陆之后立即修改密码！')</script>");

                }
                else
                  {
                    Response.Write("<script>alert('邮箱不符！')</script>");
                  }
                  dr.Close();
            }
                else
              {
                     Response.Write("<script>alert('姓名不符！')</script>");
              }
                dr.Close();
            }
            else
            {
                Response.Write("<script>alert('用户ID不存在！')</script>");
                dr.Close();
            }

        }
        catch (System.Exception ee)
        {
            Response.Write("<script>alert('" + ee.Message.ToString() + "')</script>");

        }
        finally
        {
            conn.Close();
        }

    }
}
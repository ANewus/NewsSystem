using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;
using System.Data;


public partial class _Login : System.Web.UI.Page
{
 

    protected void Page_Load(object sender, EventArgs e)
    {
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string text = this.TextBox3.Text.ToString();//获得用户输入的验证码
        string chkcode = Request.Cookies["validateCookie"].Values["ChkCode"].ToString();//获得系统生成的验证码
        if (!string.IsNullOrEmpty(text) && !string.IsNullOrEmpty(chkcode))
        {
            if (!chkcode.Equals(chkcode.ToUpper()))//如果系统生成的不为大写则转换成大写形式
                chkcode.ToUpper();
            if (text.ToUpper().Trim().Equals(chkcode.Trim())) //将输入的验证码转换成大写并与系统生成的比较
            {
                string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = mystr;
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand();
                    if (this.RadioButtonList1.SelectedIndex == 0)
                    {
                        cmd.CommandText = "select * from yonghu where yh_id='" + this.TextBox1.Text.Trim() + "'";
                    }
                    else
                    {
                        cmd.CommandText = "select * from Admin where ad_id='" + this.TextBox1.Text.Trim() + "'";

                    }
                    cmd.Connection = conn;
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        if (this.TextBox2.Text.Trim() == dr[1].ToString().Trim())
                        {
                            if (this.RadioButtonList1.SelectedIndex == 0)
                            {
                                Session["name"] = this.TextBox1.Text.Trim();
                                //Session["pwd"] = this.TextBox2.Text.Trim();
                                Response.Redirect("main.aspx?id=" + Session["name"].ToString());
                            }
                            else
                            {
                                Session["name"] = this.TextBox1.Text.Trim();
                                // Session["pwd"] = this.TextBox2.Text.Trim();
                                Response.Redirect("Admin.aspx?id=" + Session["name"].ToString());
                            }

                        }
                        else
                            Response.Write("<script>alert('密码错误！')</script>");
                        dr.Close();
                    }
                    else
                    {
                        Response.Write("<script>alert('该用户不存在！')</script>");
                        dr.Close();
                    }

                }
                catch
                {
                    Response.Write("<script>alert('登陆失败，请重试！')</script>");

                }
                finally
                {
                    conn.Close();
                }



            }
            else
            {
                this.Label1.Text = "验证码错误";
            }
        }
        else if (string.IsNullOrEmpty(text))
        {
            this.Label1.Text = "请输入验证码!!";
        }
    }
}
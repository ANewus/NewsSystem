using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Response.Write("<script>alert('您已注册！');window.location.href='main2.aspx'</script>");
        }
    }
   #region 注册
    public void zhuce()
    {
          string text = this.TextBox5.Text.ToString();//获得用户输入的验证码
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
            cmd.CommandText = "select * from yonghu where yh_id='" + this.TextBox1.Text.Trim() + "'";
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
                cmd.CommandText = "insert into yonghu values(@User_id,@Pwd,@Name,@Email)";
                cmd.Parameters.AddWithValue("@User_id", this.TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Pwd", this.TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Name", this.TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", this.TextBox4.Text.Trim());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                RegisterStartupScript("提示", "<script>alert('恭喜您！注册成功');window.location.href='Login.aspx'</script>");
            }

        }
        catch
        {
            Response.Write("<script>alert('注册失败，请重试！')</script>");
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
        
    #endregion
    protected void Button1_Click(object sender, EventArgs e)
    {
        zhuce();
    }
}
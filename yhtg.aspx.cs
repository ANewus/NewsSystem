using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
public partial class yhtg : System.Web.UI.Page
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
        tg();
    }


    #region 投稿
    public void tg()
    {
        string mystr = System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ToString();
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = mystr;
        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();


            string FullName = FileUpload1.PostedFile.FileName;//获取图片物理地址
            FileInfo fi = new FileInfo(FullName);
            string name = fi.Name;//获取图片名称
            string type = fi.Extension;//获取图片类型


            if (type == ".jpg" || type == ".gif" || type == ".bmp" || type == ".png")
            {



                string SavePath = Server.MapPath("~\\img");//图片保存到文件夹下
                this.FileUpload1.PostedFile.SaveAs(SavePath + "\\" + name);//保存路径
                cmd.CommandText = "insert into tougao values(@YHID,@TGBT,@TGNR,@TGIMG,@TGTIME)";
                cmd.Parameters.AddWithValue("@YHID", Session["name"].ToString());
                cmd.Parameters.AddWithValue("@TGBT", this.TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@TGNR", this.TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@TGIMG", "~\\img\\" + name + "");
                cmd.Parameters.AddWithValue("@TGTIME", DateTime.Now.ToLocalTime().ToString());
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('投稿成功！')</script>");
                this.TextBox1.Text = "";
                this.TextBox2.Text = "";

            }
            else
            {
                Response.Write("<script>alert('请选择正确的格式图片！')</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('投稿失败,请重试！')</script>");
        }
        finally
        {
            conn.Close();
        }
    }
    #endregion
}
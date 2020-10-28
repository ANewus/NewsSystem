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

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string h = "SELECT top 7 * FROM [gonggao]";
        
        this.SqlDataSource1.SelectCommand = h;

        string h2 = "SELECT  top 4 [yh_id], [lytime], [lynr] FROM [liuyan] ORDER BY [lytime] DESC";
        
        this.SqlDataSource2.SelectCommand = h2;

        DataListBind();
        if (Session["name"] == null)
        {
            this.MultiView1.ActiveViewIndex = 0;

        }
        else
        {
            this.MultiView1.ActiveViewIndex = 1;
            this.HyperLink1.Text = Session["name"].ToString();
        }

    }
    public string CutStr(string s)
    {
        if (s.Length > 20)
        {
            s = s.Substring(0, 20) + "...";
        }
        return s;
    }
    public string CutStr2(string s)
    {
        if (s.Length > 9)
        {
            s = s.Substring(0, 9) + "...";
        }
        return s;
    }
   
    private void DataListBind()
    {
        int current_page = Convert.ToInt32(lblCurrent.Text);
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ConnectionString);
        SqlDataAdapter oda = new SqlDataAdapter("select * from news order by time DESC", con);
        DataSet ds = new DataSet();
        oda.Fill(ds);

        PagedDataSource ps = new PagedDataSource();
        ps.DataSource = ds.Tables[0].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 6;
        lblTotal.Text = ps.PageCount.ToString();
        ps.CurrentPageIndex = current_page - 1;
        lbtnFirst.Enabled = true;
        lbntUp.Enabled = true;
        lbtnDown.Enabled = true;
        lbtnLast.Enabled = true;
        if (current_page == 1)
        {
            lbtnFirst.Enabled = false;
            lbntUp.Enabled = false;
        }
        if (current_page == Convert.ToInt32(lblTotal.Text))
        {
            lbtnLast.Enabled = false;
            lbtnDown.Enabled = false;
        }
        DataList1.DataSource = ps;
        DataList1.DataBind();
    }
    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = "1";
        DataListBind();
    }
    protected void lbtnDown_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) + 1).ToString();
        DataListBind();
    }
    protected void lbntUp_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) - 1).ToString();
        DataListBind();
    }
    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        lblCurrent.Text = lblTotal.Text;
        DataListBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["search"] = this.TextBox1.Text.Trim();
        Response.Redirect("search.aspx?search=" + Session["search"].ToString());
    }
}
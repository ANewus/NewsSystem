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
using System.Data.SqlClient;
public partial class liuyan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataListBind();
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["hulu"].ConnectionString);
            con.Open();
            string cmdtext = "select * from liuyan order by lytime desc";
            SqlDataAdapter sda = new SqlDataAdapter(cmdtext, con);
            DataSet ds = new DataSet();
            sda.Fill(ds, "liuyan");
            this.DataList1.DataSource = ds.Tables["liuyan"].DefaultView;
            this.DataList1.DataBind();
            con.Close();

        }
    }
    private void DataListBind()
    {
        int current_page = Convert.ToInt32(lblCurrent.Text);
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["hulu"].ConnectionString);
        SqlDataAdapter oda = new SqlDataAdapter("select * from liuyan", con);
        DataSet ds = new DataSet();
       oda.Fill(ds);

        PagedDataSource ps = new PagedDataSource();
        ps.DataSource = ds.Tables[0].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 4;
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
}
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


public partial class delnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //建立数据连接
            string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
            SqlConnection conn = new SqlConnection(strConn);
            //创建OleDbDataAdapter对象，按照指定的查询语句获取结果
            SqlDataAdapter odr = new SqlDataAdapter("select * from types ",conn);
            DataSet ds = new DataSet();
            odr.Fill(ds, "types");
            this.ddlType.DataSource = ds.Tables["types"].DefaultView;
            this.ddlType.DataTextField = "typename";
            this.ddlType.DataValueField = "id";
            this.DataBind();

            this.GridView1.DataSource = myBind();
            this.GridView1.DataBind();

        }
    }
    //数据绑定
    public DataView myBind()
    {
        //建立数据连接
        string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        SqlDataAdapter odr = new SqlDataAdapter("select * from news where typeid=" + ddlType.SelectedValue + " order by shijian desc", conn);
        DataSet ds = new DataSet();
        odr.Fill(ds, "news");
        return ds.Tables["news"].DefaultView;



    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //获取当前显示页索引
        GridView1.PageIndex = e.NewPageIndex;

        //重新绑定　
        this.GridView1.DataSource = myBind();
        this.GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        conn.Open();

        //使用 Value 属性确定记录的主键值。
        //设置
        String id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        String sql = "delete from news where id =" + id;
        //Response.Write("<script>alert('dddd')</script>");
        SqlCommand delcmd = new SqlCommand(sql, conn);
        try
        {
            delcmd.ExecuteNonQuery();
            Response.Write("<script>alert('del sucess!')</script>");
        }
        catch (SqlException ex)
        {

        }
        conn.Close();
        //重新绑定
        this.GridView1.DataSource = myBind();
        this.GridView1.DataBind();



    }
    //按新闻类别确定按钮事件
    protected void btnConfrim_Click(object sender, EventArgs e)
    {
        this.GridView1.DataSource = myBind();
        this.GridView1.DataBind();
    }
    //查找按钮事件
    protected void btnZhao_Click(object sender, EventArgs e)
    {
        if (txtSou_suo.Text == "")
        {
            lblMsg.Text = "请输入搜索的内容！";
            this.GridView1.DataSource = myBind();
            this.GridView1.DataBind();
            return;
        }
        else
        {
            lblMsg.Visible = false;
            string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
            SqlConnection conn = new SqlConnection(strConn); ;
            SqlDataAdapter odr = new SqlDataAdapter("select * from news where " + ddlContents.SelectedValue + " like '%" + txtSou_suo.Text.ToString() + "%'", conn);

            DataSet ds = new DataSet();
            try
            {
                odr.Fill(ds, "tt");
                if (ds.Tables["tt"].Rows.Count != 0)
                {
                    this.GridView1.DataSource = ds.Tables["tt"].DefaultView;
                    this.GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('no record!')</script>");


                }
            }
            catch (Exception ex)
            {

            }
        }

    }
}

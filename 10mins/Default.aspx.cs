using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //确认网页不是回滚
        if (!IsPostBack)
        {

            //建立数据连接
            string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
            SqlConnection conn = new SqlConnection(strConn);

            SqlDataAdapter command = new SqlDataAdapter("select id ,typename from types", conn);
            


            //创建OleDbDataAdapter对象，按照指定的查询语句获取结果

            SqlDataAdapter command1 = new SqlDataAdapter("select top 12 news.* from news  order by shijian desc", conn);
            SqlDataAdapter command2 = new SqlDataAdapter("select top 12 news.* from news  order by shijian desc", conn);
            SqlDataAdapter command3 = new SqlDataAdapter("select top 12 news.* from news  order by shijian desc", conn);



           
            //定义DataSet对象，将查询结果填充到这个对象上
            DataSet ds = new DataSet();

            command1.Fill(ds, "news");
            command2.Fill(ds, "types");
            command3.Fill(ds, "types");
            //将DataSet对象绑定到GridView上
            this.GridView1.DataSource = ds.Tables["news"].DefaultView;
            this.GridView2.DataSource = ds.Tables["types"].DefaultView;
            this.GridView3.DataSource = ds.Tables["types"].DefaultView;


            this.GridView1.DataBind();
            this.GridView2.DataBind();
            this.GridView3.DataBind();



        }
    }
}

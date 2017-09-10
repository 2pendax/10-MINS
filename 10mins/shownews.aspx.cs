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
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class shownews : System.Web.UI.Page
{
    public DataRow dr;
    public string newsid;
    protected void Page_Load(object sender, EventArgs e)
    {
        newsid = Request.Params["id"];

        string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        SqlDataAdapter command = new SqlDataAdapter("select * from news where id=" + newsid, conn);



        //string strConnnection = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
        //strConnnection += Server.MapPath(".\\App_Data\\news.mdb");
        //OleDbConnection myconn = new OleDbConnection(strConnnection);

        //OleDbDataAdapter mycmd = new OleDbDataAdapter("select * from contents where id=" + newsid, myconn);
        DataSet ds = new DataSet();
        command.Fill(ds, "news");
        dr = ds.Tables["news"].Rows[0];

        //获取制定编号新闻的访问次数
       // OleDbCommand mycmd2 = new OleDbCommand("select  click from contents where id=" + newsid, myconn);

        SqlCommand command2 = new SqlCommand("select  click from news where id=" + newsid, conn);

        command2.Connection.Open();
        SqlDataReader reader = command2.ExecuteReader();
        //将访问次数转换成整数，然后加1
        int i = Convert.ToInt32(dr["click"]);
        i++;
        reader.Close();
        //重新定义语句，更新访问次数
        command2.CommandText = "update  news set click='" + i.ToString() + "'where id =" + newsid;
        command2.ExecuteNonQuery();
        command2.Connection.Close();
        conn.Close();

    }
}

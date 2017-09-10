using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.IO;
using System.Text;



public partial class addnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            


        string strConn ="Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
     
        SqlDataAdapter command = new SqlDataAdapter("select id ,typename from types", conn);
        conn.Open();

            DataSet ds = new DataSet();
            command.Fill(ds, "types");
            this.DropDownList1.DataSource = ds.Tables["types"].DefaultView;

            //绑定DropDownList
            DropDownList1.DataTextField = "typename";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
        }
    }
    protected void btnFabiao_Click(object sender, EventArgs e)
    {





        //创建上传文件的路径字符串
        String savePath = Server.MapPath("file/");


        //检查新闻标题、内容和作者是否为空
        if ((txtBiaoti.Text == "") || (txtNeirong.InnerText != ""))
        {

            lblMsg.Text = "标题、内容、作者等不能为空！";
        }//检查新闻标题长度
        else if (txtBiaoti.Text.Length >= 50)
        {
            lblMsg.Text = "你的标题太长了";
        }//检查上传文件大小
      
      

        //建立数据连接


        string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);


        string sql = "insert into news(biaoti,neirong,shijian,click,typeid)values";
        sql += "('" + txtBiaoti.Text + "','" + txtNeirong.InnerText + "','" + DateTime.Now.ToString() + "',0,'" + DropDownList1.SelectedItem.Value + "')";
         SqlCommand command= new SqlCommand(sql, conn);


         command.Connection.Open();
         command.ExecuteNonQuery();
         command.Connection.Close();
         Response.Redirect("default.aspx");


    }
    protected void btnQuxiao_Click(object sender, EventArgs e)
    {

        txtNeirong.InnerText = "";
        txtBiaoti.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}








































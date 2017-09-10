using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;

public partial class logo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
   {
   string strName = TextBox1.Text;
        string strPwd = TextBox2.Text;
        string strConn ="Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        string strSelect = "SELECT * FROM admin WHERE username =@username and password =@password";
        SqlCommand command = new SqlCommand(strSelect,conn);
        command.Parameters.AddWithValue("@username",strName);
        command.Parameters.AddWithValue("@password",strPwd);
        conn.Open();
        SqlDataReader dr = command.ExecuteReader();
        if (dr.Read())
        {
            Session["userName"] = strName;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Session["userName"] = "";
            this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录失败，无此用户名或密码不正确！');</script>");
        }
        conn.Close();       
    }

    }


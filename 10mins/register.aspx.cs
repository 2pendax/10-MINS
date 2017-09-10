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

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strCheckUser = "SELECT * FROM admin  WHERE username =@name";
        string strInsertUser = "INSERT INTO admin (username, password, email, logintime) VALUES (@name,@password,@email,'" + DateTime.Now + "')";
        string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|news.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        SqlCommand command = new SqlCommand(strCheckUser,conn);
        command.Parameters.AddWithValue("@name",TextBox1.Text.Trim());
        command.Parameters.AddWithValue("@password",TextBox3.Text.Trim());
        command.Parameters.AddWithValue("@email", TextBox2.Text.Trim());
        conn.Open();
        SqlDataReader dr = command.ExecuteReader();
        if (dr.Read())
        {   conn.Close();
            this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册失败,已有该用户名！');</script>");
        }
        else
        {   dr.Close();
            command.CommandText=strInsertUser;
            command.ExecuteNonQuery();
            conn.Close();
            Session["userName"] = TextBox1.Text.Trim();            
            Server.Transfer("login.aspx");
        }
    }
}

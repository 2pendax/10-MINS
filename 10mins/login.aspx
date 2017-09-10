<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs"   EnableEventValidation="false"   Inherits="logo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" href="css/semantic.css" media="screen" title="no title" charset="utf-8">
     

          <style type="text/css">
        body {
            background: url(images/super_blur_back2.jpg);
            background-size: cover;
        }

        .ui.grid.divided.segment.container{
            height: 400px;
            width:600px !important;
            border:rgba(255, 0, 0, 0);
            position: absolute;
            left: 50%;
            top:40%;
            transform: translate(-50%,-50%);
        }

        .five.wide.column {
            background: url(images/red_regi.jpg);
            background-size: cover;
            background-position: 60% 0%;
        }

        form {
            margin-top: 60px;
        }
        h1,h3,h4{
            font-family: 'Play', sans-serif !important;

        }
        .box{padding-top:80px;}
        .inputinfo
        {
        	padding-left:25px;}
       
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="ui grid divided segment container">
            <div class="five wide  column">

                <h4 class="ui inverted header">

                    <a href="index.aspx"><i class="angle left  icon"></i></a>
                </h4>

                <h1 class="ui inverted center aligned header" style="font-size: 40px;margin-top:55px">
                    <p class="sub header">
                        Welcome to
                    </p>
                    10MINs
                </h1>



            </div>

            <div class="eleven wide column">
                <h4 class="ui inverted right aligned header">
                    <a href="register.aspx" style="color:#ff695e;">or Register</a>
                </h4>

           
                <div class="box">
                 <div class="inputinfo">
                    <div class="field">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="username" style ="width:350px;height:42px; "></asp:TextBox>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="用户名称不能为空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </div>
                  <div class="field">
                      <asp:TextBox ID="TextBox2" runat="server" placeholder="password" 
                          style ="width:350px;height:42px; " ontextchanged="TextBox2_TextChanged" 
                          TextMode="Password"></asp:TextBox>
                  </div>
                  <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="用户密码不能为空" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </div>
                 </div>
                 <div class="loginbutton">
                     <asp:Button ID="Button1" runat="server" Text="Login" 
                         CssClass="ui inverted red circular right floated button" 
                         onclick="Button1_Click" />
                 </div>
                    
                   
               </div>
             
            </div>
        </div>
    </form>
</body>
</html>

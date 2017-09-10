﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs"  EnableEventValidation="false"    Inherits="register" %>

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
            padding-top:80px;
        }
        h1,h3,h4{
            font-family: 'Play', sans-serif !important;

        }
        .field
        {
        	margin-top:15px;}
        	.box
        	{
        	 padding-top:20px;
        		
        		}
        		.regbutton
        		{
        			margin-top:18px;
        			
        			}
        			.fileinput
        			{
        				margin-left:20px;
        				
        				}
       
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="ui grid divided segment container">
            <div class="five wide  column">

                <h4 class="ui inverted header">

                   <a href="login.aspx"> <i class="angle left  icon"></i></a>
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
                    <a href="login.aspx" style="color:#ff695e;">or LOGIN</a>
                </h4>

              
                <div class="box">
                   <div class="fileinput">
                    <div class="field first">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="username" style="width:353px;height:37px;"></asp:TextBox>
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="要求3到16个数字、字母、_、-" 
                            ValidationExpression="[a-zA-Z0-9_-]{3,16}"></asp:RegularExpressionValidator>
                    </div>
                  <div class="field">
                      <asp:TextBox ID="TextBox2" runat="server" placeholder="yourname@email" style="width:353px;height:37px;"></asp:TextBox>
                  </div>
                  <div>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                       

                  </div>
                  <div class="field">
                      <asp:TextBox ID="TextBox3" runat="server" placeholder="passward" style="width:353px;height:37px;" TextMode="Password"></asp:TextBox>
                  </div>
                  <div>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="要求3到10个字母、数字" 
                            ValidationExpression="[0-9a-zA-Z]{3,10}"></asp:RegularExpressionValidator>

                  </div>

                  <div class="field">
                      <asp:TextBox ID="TextBox4" runat="server" placeholder=" confirm your passward" style="width:353px;height:37px;" TextMode="Password"></asp:TextBox>
                  </div>
                  <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="要求3到10个字母、数字" 
                            ValidationExpression="[0-9a-zA-Z]{3,10}"></asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                            Display="Dynamic" ErrorMessage="两次输入的密码不同"></asp:CompareValidator>

                  </div>
                  </div>
                  <div class="regbutton">
                <asp:Button ID="Button1" runat="server" Text="Register" 
                          CssClass="ui inverted red circular right floated button" 
                          onclick="Button1_Click" />
                 </div>
                 </div>
             
            </div>
        </div>
    </form>
</body>
</html>

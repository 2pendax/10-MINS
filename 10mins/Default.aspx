<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" EnableEventValidation="false"  debug="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>首页自动发布</title>
      <link rel="stylesheet" href="css/semantic.css" media="screen" title="no title" charset="utf-8">
        <link rel="stylesheet" href="css/myinfo.css" media="screen" title="no title">
        <link href="https://fonts.googleapis.com/css?family=Oswald|Raleway" rel="stylesheet">
        <style>
            #form1{margin-top:100px;}
        </style>
</head>
<body>

<div class="ui inverted top fixed menu borderless blue menu">
            <div class="header item">
                <div class="ui image">
                    <img src="images/tenlogo.png" alt="">
                </div>
            </div>

            <div class="right menu">
                <div class="item">
                    <h5 class="ui inverted header">
                            <div class="ui mini circular image">
                                <img src="images/hou30.jpg" alt="">
                            </div>

                            <span>admin</span>

                        </h5>
                </div>
                
                  <div class="item">

                                    <div class="ui buttons">
  <a href="addnews.aspx"><button class="ui positive button">add new</button></a>
  <div class="or"></div>
  <a href="delnews.aspx"><button class="ui  button">manage</button></a>
  </div>

                </div>
             
              
            </div>
        </div>
        <div class="ui inverted vertical  segment">
            <div class="ui image">
                <img src="images/banner.jpg" alt="" />
            </div>
        </div>
        
        
   <form id="form1" runat="server"> 
   
    <div class="ui  vertical  segment">
            <div class="ui container segment">
                <div class="ui blue right ribbon label">
                    life
                </div>
                  
                  
                  <table width="450" align="center">
            <tr>
                <td width="608">
                    <div align="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" 
                            CellSpacing="1" EnableViewState="False"  GridLines="None"
                            >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%--此去编写绑定的代码--%>
                                        <h1 class="ui header"><asp:HyperLink ID="HyperLink1" Text='<%# Eval("biaoti") %>' NavigateUrl='<%# "shownews.aspx?id="+Eval("id") %>'
                                            runat="server" /></h1>
                                        <%# Eval("shijian") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </td>
            </tr>
            </table>
                
            </div>
            
            
            
              <div class="ui container segment">
                <div class="ui red right ribbon label">
                    tech
                </div>
                     <table width="450" align="center">
            <tr>
                <td width="608">
                    <div align="center">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="2"
                            CellSpacing="1" EnableViewState="False" GridLines="None"
                           >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%--此去编写绑定的代码--%>
                                         <h1 class="ui header"><asp:HyperLink ID="HyperLink1" Text='<%# Eval("biaoti") %>' NavigateUrl='<%# "shownews.aspx?id="+Eval("id") %>'
                                            runat="server" /></h1>
                                        <%# Eval("shijian") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </td>
            </tr>
          
            </table>
               
            </div>
      
      
          <div class="ui container segment">
                <div class="ui teal right ribbon label">
                    news
                </div>
               <table width="450" align="center">
            <tr>
                <td width="608">
                    <div align="center">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="2"
                            CellSpacing="1" EnableViewState="False" GridLines="None"
                           >
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <%--此去编写绑定的代码--%>
                                         <h1 class="ui header"><asp:HyperLink ID="HyperLink1" Text='<%# Eval("biaoti") %>' NavigateUrl='<%# "shownews.aspx?id="+Eval("id") %>'
                                            runat="server" /></h1>
                                        <%# Eval("shijian") %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </td>
            </tr>
          
            </table>
            </div>
        </div>
        
        
          <div class="ui inverted  vertical very padded  segment">
         XPcoding®
        </div>
            
     
    </form>

</body>
</html>

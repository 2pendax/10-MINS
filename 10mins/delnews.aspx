<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delnews.aspx.cs" Inherits="delnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

    <title>网站管理</title>
    <link rel="stylesheet" href="css/semantic.css" media="screen" title="no title" charset="utf-8" />
    <style>
    
    #container{
     margin-top:200px;
    
    
    
    }
    .xianshi
    {
      width:630px;
      margin-top:60px;
      margin-bottom:60px;
      margin-left:35%;
    	
    	}
    
    </style>
   
    
</head>
<body >
    <form id="form1" runat="server">
    
<div class="ui inverted top fixed menu borderless blue menu">
            <div class="header item">
                <div class="ui image">
                    <a href="Default.aspx"><img src="images/tenlogo.png" alt=""></a>
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
                
                  
             
              
            </div>
        </div>
        <div id="container" class="ui piled segment">
         <div align="center" style="text-align: center">
                    新闻搜索：<asp:TextBox ID="txtSou_suo" runat="server"></asp:TextBox>&nbsp;<asp:DropDownList
                        ID="ddlContents" runat="server">
                    
                    <asp:ListItem Value="biaoti">按主题查找</asp:ListItem>
                    <asp:ListItem Value="neirong">按内容查找</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnZhao" runat="server" Text="查 找" Height="19px" Width="70px" OnClick="btnZhao_Click" /></div>
            
          
                    <div align="center" style="text-align: center">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>&nbsp;</div>
          </div>
       
                <div align="center" style="text-align: center">请选择类型：<asp:DropDownList ID="ddlType" runat="server">
                    </asp:DropDownList>
                    <asp:Button ID="btnConfrim" runat="server" Text="确 定" OnClick="btnConfrim_Click" /></div>
            
                <div class="xianshi">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="2" CellSpacing="1" EnableViewState="False" Font-Names="宋体" GridLines="None" Width="500px" DataKeyNames="ID" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" PageSize="2">
                    <Columns>
                    <asp:BoundField DataField="shijian" HeaderText="时间" >
                        <ItemStyle Width="150px" />
                    </asp:BoundField>
                        <asp:TemplateField HeaderText="标题">
                            <ItemTemplate>
                                
                                 <asp:HyperLink ID="HyperLink1" Text='<%# Eval("biaoti") %>' NavigateUrl='<%# "xiu.aspx?id="+Eval("id") %>'
                                            runat="server"  />
                                            
                            </ItemTemplate>
                            <ItemStyle Width="400px" />
                  
                        </asp:TemplateField>
                        
                    <asp:CommandField ShowDeleteButton="True" >
                        <ItemStyle Width="100px" />
                    </asp:CommandField>
                    </Columns>
                        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
                        <PagerStyle HorizontalAlign="Center" />
                    </asp:GridView>
                   
                
                </div>
            </div>  
            
               
   
    </form>
</body>
</html>

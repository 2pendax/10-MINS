<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addnews.aspx.cs" Inherits="addnews" validateRequest=false %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>新闻编辑</title>
    <link rel="stylesheet" href="css/semantic.css" media="screen" title="no title" charset="utf-8">
      <link rel="stylesheet" href="css/style2.css" />
        <link rel="stylesheet" href="css/editormd.css" />
     
    <style>
    .container
    {
    	margin-top:80px;
    	
    	}
    
    </style>
  
</head>
<body style="text-align:center">
<div class="ui  inverted top fixed menu borderless blue menu">
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
                
                  <div class="item">

                                    <div class="ui buttons">
  <a href="Default.aspx"><button class="ui positive button">return</button></a>
  <div class="or"></div>
    <a href="delnews.aspx"><button class="ui  button">manage</button></a>
  </div>

                </div>
             
              
            </div>
        </div>
    <form id="form1" runat="server">
    <div class="container">
                   
                   <div class='title'>
      
                    标题：
           
                    <asp:TextBox ID="txtBiaoti" runat="server"></asp:TextBox></td>
               
                     </div>
            
           
                    <div class='type'>
                    类别：
         
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="152px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                       </div>
                       
                       
                   
            <div id="layout">
        
            
            
            <div id="test-editormd" class="editormd">
                <textarea   class="editormd-markdown-textarea" name="test-editormd-markdown-doc"  >
               </textarea>
               
               <textarea class="editormd-html-textarea" name="txtNeirong"  ID="txtNeirong" runat="server">
               </textarea>
            </div>
        </div>
        
        
                    
                    
                    
                    
         
                    &nbsp;<asp:Button ID="btnFabiao" runat="server" Text="发 表" OnClick="btnFabiao_Click" />
                    <asp:Button ID="btnQuxiao" runat="server" Text="取 消" OnClick="btnQuxiao_Click" />
        
    </div>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    </form>
    
 
        <script src="js/jquery.min.js"></script>
        <script src="js/editormd.min.js"></script>
        <script type="text/javascript">
$(function() {
    editormd("test-editormd", {
        width   : "90%",
        height  : 640,
        syncScrolling : "single",
        path    : "lib/", 
        saveHTMLToTextarea : true
    });
});
</script>
</body>
</html>

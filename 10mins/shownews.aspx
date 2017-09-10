<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="shownews" debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>显示</title>
    <link rel="stylesheet" href="css/editormd.preview.min.css" />
     <link rel="stylesheet" href="css/editormd.css" />
     <link rel="stylesheet" href="css/semantic.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="css/detail.css" media="screen" title="no title" charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Oswald|Raleway" rel="stylesheet">
    <link href="css/style3.css" rel="stylesheet">
    

     
    <style>
    h1 {
        font-family:'Oswald', sans-serif;font-size:40px!important;
    }
    p {
        font-family: 'Raleway', sans-serif;
        font-size:18px;
    }
    .ui.vertical.inverted.detail.segment {
        height: 500px;
        background-image: url('images/detail.jpg');
        background-size: cover;
        background-repeat: no-repeat;
    }
    .ui.basic.segment.container {
        margin-top: 30px;
        width: 700px;
    }
    .ui.basic.segment.container > p {
        margin-top: 30px;
        font-size: 20px;
    }
    form {
        margin-bottom: 200px;
    }
    
    </style>
 
</head>
<body>

  
    <form id="form1" runat="server">
        <div>
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
      
      
      
      
      
      <div class="ui vertical inverted detail segment"></div>
  <div class="ui basic segment container">
      <h1 class="ui header">  <%=dr["biaoti"].ToString() %></h1>
      <i class="icon grey unhide"></i>
      <span style="color:#bbbbbb"><%=dr["click"] %></span>
      <span class="" style="color:rgb(226, 226, 226)">|</span>
      <i class="icon grey checkmark"></i>
      <span style="color:#bbbbbb"><%=dr["click"] %> people got it</span>
                  
                                
                                    <div align="right" class="time">
                                    <%=dr["shijian"].ToString() %>
                                    </div>
                          
                               
                            <div id='content'>
                                <%--绑定内容--%>
                                    <%=dr["neirong"].ToString()%>
                                    
                            </div>
                                   
        <div class="ui divider"></div>
    
          <button class="ui  tiny button" type="submit" name="vote" value="like">
              <i class="icon checkmark"></i>
              Get it!
          </button>
          <button class="ui red tiny button" type="submit" name="vote" value="normal">
              <i class="icon bomb"></i>
              Hmmm...
          </button>
          <button class="ui secondary circular tiny right floated pin icon button">
        <i class="pin icon"></i>
                 
           Saved
              </button>
    
        <div class="wrapper">
        <div class="name-input">
        	<span class="name">name:</span>
        	<input type="text" id="name" value="" />
            <span class="tips" id='name-tips'>*invalid</span>
        </div>
        <div class="msg-input">
        	<span class="msg">message:</span>
        	<textarea id="msg"></textarea>
            <span class="tips" id='msg-tips'>*invalid</span>
        </div>
        <input type="submit" value="submit" id="submit" class="ui primary button">
        <h1 class="title">message board</h1>
        <ol id="msg-board"></ol>
    </div>
                                        
          </div>                         
      </div>
     
    </form>
    
</body>
 

<script type="text/javascript" src="js/script.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/marked.min.js"></script>
<script src="js/prettify.min.js"></script>
<script src="js/editormd.min.js"></script>
<script type="text/javascript">
editormd.markdownToHTML("content");
</script>
</body>
</html>

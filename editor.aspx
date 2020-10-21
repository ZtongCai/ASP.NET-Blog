<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editor.aspx.cs" Inherits="editor" ValidateRequest="false" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
           <!--不加导航条会变小-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>编辑器</title>
    <link href="css/icon.css" type="text/css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
     <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
     <script src="ckeditorfull/ckeditor.js"></script>
 <style>
        /*选择id用#开头,选择class用.开头*/
        #main,#footer,#header{ 
          padding-left: 300px;
        }
        @media only screen and (max-width : 992px) {
          #header, #main, #footer{
            padding-left: 0;
          }
        }
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
          }
       
    
        .card.horizontal .card-stacked .card-content {
            flex-grow: 1;
            
        }
        /*手机格式下*/
        @media only screen and (min-width: 100px) and (max-width: 640px) {
        .card.horizontal {
            width:auto;
            height:200px;
        }
        .card.horizontal.card-image {
            width:30%;
        }
        }
        /*平板格式下*/
        @media only screen and (min-width: 767px) and (max-width: 1024px) {
        .card.horizontal {
            width:auto;
            height:200px;
        }
        .card.horizontal.card-image {
            width:30%;
        }
        }
        /*电脑格式下*/
        @media only screen and (min-width: 1025px)  {
        .card.horizontal {
            width:auto;
            height:200px;
        }
        .card.horizontal.card-image {
            width:25%;
        }
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
         <nav>
    <div class="nav-wrapper blue accent-2">
      <a href="index.aspx" class="brand-logo center">🐻的编辑器</a>
      <ul class="right">
      <li><a href="index.aspx"><i class="material-icons">home</i></a></li>
      </ul>
    </div>
  </nav>
        <div>
        </div>
            <div>
        
    </div>
        
        <br />
        <div class="container">
            <div class="row">
                  <div class="input-field col s11">
                      <h5>标题</h5>
                      <input name="title" id="title" class="validate"/>
                      
                    </div>
            </div>
            <div class="row">
                  <div class="input-field col s11">
                     <h5>简介</h5>
                      <input name="brief" id="brief" class="validate"/>
                      
                    </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m12 l6">
                <h5>类别</h5>
            <select class="browser-default" name="classid">
            <option value="" disabled selected>Choose your option</option>
            <option value="7">About this Blog</option>
            <option value="11">Gesture Recognition</option>
            <option value="12">Visualization</option>
            <option value="13">Face recognition</option>
            <option value="14">Book Translation</option>
		<option value="1003">Game design related</option>
          </select>
          </div>  </div>

            
            <div class="row">
                <div class="input-field col s11">
             <h5>图片</h5>
                    <asp:FileUpload  ID="FileUpload1" runat="server" />
                </div>
                </div>
            <div class="row" >

              

                <br />
                <textarea id="Contents"  runat="server" name="Contents" style="width:99%;height:50%;"></textarea>
                <asp:Button ID="Button1" class="btn-large waves-effect waves-light blue" OnClientClick="javascript:return confirm('确认发布？')" runat="server" Text="发布文章" OnClick="Button1_Click" />
                <br />
                
               
             </div>
           </div>
        <script type="text/javascript">
            var editor = CKEDITOR.replace('Contents' );
        </script>
    </form>
</body>
</html>

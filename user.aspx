<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
     <meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>个人中心</title>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <link href="css/icon.css" type="text/css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <style>
        /*选择id用#开头,选择class用.开头*/
        #main,#footer,#header{ 
          padding-left: 300px;
        }
        @media only screen and (max-width : 992px) {
            
            .rightdownbtn {
                position: fixed;
                right: 23px;
                bottom: 23px;
                padding-top: 15px;
                margin-bottom: 0;
                z-index: 998;
            }
          #header, #main, #footer{
            padding-left: 0;
          }
        }
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
          }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <nav>
            <div class="nav-wrapper blue accent-2">
              <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
              <a href="index.aspx" class="brand-logo center">欢迎🐻的到来</a>
              <ul class="right">
              
              <li><a href="index.aspx"><i class="material-icons">home</i></a></li>
              </ul>
            </div>
          </nav>
        </div>

<div id="main" style="display: flex; min-height: 66vh; flex-direction: column;">
        <div class="wrapper">
            <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed">
                     <li><div class="userView">
                      <div class="background">
                        <!--<img src="images/sea-2755908_1920.jpg"/>-->
                      </div>
                      <a href="#!user"><img class="circle" src="images/timg.jpg"/></a>
                      <a href="#!name"><span class="black-text name">管理员</span></a>
                      <a href="#!email"><span class="black-text email">您好,感谢您的维护</span></a>
                    </div></li>
                    <li><div class="divider"></div></li>
                       <li><a class="subheader">目录</a></li>
                  <li><a class="waves-effect" href="#!">文章管理</a></li>
                  <li><a class="waves-effect disabled" href="#!">个人管理(待添加)</a></li>
                  <li><a class="waves-effect disabled" href="#!">访问情况(待添加)</a></li>
                  <li><a class="waves-effect disabled" href="#!">修改关于(待添加)</a></li>
                </ul>
                
            </aside>

            <section id="content">
               <div class="container">
            <div class="row">
                <br /><br />
                  <div class="rightdownbtn">
                    <a class="btn-floating btn-large red" href="editor.aspx">
                      <i class="large material-icons">mode_edit</i>
                    </a>
                      </div>
                <br />
                <asp:GridView class="striped" ID="GridView1" runat="server" PageSize="10" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="essayid" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="essayid" HeaderText="文章编号" InsertVisible="False" ReadOnly="True" SortExpression="essayid" />
                        <asp:BoundField DataField="essaytext" HeaderText="文章名称" SortExpression="essaytext" />
                        <asp:BoundField DataField="essaybrief" HeaderText="文章简介" SortExpression="essaybrief" />
                        <asp:BoundField DataField="essaydate" HeaderText="发布日期" SortExpression="essaydate" />
                    </Columns>
                </asp:GridView>



                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wwcConnectionString %>" DeleteCommand="DELETE FROM [essay] WHERE [essayid] = @essayid" InsertCommand="INSERT INTO [essay] ([essaytext], [essaybrief], [essaydate]) VALUES (@essaytext, @essaybrief, @essaydate)" SelectCommand="SELECT [essayid], [essaytext], [essaybrief], [essaydate] FROM [essay]" UpdateCommand="UPDATE [essay] SET [essaytext] = @essaytext, [essaybrief] = @essaybrief, [essaydate] = @essaydate WHERE [essayid] = @essayid">
                    <DeleteParameters>
                        <asp:Parameter Name="essayid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="essaytext" Type="String" />
                        <asp:Parameter Name="essaybrief" Type="String" />
                        <asp:Parameter Name="essaydate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="essaytext" Type="String" />
                        <asp:Parameter Name="essaybrief" Type="String" />
                        <asp:Parameter Name="essaydate" Type="DateTime" />
                        <asp:Parameter Name="essayid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>



                </div> </div>
            </section>

        </div> </div>
        <div>
        </div>
           



       <div id="footer">
       <footer class="page-footer blue accent-2">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">你到海底两万米啦！</h5>
                <p class="grey-text text-lighten-4">Dalian Maritime University SE CaiZitong</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">关于</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="about.aspx">关于我们</a></li>
                  <li><a class="grey-text text-lighten-3" href="mailto:ztong918@outlook.com">电子邮箱</a></li>
                    <li><a class="grey-text text-lighten-3" href="#!">待添加链接</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">待添加链接</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2019 Copyright 文本
            <a class="grey-text text-lighten-4 right" href="#!">更多链接</a>
            </div>
          </div>
        </footer>
        </div>









        <script>
            $(document).ready(function () {
                $(".button-collapse").sideNav();
            })
              /*  // Show sideNav
              $('.button-collapse').sideNav('show');
              // Hide sideNav
              $('.button-collapse').sideNav('hide');
              // Destroy sideNav
              $('.button-collapse').sideNav('destroy');*/
        </script>
    </form>
</body>
</html>

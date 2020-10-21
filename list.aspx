<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>列表页</title>

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
            width:20%;
        }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

<div id="header">
    <nav>
    <div class="nav-wrapper blue accent-2">
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
      <a href="index.aspx" class="brand-logo center">🐻's Blog</a>
      <ul class="right">
      <!--<li><a href="#"><i class="material-icons">search</i></a></li>-->
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
                         <h5>当前位置:</h5>
                         <h5>列表页</h5>
                     <!-- <a href="#!name"><span class="white-text name"></span></a>
                      <a href="#!email"><span class="black-text email">jdandturk@sina.com</span></a>-->
                    </div></li>
                    <li><div class="divider"></div></li>
                       <li><a class="subheader">目录</a></li>
                        <!--<li><a class="waves-effect" href="#!">第一导航链接</a></li>
                        <li><a class="waves-effect" href="#!">第二导航链接</a></li>-->
                </ul>
                
            </aside>

            <section id="content">
                <br /><br />
                <div class="container">
                    <div class="row" id="cardbegin">
                <!-- 页面内容放在这里 -->
                       <!-- <div class="col s12 m12 l12">
                            <div class="card horizontal" >
                              <div class="card-image" style="width:35%;">
                                <img src="images/type11.png" style="width:100%; height:100%"/>
                              </div>
                              <div class="card-stacked"style="width:50%;">
                                <div class="card-content">
                                <p class="right">日期 2019-04-01</p>
                                  <h5>标题 数据可视化</h5>
                                    
                                    <p>简介 借助于图形化手段，传达与沟通信息.借晰有效地传达与沟通信息</p>
                                </div>
                                <div class="card-action">
                                  <a href="#">查看全文</a>
                                </div>
                              </div>
                            </div>
                        </div>-->
                        <!--<div class="col s12 m12 l12">
                            <div class="card horizontal" >

                              <div class="card-stacked">
                                <div class="card-content">
                                  <p>我是一个很简单的卡片。我很擅长于包含少量的信息。</p>
                                </div>
                                <div class="card-action">
                                  <a href="#">这是一个链接</a>
                                </div>
                              </div>
                                <div class="card-image" style="width:50%">
                                <img src="images/type2.jpeg" style="width:100%; height:100%"/>
                              </div>
                            </div>
                        </div>-->
                    </div>
                </div>

              <!--  <div class="container">
                     <div class="row">
                <ul class="pagination center" >
                    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
                    <li class="active"><a href="#!">1</a></li>
                    <li class="waves-effect"><a href="#!">2</a></li>
                    <li class="waves-effect"><a href="#!">3</a></li>
                    <li class="waves-effect"><a href="#!">4</a></li>
                    <li class="waves-effect"><a href="#!">5</a></li>
                    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
                  </ul>
                      </div>
                         
                    </div>-->
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

            /*var title = "标题222";
            var imageurl = "images/type11.png";
            var brief = "将富豪榜发票安保嘎斯啥ghastly了杀手给isgh电";*/

          
            
         
            var arrs = [];
            function getusers() {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "index.ashx",
                    data: {},
                    dataType: "json",
                    success: function(result){
                        if(result){
                            for(var i = 0 ; i < result.length; i++){
                                    //arrs.push(result[i].name,result[i].num);
                                    arrs.push([
                                        result[i].ID,
                                        result[i].Name,
                                        result[i].Brief,
                                        result[i].Url
                                    ]);
                            }
                        }
                    },
                    error: function(errmsg) {
                        alert("Ajax获取服务器数据出错了！"+ errmsg);
                    }
                });
            return arrs;
            }
            // 执行异步请求
            getusers();
          

            for (var i = 0; i < arrs.length; i++) {
                var txt1 = " <li><a class='waves-effect' href='list.aspx?cid=" +
                    arrs[i][0] + "'>" +
                    arrs[i][1] + "</a></li>";
                $("#slide-out").append(txt1);
            }
         //   var classid = Request["cid"].;
            //var url = location.search;
            
         //   var classid = "12";

            function GetRequest() {
                var url = location.search; //获取url中"?"符后的字串 
                var theRequest = new Object();
                if (url.indexOf("?") != -1) {
                var str = url.substr(1);
                strs = str.split("&");
                for (var i = 0; i < strs.length; i++) {
                theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
                }
                }
                return theRequest;
            }

            var Request = GetRequest();
            var classid = Request["cid"];
            //console.log(classid);
            var lists = [];
            function getlists() {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "list.ashx",
                    data: { ID: classid },
                    dataType: "json",
                    success: function(ii){
                        if(ii){
                            for(var i = 0 ; i < ii.length; i++){
                                    //arrs.push(result[i].name,result[i].num);
                                lists.push([
                                        ii[i].Id,
                                        ii[i].Text,
                                        ii[i].Brief,
                                        ii[i].Url,
                                        ii[i].Date
                                    ]);
                            }
                        }
                    },
                    error: function(errmsg) {
                        alert("Ajax获取服务器数据出错了！"+ errmsg);
                    }
                });
            return lists;
            }
            // 执行异步请求
            getlists();
         console.log(lists);

            for (var i = 0; i < lists.length; i++) {
                var txt2 = "<div class='col s12 m12 l12'><div class='card horizontal'><div class='card-image' style='width:35%;'><img src='" +
                    lists[i][3] + "' style='width:100%; height:100%'/></div><div class='card-stacked' style='width:50%;'><div class='card-content'><h5>" +
                    lists[i][1] + "</h5><p>" +
                    lists[i][2] + "</p></div><div class='card-action'><a href='essay.aspx?eid=" +
                    lists[i][0] + "'>查看全文</a></div></div></div></div>";
                $("#cardbegin").append(txt2);
            }
        </script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--不加导航条会变小-->
<!--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>Zlog</title>
 <!--<embed src="music/melodysheepblackhole.mp3" hidden="true" />-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <link href="css/icon.css" type="text/css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>

    <style>
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
          }	
        .card .card-action {
            position: relative;
            background-color: inherit;
            border-top: 1px solid rgba(160, 160, 160, 0.2);
            padding: 10px;
            padding-bottom:0px;
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
        }
        /*平板格式下*/
        @media only screen and (min-width: 767px) and (max-width: 1024px) {
        .card.horizontal {
            width:auto;
            height:300px;
        }
        }
        /*电脑格式下*/
        @media only screen and (min-width: 1025px)  {
        .card.horizontal {
            width:auto;
            height:400px;
        }
        }
        /*上个项目*/
        .card {
            display: block;
            padding: 4px;    line-height: 1.42857143;
            background-color: #f2f2f2;
            border: 1px solid #ddd;
            border-radius: 5px;
    
            transition: border .2s ease-in-out;
        }
                .collapse.in {
            display: block;
            background-color:#f2f2f2;
        }
                .card .card-content .card-title {
            line-height: 50px;
            font-size:x-large;

        }
                i.right {
            float: right;
            margin-left: 15px;
            margin-top:7px;
        }
             .card .card-image img {
            display: block;
            border-radius: 2px 2px 0 0;
            position: relative;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            width: 100%;
            height:300px;
        }
    
	   .parallax-container {
          min-height: 250px;
          line-height: 0;
          height: auto;
          color: rgba(255,255,255,.9);
        }
          .parallax-container .section {
            width: 100%;
          }

    </style>
</head>
<body> 
    <form id="form1" runat="server">
        
        <!--导航条-->
        <div class="header"> 
        <nav>
                <div class="nav-wrapper blue accent-2">
                  <a href="#!" class="brand-logo center">Zlog</a>
                  <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                  <ul class="right hide-on-med-and-down">
                    <li><a href="index.aspx">文章</a></li>
                    <li><a href="about.aspx">关于</a></li>
                    
                    <li><a href="user.aspx">个人中心</a></li>
                  </ul>
                  <ul class="side-nav" id="mobile-demo">
                    <li><a href="index.aspx">文章</a></li>
                    <li><a href="about.aspx">关于</a></li>
                    
                    <li><a href="user.aspx">个人中心</a></li>
                  </ul>
                    <ul class="right">
                    <!--<li><a href="#"><i class="material-icons">search</i></a></li>-->
                    </ul>
                </div>
              </nav>
       </div>

<div class="container portfolio">

<h5>&nbsp;</h5>

        <h4>Cai,Zitong's Personal Website</h4>
        <h6>Works Display</h6>
        <h6>CV_Download:<a href="pdf/ZitongCai_CV_CN.pdf" download="ZitongCai_CV_CN.pdf">CV_CN</a>, <a href="pdf/ZitongCai_CV_EN.pdf" download="ZitongCai_CV_EN.pdf">CV_EN</a></h6>
        <h6>EFFORTS • PASSION • EXPRESSION</h6>
        
    <h5>&nbsp;</h5>
</div>

<div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container" style="background:#000000">
        <br/><br/>
        <div class="row center">
        </div>
      </div>
    </div>
    <div class="parallax"><img src="image/9112.jpg" alt="Unsplashed background img 2"/></div>
  </div>

<br/>

         <div id="main" style="display: flex; min-height: 66vh; flex-direction: column;">
<!--<div class="container">
    <div class="row">
   页面内容放在这里 
        <div class="col s12 m12 l12">
            <div class="card horizontal" >
              <div class="card-image" style="width:50%;">
                <img src="images/type11.png" style="width:100%; height:100%"/>
              </div>
              <div class="card-stacked"style="width:50%;">
                <div class="card-content">

                  <h5>数据可视化</h5>
                    <p>借助于图形化手段，清晰有效地传达与沟通信息.</p>
                </div>
                <div class="card-action">
                  <a href="#">这是一个链接</a>
                </div>
              </div>
            </div>
        </div>
        <div class="col s12 m12 l12">
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
        </div>
    </div>
</div>-->
        <div class="container">
            <div class="row" id="classcard"> <!--卡片代码-->
        
        <!--第一个卡片开始
        <div class="col s12 m6 l4 ">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator"src="images/background3.jpg" width="100%" height="100%" >
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">CSS<i class="material-icons right"  style="font-size: 30px;">more_vert</i></span>
                   
                    <div class="card-action">
                      <a href="#">Enter</a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">CSS<i class="material-icons right">close</i></span>
                    <br />
                    <p>简介第一行第一行第一行第一行第一行第一行第一行第一行第一行第一行第一行第一行第一行</p>
                </div>
            </div>
        </div>   
        第一个卡片结束，后面两个一样-->

            </div>
        </div>

</div>
   <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container" style="background:#000000">
        <br><br>
        <div class="row center">
        </div>
      </div>
    </div>
    <div class="parallax"><img src="image/912.jpg" alt="Unsplashed background img 2"></div>
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
            © 2020 CaiZitong 备案号:<a href="http://www.beian.miit.gov.cn" class="grey-text text-lighten-4 ">粤ICP备19019488号</a>
            <a class="grey-text text-lighten-4 right" href="#!"></a>
            </div>
          </div>
        </footer>
        </div>
                <script>
        $(document).ready(function(){
      $('.parallax').parallax();
        });
     </script>
       

        <script>
            $(document).ready(function () {
                $(".button-collapse").sideNav();
               // $('.slider').slider({full_width: true});
                $('.carousel.carousel-slider').carousel({full_width: true});
            })
            
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
            
            //var titlearr = ["111", "222", "333",];
            //var classtitle = "标题222";
            //var classimageurl = "images/type11.png";
            //var classbrief = "将富豪榜发票安保嘎斯啥ghastly了杀手给isgh电";

            for (var i = 0; i < arrs.length; i++) {
                var txt1 = "<div class='col s12 m6 l4'><div class='card'><div class='card-image waves-effect waves-block waves-light'><img class='activator' src='" +
                    arrs[i][3] + "' width='100%' height='100%' ></div><div class='card-content'><span class='card-title activator grey-text text-darken-4'>" +
                    arrs[i][1] + "<i class='material-icons right'  style='font-size: 30px;'>more_vert</i></span><div class='card-action'><a href='list.aspx?cid=" +
                    arrs[i][0] + "'>Enter</a></div></div><div class='card-reveal'><span class='card-title grey-text text-darken-4'>" +
                    arrs[i][1] + "<i class='material-icons right'>close</i></span><br /><p>" +
                    arrs[i][2] + "</p></div></div></div>";
                $("#classcard").append(txt1);
            }
            
        </script>
    </form>
</body>
</html>

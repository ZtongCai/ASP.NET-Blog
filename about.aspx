<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
       <!--不加导航条会变小-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>关于</title>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <link href="css/icon.css" type="text/css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>
<body>
    <form id="form1" runat="server">

<div id="header">
    <nav>
    <div class="nav-wrapper blue accent-2">
        <!--<a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>-->
      <a href="index.aspx" class="brand-logo center">About🐻</a>
      <ul class="right">
      <!--<li><a href="#"><i class="material-icons">search</i></a></li>-->
      <li><a href="index.aspx"><i class="material-icons">home</i></a></li>
      </ul>
    </div>
  </nav>
</div>

        <div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
      <div class="container">
        <br/><br/>
        <h1 class="header center white-text text-lighten-2">About Me</h1>
        <div class="row center">
          <h5 class="header col s12 light white-text">Dalian Maritime University SE Cai,Zitong</h5>
        </div>
        <div class="row center">
          <a href="mailto:ztong918@outlook.com" id="download-button" class="btn-large waves-effect waves-light blue">Contact me</a>
        </div>
        <br/><br/>

      </div>
    </div>
    <div class="parallax"><img src="images/background1.jpg" alt="Unsplashed background img 1"/></div>
           
  </div>

  <div class="container">
    <div class="section">

      <div class="row">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>简介</h4>
          <h5 class="left-align light">我们生活的世界一直在变化着，不变的是我们对于未知的好奇和对于生活点滴的热爱。大概我们都一样，喜欢记录，喜欢分享，喜欢了解不同的精彩。
            文字永远是最有温度和最纯粹的记录生活、了解世界的方式，我们正在不断努力中，试图利用博客这个平台，让热爱生活的你足不出户依然可以知晓古今中外的大事小情，忙忙碌碌仍然能认真记录独属于自己的每一分钟。
            “小熊”团队为了共同的目标而不断努力，我们深知手中做的事情正在改变你的生活，所以我们必须为你的每次支持而感到幸运！我们希望在未来，能够看到更多人通过我们的博客记录生活，记录独属于你自己的小幸福，记录你一次次的迷惘和一次次的崛起；也同样希望通过我们的博客能够为你的生活增添光彩，为你带来来自不同地区的别样的精彩，为你忙碌的生活提供更多便利和快乐。
            我们团队也会永葆对这份责任的使命感，不断开拓业务，认真工作，让我们一起探寻生活给予我们的更多的欢乐和更大的意义。
            </h5>
        </div>
      </div>

    </div>
  </div>

          <div class="parallax-container valign-wrapper">
    
      <div class="container">
        <div class="row center">
            <h2 class=" center white-text text-lighten-2">Play with 🐻</h2>
        </div>
      </div>
    
    <div class="parallax"><img src="images/background2.jpg" alt="Unsplashed background img 2"/></div>
  </div>

  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
          
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center brown-text"><img class="circle" style="height:150px;width:150px;" src="images/timg.jpg"/></h2>
            <h5 class="center">蔡子桐</h5>
                <p class="light center">大连海事大学2016级软件工程</p>
                <p class="light">以诚待人，有良好的沟通能力和团队精神，对工作充满热情，能学好问。实际动手能力和团队协作精神，能迅速的适应各种环境，并融合其中。</p>
                <a class="center" href="mailto:ztong918@outlook.com">联系我</a>
             </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
           
        </div>
      </div>

    </div>
  </div>
</div>

<div class="parallax-container valign-wrapper">
    


      <div class="container">
          <div class="row center">
          <h5 class="header col s12 light white-text">富强民主文明和谐</h5>
              <h5 class="header col s12 light white-text">自由平等公正法治</h5>
              <h5 class="header col s12 light white-text">爱国敬业诚信友善</h5>
        </div>
        
      </div>
    
    <div class="parallax"><img src="images/background3.jpg" alt="Unsplashed background img 3"/></div>
  </div>


          <div id="footer">
       <footer class="page-footer blue accent-2" style="margin :0;">
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
                  <!--<li><a class="grey-text text-lighten-3" href="#!">链接 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">链接 4</a></li>-->
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2019 Copyright 文本
            <!--<a class="grey-text text-lighten-4 right" href="#!">更多链接</a>-->
            </div>
          </div>
        </footer>
        </div>


    </form>
    <script>
        $(document).ready(function(){
      $('.parallax').parallax();
        });
     </script>
</body>
</html>

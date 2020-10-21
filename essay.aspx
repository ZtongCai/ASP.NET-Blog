<%@ Page Language="C#" AutoEventWireup="true" CodeFile="essay.aspx.cs" Inherits="essay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--不加导航条会变小-->
<meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>文章</title>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <link href="css/icon.css" type="text/css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <style>
        /*选择id用#开头,选择class用.开头*/
    
        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
          }
       	p{
		font-size:16px;
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
        <div id="header">
    <nav>
    <div class="nav-wrapper blue accent-2">
        <a href="#" data-activates="slide-out" class="button-collapse"></a>
      <a href="index.aspx" class="brand-logo center">🐻's Essay</a>
      <ul class="right">
      <!--<li><a href="#"><i class="material-icons">search</i></a></li>-->
      <li><a href="index.aspx"><i class="material-icons">home</i></a></li>
      </ul>
    </div>
  </nav>
</div>
                <div id="main" style="display: flex; min-height: 66vh; flex-direction: column;">
        <div class="wrapper">
            

            <section id="content">
	<div class="container">
    		<div class="row">
               
            <div class="row" id="essaybegin">
                <!--<h1>标题</h1>
                <b>日期 作者</b>
                <hr />
                <p>内容</p>-->
                
                </div></div></div>
            </section>       

        </div> </div>


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
    </form>

    <script>
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
            var essayid = Request["eid"];
        console.log(essayid);

        var essay = [];
        var arrs = [];
            function getessay() {
                $.ajax({
                    type: "post",
                    async: false,
                    url: "essay.ashx",
                    data: { EID: essayid },
                    dataType: "json",
                    success: function(ee){
                        if(ee){
                            /*for(var i = 0 ; i < ee.length; i++){
                                    //arrs.push(result[i].name,result[i].num);
                                arrs.push([
                                    ee[i].Class,
                                    ee[i].Name,
                                    ee[i].Text,
                                    ee[i].Brief,
                                    ee[i].Url,
                                    ee[i].Date,
                                    ee[i].Content
                                    ]);
                            }*/
                            arrs.push([
                                    ee.Class,
                                    ee.Name,
                                    ee.Text,
                                    ee.Brief,
                                    ee.Url,
                                    ee.Date,
                                    ee.Content
                                    ]);
                        }
                    },
                    error: function(errmsg) {
                        alert("Ajax获取服务器数据出错了！"+ errmsg);
                    }
                });
            return arrs;
            }
            // 执行异步请求
            getessay();
            console.log(arrs);
            console.log(arrs[0][6]);
        var neirong = '<%=neirong%>';
        console.log(neirong);

            /*for (var i = 0; i < arrs.length; i++) {
                var txt3 = "<h1>" + 
                    arrs[i][2] + "</h1><b>" +
                    arrs[i][5] +
                    arrs[i][1] + "</b><hr/><p>" +
                    arrs[i][6] + "</p > ";
                $("#essaybegin").append(txt3);
            }*/
        var txt3 = "<h1>" +
            arrs[0][2] + "</h1><b>日期:" +
            arrs[0][5] + "&nbsp&nbsp作者:" +  
            arrs[0][1] + "</b><hr/><p>" +
            neirong + "</p > ";
                $("#essaybegin").append(txt3);
    </script>
</body>
</html>

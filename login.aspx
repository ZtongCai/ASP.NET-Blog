<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <meta name="viewport" content="width=device-width, initial-scale=1"/>   
    <title>请登录</title>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <link href="css/icon.css" type="text/css" rel="stylesheet" />
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <style>
        body {
            background-color:#ffd54f;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
           <nav>
    <div class="nav-wrapper blue accent-2">
      <a href="index.aspx" class="brand-logo center">成为🐻</a>
      <ul class="right">
      <li><a href="index.aspx"><i class="material-icons">home</i></a></li>
      </ul>
    </div>
  </nav>
        <br/><br/>

        <br/>
        <div class="container">
       
         <div class="row">
      <div class="col s12 m8 l4 offset-m2 offset-l4">
              <h3>
                登录
            </h3>
        <div class="card-panel">
              <div class="row">
                <div class="col s12">
                    <br/>
                  <div class="row">
                    <div class="input-field col s11">
                      <i class="material-icons prefix">account_circle</i>
                      <input name="icon_prefix" id="icon_prefix" type="text" class="validate"/>
                      <label for="icon_prefix">用户ID</label>
                    </div>
                      </div>
                      <div class="row">
                    <div class="input-field col s11">
                      <i class="material-icons prefix">vpn_key</i>
                      <input name="password" id="password" type="password" class="validate"/>
                      <label for="password">密码</label>
                    </div>
                  </div>
                     <div class="row">
                    <div class="col s4 offset-s4">
                   <!-- <button class="btn waves-effect waves-light" type="submit" name="action" >登录
                        <i class="material-icons right">send</i>
                      </button>-->
                        <button runat="server"  class="btn waves-effect waves-light blue" type="submit" name="action" onserverclick="Unnamed_ServerClick">登录
                            <i class="material-icons right">send</i>
                      </button>
                      </div>
                  </div>
                </div>

              </div>
        </div>
      </div>
    </div>
            </div>
        <div>
        </div>


    </form>
</body>
</html>

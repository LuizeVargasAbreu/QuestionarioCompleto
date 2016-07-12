
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin 2 - Bootstrap Admin Theme</title>
        
   
        <!-- Bootstrap Core CSS -->
        <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">

                    <!-- /.dropdown-alerts -->

                    <!-- /.dropdown -->
                     <li class="dropdown bottom-right">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a class="btn btn-block btn-social btn-facebook" href="https://www.facebook.com/">
                                <i class="fa fa-facebook"></i> Sign in with Facebook
                            </a>
                        </li>
                        <li><a class="btn btn-block btn-social btn-google-plus" href="https://www.google.com/intl/pt-BR/mail/help/about.html" bgcolor="#FF0000">
                                <i class="fa fa-google-plus"></i> Sign in with Google
                            </a>
                        </li>
                        <li><a class="btn btn-block btn-social btn-twitter" href="https://twitter.com/">
                                <i class="fa fa-twitter"></i> Sign in with Twitter
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="sair"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
   
        

                    <!-- /.navbar-top-links -->

                    <div class="navbar-default sidebar" role="navigation">
                        <div class="sidebar-nav navbar-collapse">
                            <ul class="nav" id="side-menu">
                                <li class="sidebar-search">
                                    <div class="input-group custom-search-form">
                                        <input type="text" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </li>
                                <li>
                                    <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> Menu de início</a>
                                </li>
                                
                                <li>
                                    <a href="#"><i class="fa fa-sitemap fa-fw"></i>Clique aqui<span class="fa arrow"></span></a>
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="professorIndex.jsp">Média Professores</a>
                                        </li>
                                        <li>
                                            <a href="monitorIndex.jsp">Média Monitores</a>
                                        </li>
                                        <li>
                                            <a href="#">Clique aqui <span class="fa arrow"></span></a>
                                            <ul class="nav nav-third-level">
                                                <li>
                                                    <a href="professorQuestionario.jsp">Questionário professor</a>
                                                </li>
                                                <li>
                                                    <a href="monitorQuestionario.jsp">Questionário monitor</a>
                                                </li>
                                                <li>
                                                    <a href="index.jsp">Index</a>
                                                </li>
                                            </ul>
                                            <!-- /.nav-third-level -->
                                        </li>
                                    </ul>
                                    <!-- /.nav-second-level -->
                                </li>

                            </ul>
                        </div>
                        <!-- /.sidebar-collapse -->
                    </div>
                    <!-- /.navbar-static-side -->
                </div>
            </nav>
        </div>
    </body>
</html>
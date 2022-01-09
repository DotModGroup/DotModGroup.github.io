﻿$log = New-Object System.Collections.Generic.List[String]

$articlestring = ""

Get-ChildItem "website/media/articles" -Filter article_*.txt -Recurse | 
Foreach-Object {
    $log.Add("$(Get-Date) -  SUCCESS: Got article from $($_.Name)")
    $articlefile = Get-Content $_.FullName
    $articlestring = $articlestring + $articlefile
}

$beginning = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Techro is a modern and fully responsive Template by WebThemez.">
    <meta name="author" content="webThemez.com">
    <title>DotMod - Home</title>
    <link rel="favicon" href="assets/images/favicon.png">
    <link rel="stylesheet" media="screen" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <!-- Custom styles for our template -->
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" type="text/css" href="assets/css/da-slider.css" />
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <!-- Button for smallest screens -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
                <a class="navbar-brand" href="index.html">
                    <img src="assets/images/logo.png" alt="Techro HTML5 template">
				</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav pull-right">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="coldwaters.html">Cold Waters - DotMod</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Guides <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="weaponguide.html">Weapons</a></li>
                            <li><a href="#">Dummy Link1</a></li>
                            <li><a href="#">Dummy Link2</a></li>
                            <li><a href="#">Dummy Link3</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
    <!-- /.navbar -->

    <!-- Header -->
    <header id="head">
        <div class="container">
            <div class="banner-content">
                <div id="da-slider" class="da-slider">
                    <div class="da-slide">
                        <h2>New Models</h2>
                        <p>New custom built models for Cold Waters!</p>
                        <div class="da-img"></div>
                    </div>
                    <div class="da-slide">
                        <h2>New AI</h2>
                        <p>Updated AI Behaviour to improve the Challenge!</p>
                        <div class="da-img"></div>
                    </div>
                    <div class="da-slide">
                        <h2>Rebalancing</h2>
                        <p>A rebalanced and fairer experience!</p>
                        <div class="da-img"></div>
                    </div>
                    <div class="da-slide">
                        <h2>New Code</h2>
                        <p>New functions written specifically for DotMod!</p>
                        <div class="da-img"></div>
                    </div>
                    <nav class="da-arrows">
                        <span class="da-arrows-prev"></span>
                        <span class="da-arrows-next"></span>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- /Header -->

	<div class="container">
        <div class="row">
            <!-- Article content -->
            
    <div class="container">
        <div class='row'>
            <div class='col-md-12'>
				<header class="page-header">
                    <h1 class="page-title">DotMod - Mod Cold Waters til it Breaks</h1>
                </header>
            </div>
        </div>
"@

$end = @"
    </div>

    <footer id="footer" class="top-space">

        <div class="footer1">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 panel">
                        <h3 class="panel-title">About DotModGroup</h3>
                        <div class="panel-body">
                            <p>The DotModGroup is an international group of modders making new content for Killerfish Games's 2017 arcade submarine simulation, Cold Waters. As a team, we have developed new UI, models, features, textures, and more to bring new content to the modern naval combat genre.</p>
                        </div>
                    </div>

                    <div class="col-md-4 panel contact">
                        <h3 class="panel-title">Contact Info</h4>
						<div class="panel-body">
                            <p>Contact us on our Discord Server.</p>
                            <ul>
                                <li><a href="https://discord.gg/DrmztcDYYf">https://discord.gg/DrmztcDYYf</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- /row of panels -->
            </div>
        </div>

        <div class="footer2">
            <div class="container">
                <div class="row">

                    <div class="col-md-6 panel">
                        <div class="panel-body">
                            <p class="simplenav">
                                <a href="index.html">Home</a> | 
								<a href="about.html">About</a> |
								<a href="coldwaters.html">Cold Waters - DotMod</a> |
								<a href="gallery.html">Gallery</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-md-6 panel">
                        <div class="panel-body">
                            <p class="text-right">
                                Copyright &copy; 2014. Template by <a href="http://webthemez.com/" rel="develop">WebThemez.com</a>
                            </p>
                        </div>
                    </div>

                </div>
                <!-- /row of panels -->
            </div>
        </div>

    </footer>

    <!-- JavaScript libs are placed at the end of the document so the pages load faster -->
    <script src="assets/js/modernizr-latest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.cslider.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
"@

$outstring = "$($beginning)$($articlestring)$($end)"
$outstring | Out-File ( New-Item -Path "website/index.html" -Force)
$log | Out-File ( New-Item -Path "website/logs/buildindex.log" -Force)
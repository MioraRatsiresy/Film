<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% model.Scene scene = (model.Scene) request.getAttribute("scene"); %>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">

<!-- index14:58-->
<head>
    <!-- Basic need -->
    <title>Liste des films</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'/>
    <!-- Mobile specific meta -->
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">

    <!-- CSS files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plugins.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="${pageContext.request.contextPath}/resources/images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<!--login form popup-->
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>Login</h3>
        <form method="post" action="#">
            <div class="row">
                <label for="username">
                    Username:
                    <input type="text" name="username" id="username" placeholder="Hugh Jackman"
                           pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required"/>
                </label>
            </div>

            <div class="row">
                <label for="password">
                    Password:
                    <input type="password" name="password" id="password" placeholder="******"
                           pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                           required="required"/>
                </label>
            </div>
            <div class="row">
                <div class="remember">
                    <div>
                        <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
                    </div>
                    <a href="#">Forget password ?</a>
                </div>
            </div>
            <div class="row">
                <button type="submit">Login</button>
            </div>
        </form>
        <div class="row">
            <p>Or via social</p>
            <div class="social-btn-2">
                <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
                <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div>
    </div>
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper" id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>sign up</h3>
        <form method="post" action="#">
            <div class="row">
                <label for="username-2">
                    Username:
                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman"
                           pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required"/>
                </label>
            </div>

            <div class="row">
                <label for="email-2">
                    your email:
                    <input type="password" name="email" id="email-2" placeholder=""
                           pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                           required="required"/>
                </label>
            </div>
            <div class="row">
                <label for="password-2">
                    Password:
                    <input type="password" name="password" id="password-2" placeholder=""
                           pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                           required="required"/>
                </label>
            </div>
            <div class="row">
                <label for="repassword-2">
                    re-type Password:
                    <input type="password" name="password" id="repassword-2" placeholder=""
                           pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                           required="required"/>
                </label>
            </div>
            <div class="row">
                <button type="submit">sign up</button>
            </div>
        </form>
    </div>
</div>
<!--end of signup form popup-->

<!--add form popup-->
<div class="login-wrapper" id="add-content">
    <div class="scrollable">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Ajouter une Sc??ne</h3>
            <form method="post" action="#">
                <div class="row">
                    <label for="temps">
                        temps:
                        <input type="datetime-local" name="temps" id="temps"
                               required="required"/>
                    </label>
                </div>
                <div class="row">
                    <label for="multipleSelect">
                        Acteurs:
                        <select multiple id="multipleSelect" name="acteurs">
                            <option value="option1">Option 1</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </label>
                </div>
                <div class="row">
                    <label for="sketch">
                        sketch:
                        <textarea name="sketch" id="sketch" cols="30" rows="10"></textarea>
                    </label>
                </div>
                <div class="row">
                    <label for="sentiment">
                        sentiment:
                        <select id="sentiment" name="sentiment">
                            <option value="option1">Option 1</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </label>
                </div>
                <div class="row">
                    <label for="expression">
                        expression:
                        <select id="expression" name="expression">
                            <option value="option1">Option 1</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </label>
                </div>
                <div class="row">
                    <label for="ton">
                        ton:
                        <select id="ton" name="ton">
                            <option value="option1">Option 1</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </label>
                </div>
                <div class="row">
                    <label for="vetements">
                        vetements:
                        <select id="vetements" name="vetements">
                            <option value="option1">Option 1</option>
                            <option value="option2">Option 2</option>
                            <option value="option3">Option 3</option>
                            <option value="option3">Option 3</option>
                        </select>
                    </label>
                </div>
                <div class="row">
                    <button type="submit">Ajouter</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--end of add form popup-->


<!-- BEGIN | Header -->
<header class="ht-header">
    <div class="container">
        <nav class="navbar navbar-default navbar-custom">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header logo">
                <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <div id="nav-icon1">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <a href="index-2.html"><img class="logo" src="${pageContext.request.contextPath}/resources/images/logo1.png" alt="" width="119" height="58"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav flex-child-menu menu-left">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown">
                            Home <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="index-2.html">Home 01</a></li>
                            <li><a href="homev2.html">Home 02</a></li>
                            <li><a href="homev3.html">Home 03</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            movies<i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Movie grid<i
                                        class="ion-ios-arrow-forward"></i></a>
                                <ul class="dropdown-menu level2">
                                    <li><a href="moviegrid.html">Movie grid</a></li>
                                    <li><a href="moviegridfw.html">movie grid full width</a></li>
                                </ul>
                            </li>
                            <li><a href="movielist.html">Movie list</a></li>
                            <li><a href="moviesingle.html">Movie single</a></li>
                            <li class="it-last"><a href="seriessingle.html">Series single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            celebrities <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="celebritygrid01.html">celebrity grid 01</a></li>
                            <li><a href="celebritygrid02.html">celebrity grid 02 </a></li>
                            <li><a href="celebritylist.html">celebrity list</a></li>
                            <li class="it-last"><a href="celebritysingle.html">celebrity single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            news <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="bloglist.html">blog List</a></li>
                            <li><a href="bloggrid.html">blog Grid</a></li>
                            <li class="it-last"><a href="blogdetail.html">blog Detail</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            community <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="userfavoritegrid.html">user favorite grid</a></li>
                            <li><a href="userfavoritelist.html">user favorite list</a></li>
                            <li><a href="userprofile.html">user profile</a></li>
                            <li class="it-last"><a href="userrate.html">user rate</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav flex-child-menu menu-right">
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            pages <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="landing.html">Landing</a></li>
                            <li><a href="404.html">404 Page</a></li>
                            <li class="it-last"><a href="comingsoon.html">Coming soon</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Help</a></li>
                    <li class="loginLink"><a href="#">LOG In</a></li>
                    <li class="btn signupLink"><a href="#">sign up</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <!-- top search form -->
        <form method="POST">
            <div style="float: left; width: 80%;" class="top-search">
                <input style="" type="text" placeholder="Mot cl??">
            </div>
            <input style="float: left; width: 18%; margin-top: 1%; border-radius: 2px;" class="form-control"
                   type="submit" value="Rechercher">
        </form>
    </div>
</header>
<!-- END | Header -->
<div class="slider movie-items">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-12 col-xs-12">
                <div class="blog-detail-ct">
                    <center>
                        <button class="btn addLink"><a href="#">Ajouter un Action</a></button>
                    </center>
                    <br>
                    <h2 style="color: white;">Action 1</h2>
                    <p>
                        Joss Whedon has a little bit of a history with superhero movies, and for creating layered female
                        characters. After his documented frustrations with Wonder Woman, he's getting another chance at
                        the DC Extended Universe and Warner Bros., closing in on a deal to write direct and produce a
                        Batgirl movie.</p>

                    <p>It's a somewhat surprising, but welcome move, given that Whedon has taken a long break to write
                        something original, but has now pivoted to focus on developing the Batgirl project. First
                        appearing in 1967 in Gardner Fox and Carmine Infantino's story run The Million Dollar Debut Of
                        Batgirl, she's the superhero alias of Barbara Gordon, daughter of Gotham City Police
                        Commissioner James Gordon. So we can likely expect J.K. Simmons' take on Gordon to appear along
                        with other Bat-related characters.</p>

                    <p>Based on Lissa Evans??? novel ???Their Finest Hour and a Half??? and directed by Lone Scherfig (???An
                        Education???), the film is set in London during World War II when the British ministry was
                        utilizing propaganda films to boost morale. Arterton plays Catrin Cole, a scriptwriter who is
                        brought on to handle the women???s dialogue ??? commonly referred to as ???the nausea.??? The film,
                        opening this week, features an outstanding ensemble, including Bill Nighy as a washed-up actor
                        and Sam Claflin as Catrin???s fellow writer and sparring partner.</p>
                    <div class="flex-it flex-ct">
                        <p>
                            Arterton is next set to play Vita Sackville-West in Vita and Virginia about her relationship
                            with Virginia Woolf. She spoke to Variety about working with female directors, remarkable
                            women, and why she shies away from the
                            term ???strong female character.??? <br>

                            I???m friends with the producer who I worked with on Byzantium and he sent it to me. I read
                            the book as well, which is fantastic. You???re always looking for untold stories and many
                            times they???re women???s stories. What surprised me is that it centers around a woman who???s
                            really quite timid. I guess she???s allowed to be because all of the other characters.
                        </p>
                    </div>
                    <p>Man Down debuted simultaneously on digital platforms in the U.K., meaning it was never going to
                        be a big earner in theaters. But no one expected only one ticket sale. As of Tuesday, the Reel
                        Cinema in Burnley was still carrying Man Down, which also stars Gary Oldman, Jai Courtney and
                        Kate Mara.</p>
                    <p>In the film, LaBeouf stars as a war veteran suffering from PTSD following his return from
                        Afghanistan. The indie project, reuniting the star with A Guide to Recognizing Your Saints
                        director Dito Montile, made its world premiere at the 2016 Venice Film Festival before making
                        making a stop at the Toronto International Film Festival.</p>
                    <!-- share link -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer section-->
<footer class="ht-footer">
    <div class="container">
        <div class="flex-parent-ft">
            <div class="flex-child-ft item1">
                <a href="index-2.html"><img class="logo" src="${pageContext.request.contextPath}/resources/images/logo1.png" alt=""></a>
                <p>5th Avenue st, manhattan<br>
                    New York, NY 10001</p>
                <p>Call us: <a href="#">(+01) 202 342 6789</a></p>
            </div>
            <div class="flex-child-ft item2">
                <h4>Resources</h4>
                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Blockbuster</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Forums</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Help Center</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item3">
                <h4>Legal</h4>
                <ul>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Security</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item4">
                <h4>Account</h4>
                <ul>
                    <li><a href="#">My Account</a></li>
                    <li><a href="#">Watchlist</a></li>
                    <li><a href="#">Collections</a></li>
                    <li><a href="#">User Guide</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item5">
                <h4>Newsletter</h4>
                <p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
                <form action="#">
                    <input type="text" placeholder="Enter your email...">
                </form>
                <a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
            </div>
        </div>
    </div>
    <div class="ft-copyright">
        <div class="ft-left">
            <p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
        </div>
        <div class="backtotop">
            <p><a href="#" id="back-to-top">Back to top <i class="ion-ios-arrow-thin-up"></i></a></p>
        </div>
    </div>
</footer>
<!-- end of footer section-->

<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/plugins2.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>

<!-- index14:58-->
</html>

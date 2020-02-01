<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags 使用Veiwport 設定手機網頁的螢幕解析度-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
<div class="nav navbar-default navbar-fixed-bottom "><!-- style="width:30%"-->
  <div class="col-xs-6"><!---->

  <ul class="nav nav-tabs">

    <li><a data-toggle="tab" href="#home">紅茶系列</a></li>
    <li><a data-toggle="tab" href="#menu1">冬瓜系列</a></li>
    <li><a data-toggle="tab" href="#menu2">仙草系列</a></li>


  <li><a data-toggle="tab" href=" #<?php echo $row[ 'class_id'];?> ">  <?php echo $row['class_name']; }//foreach結束 ?> </a></li> 


    <ul class="nav navbar-nav navbar-right">
      <li class="dropdown"><a class="dropdown-toggle " data-toggle="dropdown" href="#">Dropdown<span class="caret"></span></a>
        <ul class="dropdown-menu">
           <li><a href="#">First</a></li>
           <li><a href="#">Second</a></li>
           <li><a href="#">Third</a></li>
        </ul>
      </li>

       <li><a data-toggle="tab" href="#"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
       <li><a data-toggle="tab" href="#">Log out</a></li>
       <li><a data-toggle="tab" href="#"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
    </ul>
    
  </ul>
 </div>
</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  </body>
</html>
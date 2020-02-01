
<!DOCTYPE html>

<html lang="en">
<head>
 <title>Bootstrap Navigation Bar</title>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"><!--匯入bootstrap-->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script><!--匯入jQuery-->
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script><!--匯入bootstrap javascript-->
 
 <style type="text/css">
		    .a{
				height: 25vh;
                overflow:auto;
			}
 </style><!--固定菜單-->
</head>

<body>
<div class="nav navbar-default"><!-- style="width:30%"-->

  <ul class="nav nav-tabs">
    <li><a data-toggle="tab" href="#home">紅茶系列</a></li>
    <li><a data-toggle="tab" href="#menu1">冬瓜系列</a></li>
    <li><a data-toggle="tab" href="#menu2">仙草系列</a></li>


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

  <div class="tab-content a" >
     <div id="home" class="tab-pane fade in active">
       <button>紅茶冰</button>
       <button>檸檬紅茶</button>
       <p>金桔紅茶</p>
       <p>紅茶豆漿</p>
       <p>紅茶多多</p>
       <p>紅茶牛奶</p>
       <p>特濃紅茶牛奶</p>
       <p>特濃紅茶豆漿</p>
     </div>

     <div id="menu1" class="tab-pane fade">
       <p>冬瓜冰</p>
       <p>冬瓜紅茶</p>
       <p>檸檬冬瓜</p>
       <p>金桔冬瓜</p>
       <p>冬瓜豆漿</p>
       <p>冬瓜多多</p>
       <p>冬瓜牛奶</p>
       <p>特濃冬瓜牛奶</p>
       <p>特濃冬瓜豆漿</p>
     </div>

     <div id="menu2" class="tab-pane fade">
       <p>麥仔茶</p>
       <p>麥香紅茶</p>
       <p>麥茶冬瓜</p>
       <p>麥茶豆漿</p>
       <p>麥茶牛奶</p>
       <p>特濃麥茶豆漿</p>
       <p>特濃麥茶牛奶</p>
     </div>
  </div>

</div>




 </body>

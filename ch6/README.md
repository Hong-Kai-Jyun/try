### 第六章 PHP 基本語法
#### PHP 基本觀念
+ 站台的運作方式
  + 靜態網站
    ![靜態網站](img/1.gif)
    + 取自「鳥哥的私房菜」
  + 動態網站
    ![動態網站](img/2.jpeg)
    + 取自「鳥哥的私房菜」

+ PHP 的運作方式
  + PHP Engine
    ![PHP運作概要圖](img/4.jpeg)

+ PHP 程式寫作方式
  + HTML 內嵌 PHP 程式標籤 :
    ```php
    <?php
      你的 php 程式碼;
    ?>
    ```
    + 範例 : hello.php
      ```html
      <!doctype html>
      <html lang="en">
        <head>
          <title>Hello World</title>
          <!-- Required meta tags -->
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

          <!-- Bootstrap CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>
        <body>
            <?php
              print "Hello World";
            ?>
          <!-- Optional JavaScript -->
          <!-- jQuery first, then Popper.js, then Bootstrap JS -->
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </body>
      </html>
      ```
  + PHP 包含 HTML 標籤
    + 範例 : world.php
      ```php
      <?php
      print <<<_HTML_
          <form method="post" action="$_SERVER[PHP_SELF]">
          Your Name:<input type="text" name="user" />
          <br/>
          <button type="submit" class="btn btn-primary">Say World</button>
          </form>
      _HTML_;
      ?>
      ```
    + 範例 : world1.php
      ```php
      <?php
          print "<h5>test</h5>";
      ?>
      ```

  + PHP 基本輸出
    + 使用 echo 
    + 使用 print
    + 例 : ex6_1.php
      ```php
      <?php
        echo "Hello <br />";
        echo 'World <br />';
        print "Hello2 <br />";
        print 'World2 <br />';
      ?>
      ```

  + PHP 的註解
#### 變數與資料型態
####
#### 運算子
#### 參考文獻
+ [鳥哥的私房菜](http://dic.vbird.tw/linux_server/unit10.php)
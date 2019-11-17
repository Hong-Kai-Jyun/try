### 第五章 HTML 與 CSS 基本語法
#### HTML5 基本語法
+ 概要
  + HTML (Hyper Text Markup Language, 超文本標記語言)由 W3C定義與維護的標準網頁語言。
+ HTML語法:
  + 標籤:
    + 帶有特殊含義的網頁的標記元素
    + 格式：\<開始標籤\> 標籤體 \</結束標籤\>
  + 分類:
    + 帶標籤體的標籤 如： **\<p\>** XX **\</p\>**
    + 不帶標籤體的標籤 如： **\<br/\>**
    + 標籤應該成對出現
  + 屬性
    + 寫在開始標籤上的 「key = value」 為該標籤屬性值，例：
      ```html
       <font color="red">標籤體</font>
      ```
      + color 即為該標籤的屬性值！
    + 一個標籤可以有多個屬性，多個屬性之間使用空格隔開。
  + 注釋
    ```html
    <!--我是注釋-->
    ```
  + <font color="red">注意</font>：根據 HTML5的標準，HTML5文件可以略過 \<html\>、\<head\>、\<body\> 等標籤！
+ HTML主要結構:
    ```html
    <!DOCTYPE html>
    <html>
        <head></head>
        <body></body>
    </html>
    ```
  + 起頭命令句，告訴瀏覽器這個檔案是一個 html5 檔。
    ```html
    <!DOCTYPE html>
    ```
  + html基本結構:
    + html : 是不區分大小寫
    + 由 **\<html\>** 開始，由 **\</html\>** 結束，在這之間是分 **\<head\>** 和 **\<body\>** 兩部分!
      + **\<head\>** : 給 html 頁面增加一些輔助或者屬性值，裡面的內容會最先載入。
      + **\<body\>** : 標籤裡面存放的才是真正要顯示的數據
    + 在開頭 <html> 可以加入語言判定的標籤，例如:
       ```html
       <html lang="en-US">
       ```
  + Head 部分：用於表示網頁的基本資訊
    + 常用標籤與屬性：
      1. title ：瀏覽器標籤頁顯示的標題
      2. meta ：其常用屬性如下
         1. charset : 設置文檔的字符集編碼格式。
         2. http-equiv : 將資訊寫給瀏覽器看，要求瀏覽器執行，可選屬性值
            1. Content-Type：文件類型
            2. refresh：網頁定時刷新
            3. set-cookie：設置瀏覽器cookie，需要配合content屬性使用。http-equiv屬性只是表明需要設置哪一部分，具體的設置內容，放到content屬性中
            4. name：使用方法如同「http-equiv」。將資訊寫給搜尋引擎看！常用且需要掌握的屬性值：
               1. author：作者
               2. keywords：網頁關鍵字
               3. description：網頁描述
         3. 例：
            ```html
            <meta charset="UTF-8">
            <meta name="description" content="網頁簡短描述">
            <meta name="keywords" content="網頁關鍵字">
            <meta http-equiv="refresh" content="30">
            <meta name="author" content="John Doe">
            ```
      3. link：連結資訊，其常用屬性有：
         1. rel ：通知瀏覽器相關資訊
         2. type ：可以是文字類型，或是其它類型
         3. href ：表示連結路徑地址
         4. 例：
            ```html
            <link rel="stylesheet" type="text/css" href="main.css"/>
            ```
      4.  style: 定義該網頁的樣式格式
        + 例：
          ```html
          <style>
            body {background-color: powderblue;}
            h1 {color: red;}
            p {color: blue;}
            </style>
          ```
      5.  script：用來定義給客戶端執的 JavaScripts 檔案
        + 例：
          ```html
          <script>
            function myFunction {
            document.getElementById("demo").innerHTML = "Hello JavaScript!";
            }
          </script>
          ```
      6.  base: 指定該網頁上基本網頁的 url 位置
        + 例：
          ```html
          <base href="https://www.w3schools.com/images/" target="_blank">
          ```
  + Body 部份：網頁真正會展示給使用者看的內容
    + 標題 : 有六種大小，從 \<h1\> ～ \<h6\>，預設字體大小為24pt ～ 8pt
      + 例 :
        ```html
        <h1>I'm headline 1</h1>
        <h2>I'm headline 2</h2>
        <h3>I'm headline 3</h3>
        <h4>I'm headline 4</h4>
        <h5>I'm headline 5</h5>
        <h6>I'm headline 6</h6>
        ```
    + 段落 : \<p\>\</p\>
      + 例 :
        ```html
        <p>This is a paragraph.</p>
        <p>This is another paragraph.</p>
        ```
    + 超連結 : \<a\>\</a\>
      + 例 :
        ```html
        <a href="https://www.google.com">google</a>
        ```
      + href : 指定目的地網址名稱
    + 圖片連結設定：\<img\>\</img\>
      + 例 :
        ```html
        <img src="img/test1.jpg" alt="Hello World" width="104" height="142">美女圖</img>
        ```
      + src : 指定圖檔路徑
      + alt : 圖檔說明文字
      + width : 圖檔顯示的寬度
      + height : 圖檔顯示的高度
    + 按鍵 : \<button\>\</button\>
      + 例 :
        ```html
        <button>Click me</button>
        ```
    + 列表清單 :
      + 有序清單 : \<ol\>\</ol\>
      + 無序清單 : \<ul\>\</ul\>
      + 列表項目 : \<li\>\</li\>
      + 例：
        ```html
        <ul>
          <li>Coffee</li>
          <li>Tea</li>
          <li>Milk</li>
        </ul>

        <ol>
          <li>Coffee</li>
          <li>Tea</li>
          <li>Milk</li>
        </ol>
        ```

+ HTML5 新增項目
  + HTML5　新增元素列表 :
  
  |Tag|Description|
  |:---:|:---|
  |\<article\>|	Defines an article in a document|
  |\<aside\>|	Defines content aside from the page content|
  |\<bdi\>|	Isolates a part of text that might be formatted in a different direction from other text outside it|
  |\<details\>|	Defines additional details that the user can view or hide|
  |\<dialog\>|	Defines a dialog box or window|
  |\<figcaption\>|	Defines a caption for a \<figure\> element|
  |\<figure\>|	Defines self-contained content|
  |\<footer\>|	Defines a footer for a document or section|
  |\<header\>|	Defines a header for a document or section|
  |\<main\>|	Defines the main content of a document|
  |\<mark\>|	Defines marked/highlighted text|
  |\<meter\>|	Defines a scalar measurement within a known range (a gauge)|
  |\<nav\>|	Defines navigation links|
  |\<progress\>|	Represents the progress of a task|
  |\<rp\>|	Defines what to show in browsers that do |not support ruby annotations
  |\<rt\>|	Defines an explanation/pronunciation of characters (for East Asian typography)|
  |\<ruby\>|	Defines a ruby annotation (for East Asian typography)|
  |\<section\>|	Defines a section in a document|
  |\<summary\>|	Defines a visible heading for a \<details\> element|
  |\<time\>|	Defines a date/time|
  |\<wbr\>|	Defines a possible line-break|

  + HTML5 表格新增元素 :

  |Tag|Description|
  |:---:|:---|
  |\<datalist\>|	Specifies a list of pre-defined options for input controls|
  |\<output\>|	Defines the result of a calculation|

  + HTML5 新增可辨視輸入類型的種類 :
    + 輸入類型分類：
      + color
      + date
      + datetime
      + datetime-local
      + email
      + month
      + number
      + range
      + search
      + tel
      + time
      + url
      + week
    + 輸入類型屬性 :
      + autocomplete
      + autofocus
      + form
      + formaction
      + formenctype
      + formmethod
      + formnovalidate
      + formtarget
      + height and width
      + list
      + min and max
      + multiple
      + pattern (regexp)
      + placeholder
      + required
      + step
  
  + HTML5 新增繪圖標籤
    
    |Tag|Description|
    |:---:|:---|
    |\<canvas\>|	Draw graphics, on the fly, via scripting (usually JavaScript)|
    |\<svg\>|	Draw scalable vector graphics|

  + HTML5 新增多媒體標籤
    
    |Tag|Description|
    |:---:|:---|
    |\<audio\>|	Defines sound content|
    |\<embed\>|	Defines a container for an external (non-HTML) application|
    |\<source\>| Defines multiple media resources for media elements (\<video\> and \<audio\>)|
    |\<track\>|	Defines text tracks for media elements (\<video\> and \<audio\>)|
    |\<video\>| Defines video or movie|

#### CSS3 基本語法
#### Bootstrap 4 框架基本語法
#### 參考文獻
+ [W3 School](https://www.w3schools.com/) 
+ [網頁基礎知識]（https://kknews.cc/code/2v4zarz.html）
+ [HTML5常用基本標籤](https://kknews.cc/zh-tw/code/avqgrpg.html)
+ [HTML5 基礎語法](https://jerrylin.blog/code-93fdf7ed10d1)
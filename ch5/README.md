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
            ```html
            <meta charset="UTF-8">
            ```
         2. http-equiv : 將資訊寫給瀏覽器看，要求瀏覽器執行，可選屬性值
            1. Content-Type：文件類型
            2. refresh：網頁定時刷新
            3. set-cookie：設置瀏覽器cookie，需要配合content屬性使用。http-equiv屬性只是表明需要設置哪一部分，具體的設置內容，放到content屬性中
            4. name屬性：使用方法如同「http-equiv」。將資訊寫給搜尋引擎看！常用且需要掌握的屬性值：
               1. author：作者
               2. keywords：網頁關鍵字
               3. description：網頁描述


#### CSS3 基本語法
#### Bootstrap 4 框架基本語法
#### 參考文獻
+ [W3 School](https://www.w3schools.com/) 
+ [網頁基礎知識]（https://kknews.cc/code/2v4zarz.html）
+ 
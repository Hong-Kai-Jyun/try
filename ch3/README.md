### 第三章 MySQL 操作與 SQL 語法
#### 安裝 MySQL 
+ Linux 平台安裝 MySQL Server
  + 利用 YUM 進行安裝
    <pre><code>#yum install mysql mysql-server
    </code></pre>
  + 修改設定檔 /etc/my.cnf
    <pre><code>#vim /etc/my.cnf
    [mysqld]
    default-authentication-plugin=mysql_native_password</code></pre>
  + 啟動 MySQL 服務，並修改預設密碼
    <pre><code>#systemctl start mysqld
    #mysql_secure_installation
    #firewall-cmd --add-service=mysql
    #firewall-cmd --runtime-to-permanent
    #systemctl restart mysqld</code></pre>

+ Linux 平台安裝 phpMyAdmin 管理程式
  + 到 phpMyAdmin 官網取得檔案
  　<pre><code>#cd /usr/share/nginx/html
  #wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-all-languages.tar.gz</code></pre>
  + 解開壓縮檔
    <pre><code>#tar zxvf phpMyAdmin-4.9.1-all-languages.tar.gz
    #mv phpMyAdmin-4.9.1-all-languages phpMyAdmin</code></pre>
  + 回復 selinux 設定
    <pre><code>#restorecon -Rvv /usr/share/nginx/html</code></pre>
  + 修改 phpMyAdmin 設定檔
    <pre><code>#cd phpMyAdmin
    #cp config.sample.inc.php config.inc.php
    #vim config.inc.php
    $cfg['blowfish_secret'] = md5($srcret_string.date("Ymd",time()));
    </code></pre>
  + 打開瀏覽器，以 root 身份登入！
  
+ Windows 平台安裝 MySQL Workbench
  + 下載網址 [MySQL Community Downloads](https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-8.0.18-winx64.msi)
  + 下載後，直接安裝！
  + 開啟程式後，設定連接資料庫的 IP 位置以及帳密
  
#### 資料收集與整理
+ 資料收集與整理
  1. 將需要的資料收集
  2. 將資料內容分類定出名稱
  3. 利用表格將資料整理好
  4. 收集好表格，即可形成資料庫
+ 資料表正規化
  + 正規化(Normalization)：建構「資料模式」所運用的一個技術
    + 讓資料庫中重複的欄位資料減到最少，並且能快速的找到資料，以提高關聯性資料庫的效能
    + 降低資料的「重覆性」(Data Redundancy)與避免「更新異常」(Anomalies)的情況發生
    + 正規化過程為一循序過程！
  + 第一正規化(1NF):除去重複群
    + 在資料表中的所有記錄之屬性內含值都是基元值(Atomic Value)
    + 沒有任何兩筆以上的資料是完全重覆
    + 資料表中有主鍵, 而其他所有的欄位都相依於「主鍵」
  + 第二正規化(2NF):除去部分相依
    + 符合1NF
    + 每一非鍵屬性，必須「完全相依」於主鍵
      + step1:檢查是否存在「部分功能相依」
      + step2:將「部分功能相依」的欄位分割出去，另外組成新的資料表
  + 第三正規化(3NF):除去遞移相依
    + 符合2NF
    + 各欄位與「主鍵」之間沒有「遞移相依」的關係
      + 遞移相依:與主鍵無關的相依性
      + step1:檢查是否存在「遞移相依」
      + step2:將「遞移相依」的欄位「分割」出去，再另外組成「新的資料表」
  + Boyce\-Codd 正規化(BCNF):除去其他因功能相依所造成的異常
    + 一般的應用程式所需的最高階正規化形式
    + 符合 3NF 的格式，為 3NF 的改良式
    + 如果資料表的「主鍵」是由「多個欄位」組成的, 則必須再執行 Boyce-Codd 正規化
    + 如果資料表的「主鍵」只由「單一欄位」組合而成, 則符合 3NF 的資料表, 亦符合 BCNF(Boyce-Codd Normal Form)正規化
    + 例:
    
      |客戶編號|產品編號|消費金額|
      |:---:|:---:|:---:|
  + 第四正規化(4NF):除去多值相依
  + 第五正規化(5NF):除去剩下所有的異常
+ 回家作業：
  + 收集自己專案的相關資料
  + 利用正規化規則，完成資料表定義
#### MySQL 基本操作
+ SQL 語法認知
  + DCL
  + DML
  + DDL
+ 資料庫內可接受的資料類型
  + 
+ 操作資料庫與資料表
  + 資料庫建立與收集資料流程相反
    1. 先建立資料庫
    2. 在資料庫內建資料表
    3. 在資料表內建欄位
    4. 在欄位內填入資料
  + 常用指令列表：
    ||資料庫|資料表|
    |:---:|:---:|:---:|
    |新增|CREATE DATABASE|CREATE TABLE|
    |修改|ALTER DATABASE|ALTER TABLE|
    |刪除|DROP DATABASE|DROP TABLE|
    |查詢|SHOW DATABASE|SHOW COLUME|
  + 操作範例：
  　<pre><code>#mysql -u root -p
  \>SHOW DATABASES;
  \>CREATE DATABASE cars;
  \>USE cars;
  \>CREATE TABLE customers {
  \>
  \> };</code></pre>
+ 操作資料內容
+ 操作資料庫系統
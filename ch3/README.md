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
+ Windows 平台安裝 MySQL Workbench

#### 資料收集與整理
+ 資料收集與整理
  + 將需要的資料收集
  + 將資料內容分類定出名稱
  + 利用表格將資料整理好
+ 資料表正規化
#### MySQL 基本操作
+ SQL 語法認知
+ 操作資料庫與資料表
+ 操作資料內容
+ 操作資料庫系統
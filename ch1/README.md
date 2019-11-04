### 第一章 環境建置
#### 正式環境建置
+ 安裝與使用虚擬機軟體
  + 下載 [VirtualBox](https://www.virtualbox.org)
    + 官網：https://www.virtualbox.org 
  + 安裝 VirtualBox
  + 新增虚擬機與調整設定
    + 注意目錄設定
    + 注意網路設定
      + Bridge 橋接設定
      + NAT 網路轉址方式
      + 網路卡與內部網路設定
    + 注意 USB 設定
+ 安裝與設定 Linux 作業系統
  + 安裝 [CentOS 8 Linux](https://www.centos.org/) 作業系統
    + 官網：https://www.centos.org/
  + 設定網路組態與遠端控制
    + 使用 nmtui 文字介面
    + 使用 「設定」-> 「網路」進行設定
    + 開啟 sshd 服務（預設開啟）
      + Windows 作業系統中，可使用 [putty](https://www.putty.org/) 進行連線
    + 開啟 xrdp 遠端桌面服務
      1. #yum install epel-release
      2. #yum install xrdp
      3. #systemctl start xrdp
      4. #systemctl enable xrdp (指定開機時啟動服務)) 

#### 開發環境建置
+ 安裝開發工具 [VSCode](https://code.visualstudio.com/docs/?dv=win) 
  + 官網: https://code.visualstudio.com/docs/?dv=win
  + VSCode 基本操作與使用
    + 安裝 PHP 程式语言開發模組

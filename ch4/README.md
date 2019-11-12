### 第四章 Git 版控與 GitHub 的應用
#### 版控的觀念與使用
+ 關於版本控制
  + 版本控制是一個能夠記錄一個或一組檔案在某一段時間的變更，使得讀者以後能取回特定版本的系統。
  + 使用者幾乎可以針對電腦上任意型態的檔案做版本控制。
  + 若使用者是繪圖或網頁設計師且想要記錄每一版影像或版面配置，採用版本控制系統 (VCS) 做這件事是非常明智的。
+ 本地端版本控制
  + 不建議使用檔案複製方式進行版本控制
  + 本地端版本控制流程圖
    + ![本地端版本控制流程](img/1.png)
  + 這種版本控制工具中最流行的是 *rcs*，目前仍存在於許多電腦。
    + 此工具基本上以特殊的格式記錄修補集合 (patch set，即檔案從一個版本變更到另一個版本所需資訊)，並儲存於磁碟上。
+ 集中式版本控制系統
  + 接下來遇到的主要問題是需要在多種其它系統上的開發協同作業。
  + 集中式版本控制系統 (Centralized Version Control Systems，簡稱CVCSs) 被發展出來。
  + 如：CVS, Subversion 及 Perforce 皆具備單一伺服器，記錄所有版本的檔案，且有多個客戶端從伺服器從伺服器取出檔案。
  + 集中式版本控制系統流程圖
    + ![集中式版本控制系統](img/2.png)
  + 優點：
    + 每個人皆能得知其它人對此專案做了些什麼修改有一定程度的瞭解。
    + 管理員可調整存取權限，限制各使用者能做的事。
    + 維護集中式版本控制系統也比維護散落在各使用者端的資料庫來的容易。
  + 缺點：
    + 如果伺服器當機一個小時，在這段時間中沒有人能進行協同開發的工作或者將變更的部份傳遞給其他使用者。
    + 如果伺服器用來儲存資料庫的硬碟損毀，就沒有相關的備份資料。
    + 如果伺服器故障，除了使用者已取到本地端電腦的版本外，包含該專案開發的歷史的所有資訊都會遺失。
  + 分散式版本控制系統
    + 分散式版本控制系統 (Distributed Version Control Systems, 簡稱DVCSs) 
    + 如：Git, Mercurial, Bazaar、Darcs
    + 客戶端不只是取出最後一版的檔案，而是完整複製整個儲存庫。
    + 整個系統賴以運作的電腦損毀，皆可將任何一個客戶端先前複製的資料還原到伺服器。
    + 分散式版本控制系統流程圖
      + ![分散式版本控制系統](img/3.png)
    + 優點：
      + 使用者能同時與許多不同群組的人們協同開發同一個專案。
      + 允許使用者設定多種集中式系統做不到的工作流程，如：階層式模式。
+ Git 基礎要點
  + 記錄檔案快照，而不是差異
    + Git 將檔案儲存，視為小型檔案系統的一組快照（Snapshot）。
    + 每當提交（commit）時，Git 會紀錄下所有目前檔案的樣子，並且參照到這次快照中。
    + 為了講求效率，只要檔案沒有變更，Git 不會再度儲存該檔案，而是直接將上一次相同的檔案參照到這次快照中。
    + [Git將檔案存成許多次的快照]
      + ![Git將檔案存成許多次的快照](img/4.png)
  + 大部份的操作皆可在本地端完成
    + 大部份 Git 的操作皆只需要本地端的檔案及資源即可完成，通常並不需要網路上其它電腦的資訊。
    + 想要瀏覽專案的歷史時，Git 不需要到伺服器下載歷史再顯示，就只需要從本機的資料庫讀取。
    + 等可連上網路時，再從本機連至伺服器，更新軟體版本！
  + Git 能檢查完整性
    + 在 Git 中所有的物件在儲存前都會被計算校驗碼（checksum）並以校驗碼參照物件。
    + Git 用來計算校驗碼的機制稱為 SHA-1 雜湊演算法。
    + 一個校驗碼是由 40 個 16 進位的字母（0-9 和 a-f）所組成，Git 會根據檔案的內容和資料夾的結構來計算。
    + Git 中到處都看到校驗碼，因為校驗碼被 Git 到處使用。
  + Git 通常只增加資料
    + 當使用 Git 時，幾乎所有的動作都只是增加資料到Git的資料庫。
    + 只要提交快照到 Git 後，很難會發生遺失的情況!
  + 三種狀態
    + Git 會把檔案標記為三種主要的狀態：已提交（committed）、已修改（modified）及已預存（staged）。
      + 已提交代表這檔案己安全地存在本地端資料庫。
      + 己修改代表這檔案已被修改但尚未提交到本地端資料庫。
      + 已預存代表這檔案將會被存到下次提交的快照中。
    + Git 專案的三個主要區域：Git 資料夾、工作目錄（working directory）以及預存區（staging area）。
      + ![Git 三個主要區域](img/5.png)
      + Git 資料夾是 Git 用來儲存專案的後設資料及物件資料庫的地方。
      + 工作目錄是專案被檢出的某一個版本。
      + 預存區是一個單一檔案，一般來說放在 Git 目錄下，儲存關於下次提交的資訊。 有時它會稱為索引「index」，但現在更常被稱呼為預存區。
    + 基本 Git 工作流程大致如下：
    　1. 在工作目錄修改檔案。
    　2. 預存檔案，將檔案的快照新增到預存區。
    　3. 做提交的動作，這會讓存在預存區的檔案快照永久地儲存在 Git 目錄中。

#### 使用 Git 指令
+ 初次設定 Git
  + Git 附帶一個名為 git config 的工具，讓使用者能夠取得和設定組態參數。
  + 這些參數被存放在下列三個地方：
    + 檔案 /etc/gitconfig：裡面包含該系統所有使用者和使用者倉儲的預設設定。如果傳遞 --system 參數給 git config，就會明確地從這個檔案讀取或寫入設定。
    + 檔案 ~/.gitconfig、~/.config/git/config：使用者帳號專用的設定。只要傳遞 --global，就會明確地讓 Git 從這個檔案讀取或寫入設定！
    + 任何倉儲中 Git 資料夾的 config 檔案（位於 .git/config）：這個倉儲的專用設定。
    + 每個層級的設定皆覆蓋先前的設定，所以在 .git/config 的設定優先權高於在 /etc/gitconfig 裡的設定。
  + 設定識別資料
    + 安裝 Git 後首先應該做的事是設定使用者名稱及電子郵件。
    + 設定指令：(文字介面中的使用方式)
      <pre><code>$ git config --global user.name "John Doe"
      $ git config --global user.email johndoe@example.com</code></pre>
  + 指定編輯器
    + 可設定預設的文書編輯器，當 Git 需要使用者輸入訊息時會使用它。
    + 預設情況下，Git 會使用系統預設的編輯器。
    + 可手動修改：(Linux)
    　<pre><code>$ git config --global core.editor emacs</code></pre>
    + 可手動修改：(Windows)
    　<pre><code>$ git config --global core.editor "'C:/Program Files(x86)/Notepad++/notepad++.exe' -multiInst -nosession"</code></pre>
  + 檢查讀者的設定
    + 使用命令列出 Git 在目前位置能找到的設定值：
    　<pre><code>$ git config --list
    $ git config user.name</code></pre>
  + 取得說明文件
    + 使用說明文件的方法：
    　<pre><code>$ git help \<verb\>
    $ git \<verb\> --help
    $ man git-\<verb\>
    $ git help config</code></pre>
+ 取得一個 Git 倉儲
  + 有兩種主要方法來取得一個 Git 倉儲。
    + 將現有的專案或者資料夾匯入 Git
    + 從其它伺服器克隆（clone）一份現有的 Git 倉儲。
  + 在現有資料夾中初始化倉儲
    + 只需要進入該專案的資料夾並執行：<pre><code>$ git init</code></pre>
      + 這個命令將會建立一個名為 .git 的子資料夾，其中包含 Git 所有必需的倉儲檔案，也就是 Git 倉儲的骨架。
    + 如果專案資料夾原本已經有檔案（不是空的），那麼應該馬上追蹤這些原本就有的檔案，然後進行第一次提交。<pre><code>$ git add .
  $ git commit -m 'initial project version'</code></pre>
  + 克隆現有的倉儲
    + 
#### 使用 GitHub 站台儲放程式碼
#### 使用 MarkDown 語法
#### 參考文獻
##### MarkDown
+ [Markdown 語法說明](https://markdown.tw/#code)
+ [如何使用 Markdown 來撰寫 Docs](https://docs.microsoft.com/zh-tw/contribute/how-to-write-use-markdown)
##### Git
+ [Git 官網說明](https://git-scm.com/book/zh-tw/v2)
+ [開始程式碼版控](https://ithelp.ithome.com.tw/articles/10202278)
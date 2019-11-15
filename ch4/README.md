### 第四章 Git 版控與 GitHub 的應用
#### 版控的觀念與使用
+ 關於版本控制
  + 版本控制是一個能夠記錄一個或一組檔案在某一段時間的變更，使得讀者以後能取回特定版本的系統。
  + 使用者幾乎可以針對電腦上任意型態的檔案做版本控制。
  + 若使用者是繪圖或網頁設計師且想要記錄每一版影像或版面配置，採用版本控制系統 (VCS) 做這件事是非常明智的。
+ 本地端版本控制
  + 不建議使用檔案複製方式進行版本控制
  + 本地端版本控制流程圖
  
     ![本地端版本控制流程](img/1.png)
  + 這種版本控制工具中最流行的是 *rcs*，目前仍存在於許多電腦。
    + 此工具基本上以特殊的格式記錄修補集合 (patch set，即檔案從一個版本變更到另一個版本所需資訊)，並儲存於磁碟上。
+ 集中式版本控制系統
  + 接下來遇到的主要問題是需要在多種其它系統上的開發協同作業。
  + 集中式版本控制系統 (Centralized Version Control Systems，簡稱CVCSs) 被發展出來。
  + 如：CVS, Subversion 及 Perforce 皆具備單一伺服器，記錄所有版本的檔案，且有多個客戶端從伺服器從伺服器取出檔案。
  + 集中式版本控制系統流程圖
  
     ![集中式版本控制系統](img/2.png)
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

       ![分散式版本控制系統](img/3.png)
    + 優點：
      + 使用者能同時與許多不同群組的人們協同開發同一個專案。
      + 允許使用者設定多種集中式系統做不到的工作流程，如：階層式模式。
  
+ Git 基礎要點
  + 記錄檔案快照，而不是差異
    + Git 將檔案儲存，視為小型檔案系統的一組快照（Snapshot）。
    + 每當提交（commit）時，Git 會紀錄下所有目前檔案的樣子，並且參照到這次快照中。
    + 為了講求效率，只要檔案沒有變更，Git 不會再度儲存該檔案，而是直接將上一次相同的檔案參照到這次快照中。
    + Git將檔案存成許多次的快照
  
       ![Git將檔案存成許多次的快照](img/4.png)
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
      
       ![Git 三個主要區域](img/5.png)
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
    + 檔案 \~/.gitconfig、\~/.config/git/config：使用者帳號專用的設定。只要傳遞 --global，就會明確地讓 Git 從這個檔案讀取或寫入設定！
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
    + 取得現有 Git 倉儲的複本:<pre><code>$ git clone \<url\></code></pre>
    + 例：<pre><code>$ git clone https://github.com/libgit2/libgit2 </code></pre>
      + 這指令將會建立名為「libgit2」的資料夾，並在這個資料夾下初始化一個 .git 資料夾，從遠端倉儲拉取所有資料，並且取出（checkout）專案中最新的版本。
      + 若想要將倉儲克隆到「libgit2」以外名字的資料夾，只需要再多指定一個參數即可：<pre><code>$ git clone https://github.com/libgit2/libgit2 mylibgit</code></pre>

+ 紀錄變更到版本庫中
  + 每當修改檔案到一個想記錄它的階段時，就需要提交（commit）這些變更的快照到版本庫中。
  + 工作目錄下的每個檔案不外乎兩種狀態：已追蹤、未追蹤。
    + 「已追蹤」檔案是指那些在上次快照中的檔案：它們的狀態可能是「未修改」、「已修改」、「已預存（staged）」
    + 「未追蹤」則是其它以外的檔案—在工作目錄中，卻不包含在上次的快照中，也不在預存區（staging area）中的任何檔案
    + 檔案狀態的生命週期：
  
       ![檔案狀態的生命週期](img/6.png)
    + 當第一次克隆（clone）一個版本庫時，所有檔案都是「已追蹤」且「未修改」，因為 Git 剛剛檢出它們並且尚未編輯過任何檔案。
  + 檢查檔案狀態
    + **git status** 命令是用來偵測哪些檔案處在什麼樣的狀態下的主要工具
  + 追蹤新的檔案
    + 例：新增一個 README 檔案
      <pre><code>#git add README
      #git status</code></pre>
      + 可以看到 README 檔案現在是準備好被提交的「已追蹤」和「已預存」狀態
      + 若再次修改 README 檔案後，需要再次使用 **git add** 指令，將檔案再次列入「已追蹤」和「已預存」狀態
  + 忽略不需要的檔案
    + 編寫 .gitignore 檔案，在該檔中列舉符合這些檔名的模式（pattern），可忽略不需提交的檔案！
    + 編寫 .gitignore 檔案的模式規則如下：
      + 空白列，或者以 # 開頭的列會被忽略。
      + 可使用標準的 Glob 模式。
      + 以斜線（/）開頭以避免路徑遞迴。
      + 以斜線（/）結尾代表是目錄。
      + 以驚嘆號（!）開頭表示將模式規則反向。
      + 例：
        <pre><code>#不要追蹤檔名為 .a 結尾的檔案
        *.a
        
        #但是要追蹤 lib.a，即使上面已指定忽略所有的 .a 檔案
        !lib.a
        
        #只忽略根目錄下的 TODO 檔案，不包含子目錄下的 TODO
        /TODO
        
        #忽略 build/ 目錄下所有檔案
        build/
        
        #忽略 doc/notes.txt，但不包含 doc/server/arch.txt
        doc/*.txt
        
        #忽略所有在 doc/ 目錄底下的 .pdf 檔案
        doc/**/*.pdf</code></pre>
  + 檢視已預存及未預存的檔案
    + **git diff** 可顯示檔案裡的哪些列被加入或刪除
      + 這命令會比對「工作目錄」和「預存區」之間的版本， 然後顯示尚未被存入預存區的修改內容。
    + 檢視已經預存而接下來將會被提交的內容，可以使用 **git diff --staged**
      + 這個命令比對的對象是「預存區」和「最後一次提交」。
    + 使用 **git diff --cached** 檢視哪些部分是已預存的（--staged 和 --cached 是同義選項）
  + 提交修改
    + 預存區內的檔案，可以利用指令 **git commit** 開始提交
      + 這麼做會啟動選定的編輯器，編寫提交訊息！
      + 使用 **git config --global core.editor** 命令可以指定任何一個想使用的編輯器！
    + 尚未用 **git add** 預存的—將不會納入本次的提交中
    + 可在 **git commit** 命令的 -m 選項後方直接輸入提交訊息
      + 例：<pre><code>#git commit -m "Hello Kitty"</code></pre>
  + 移除檔案
    + 要從 Git 中刪除一個檔案，需要將它從已追蹤檔案中移除，然後再提交
    + 例：<pre><code>#rm README
      #git status
      #git rm READE
      #git status</code></pre>
  + 移動檔案
    + Git 可以在檔案移動後很聰明地將它們找出來
    + 例：<pre><code>#git mv README README.md
      #git status</code></pre>

#### 使用 GitHub 站台儲放程式碼
+ 與遠端協同工作
  + 遠端版本庫是指被託管在網際網路或其他網路中的各種專案版本庫。
  + 與其它人協同工作包括：「管理」遠端版本庫、以及將分享的資料「推送（push）」到端遠版本庫、或者從遠端版本庫「拉取（pull）」分享的資料。
  + 管理遠端版本庫則包括了了解如何：「新增」遠端版本庫、「移除」不再有效的遠端版本庫、管理各式各樣的「遠端分支」、定義遠端分支是否被「追蹤」等等。

+ 顯示遠端
  + 使用 **git remote** 命令可以檢視已經設定好的遠端版本庫，它會列出每個遠端版本庫的「簡稱」。
  + 看到「origin」—表示是 Git 給定的預設簡稱
  + 例：<pre><code>#cd PHPExercise
    #git remote -v</code></pre>
    
+ 新增遠端版本庫
  + 執行 **git remote add <簡稱> \<url\>** 來新增:
    <pre><code>#git remote add phpexerise https://github.com/antallen/PHPexerise.git
    #git remote -v
    phpexerise	https://github.com/antallen/PHPexerise.git (fetch)
    phpexerise	https://github.com/antallen/PHPexerise.git (push)
    </code></pre>
  + 從遠端版本庫中取得所有資訊，而這些資訊並不存在於本地端的版本庫中：
    <pre><code>#git fetch phpexerise
    From https://github.com/antallen/PHPexerise
    * [new branch]      master     -> phpexerise/master
    </code></pre>
  + 
#### 使用 MarkDown 語法
#### 參考文獻
##### MarkDown
+ [Markdown 語法說明](https://markdown.tw/#code)
+ [如何使用 Markdown 來撰寫 Docs](https://docs.microsoft.com/zh-tw/contribute/how-to-write-use-markdown)
##### Git
+ [Git 官網說明](https://git-scm.com/book/zh-tw/v2)
  + [舊版的官網](https://git-scm.com/book/zh-tw/v1/%E9%96%8B%E5%A7%8B)
+ [開始程式碼版控](https://ithelp.ithome.com.tw/articles/10202278)
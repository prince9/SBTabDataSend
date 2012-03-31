★Storyboardを使って次のタブへデータを送っています。しかし、タブを切り替えた瞬間にデータの送信を行っているのではなく、「dataSend」というRound Rect Buttonを押すことでデータの送信を行っています。タブ切り替えとは異なるタイミングでデータを送りたい、データ送信ボタンが欲しい!などというときに有効かと思われます。
改変等ご自由にどうぞ。もっと良い方法があればご教授頂けると嬉しいです。

This has sent data to the next Tab using Storyboard.But data is not transmitted at the moment of changing to Tab, the button "dataSend" is pushed and data is transmitted. 


1.Single View Applicationで新規プロジェクトを作る
New project is made(Single View Application). 

2.FirstViewControllerとSecondViewControllerにUIパーツを設置する。データを送信するボタンを忘れずに(次のページへ行くボタンとは別に作ります)
UIpart is arranged.

3.それぞれUIパーツをFirstViewController.hとSecondViewController.hに結びつける
UIpart is connected to FirstViewController.h or SecondViewController.h. 
※本によって意見が分かれる上にAppleのサンプルでもバラバラな気がしますが、メモリ的にはOutletのStorageはStrongではなくweakのほうがいいらしい

4.AppDelegate.hと.mに//追加と書かれている部分を書く
AppDelegate.h and .m add code.

5.FirstViewController.mに//追加と書かれている部分を書く
ViewController.m add code.

6.SecondViewController.mに//追加と書かれている部分を書く。このとき- (void)viewDidLoadではなく- (void)viewWillAppear:(BOOL)animatedに処理を書く(TabBar限定)
SecondViewController.m add code.
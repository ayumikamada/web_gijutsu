# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  get = cgi['goya_givefor']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>入力情報は下記になります</p>
      文字列：#{get}
    </body>
  </html>"
}
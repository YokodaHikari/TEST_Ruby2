require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値(1 or 2)を取得し、数字へ変換しています

if memo_type==1
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp #文字列の末尾の改行コードを削除
  
  puts "メモしたい内容を記入してください"
  puts "完了後、Ctrl + Dを押します"
  
  input_memo = STDIN.read 
  memo = input_memo.chomp 
  
  CSV.open("#{file_name}.csv","w") do |csv| 
    csv << ["#{memo}"]
  end 
  
  elsif memo_type==2
  puts "拡張子を除いたファイル名を入力してください"
  file_name = gets.chomp #文字列の末尾の改行コードを削除
 
  puts "編集したい内容を記入してください"
  puts "完了後、Ctrl + Dを押します"
    
  input_memo = STDIN.read 
  memo = input_memo.chomp 
  
    CSV.open("#{file_name}.csv","w") do |csv| 
    csv << ["#{memo}"]
 end 
 end 
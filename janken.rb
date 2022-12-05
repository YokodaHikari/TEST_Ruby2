def janken
  
puts "じゃんけん・・・"
puts "[0]:グー\n[1]:チョキ\n[2]:パー\n[3]:戦わない"

player_hand = gets.to_i #自分の手
progrem_hand = rand(3)  #相手の手
jankens = ["グー","チョキ","パー"] #配列を定義

puts "ホイ！"
puts "-------------------------"
puts "私:#{jankens[player_hand]}を出しました"
puts "相手:#{jankens[progrem_hand]}を出しました"
puts "-------------------------"

if player_hand == progrem_hand
  puts "あいこで"
  return janken
 
  elsif (player_hand == 0 && progrem_hand == 1)||(player_hand == 1 && progrem_hand == 2)||(player_hand == 2 && progrem_hand == 0)
    puts "勝ち"
    @janken_resule="win"
   return attimuite_hoi
  
  elsif player_hand == 3
    puts "じゃんけんを終了します"
    
  elsif player_hand >3
    puts "正しい数値を入力してください"
      
 else
    puts "負け"
    @janken_resule="lose"
  return attimuite_hoi
  end   
end

def attimuite_hoi
  
  puts "-------------------------"
  puts "あっちむいて・・・"
  puts "[0]:上\n[1]:下\n[2]:左\n[3]:右"
 
 player_face = gets.to_i #自分の顔の向き
 progrem_face = rand(4) #相手の顔の向き
 directions = ["上","下","左","右"] #配列を定義

puts "ホイ！"
puts "-------------------------"
puts "私:#{directions[player_face]}を出しました"
puts "相手:#{directions[progrem_face]}を出しました"
puts "-------------------------"

if (player_face == progrem_face )&&(@janken_resule=="win")
    puts "あなたの勝ち"
  elsif (player_face == progrem_face )&&(@janken_resule=="lose")
    puts "あなたの負け"
  else
    return janken
  end
end

#「true」が起こった場合、jankenメゾットを繰り返す
  next_game = true
    while  next_game
      next_game = janken
    end

#「false」が起こった場合、attimuite_hoiメゾットを繰り返す
  attimuitehoi = false
      while  attimuitehoi
      attimuitehoi = attimuite_hoi
    end
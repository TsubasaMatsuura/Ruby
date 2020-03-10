class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"
    player_hand = gets.chomp

    while true
      if player_hand == "0" || player_hand == "1" || player_hand == "2"
        return player_hand.to_i
      else
        puts "もう一度数字を入力してください。"
        puts "0:グー, 1:チョキ, 2:パー"
        player_hand = gets.chomp
      end
    end
  end
end

class Enemy
  def hand
    rand(3)
    # enemy_hand = rand(3)
    # enemy_hand
  end
end
# プレイヤー(自分)が入力した「0 ~ 2」と、敵がランダムで生成した「0 ~ 2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
  def pon(player_hand, enemy_hand)

    janken = ["グー", "チョキ", "パー"]
    while true
      if (player_hand - enemy_hand + 3) % 3 == 0
        puts "相手の手は#{janken[enemy_hand]}です。あいこです。"
        return true
      elsif (player_hand - enemy_hand + 3) % 3 == 2
        puts "相手の手は#{janken[enemy_hand]}です。あなたの勝ちです。"
        return false
      elsif (player_hand - enemy_hand + 3) % 3 == 1
        puts "相手の手は#{janken[enemy_hand]}です。あなたの負けです。"
        return false
      end
   end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

next_game = true
while next_game
  next_game =janken.pon(player.hand, enemy.hand)
end

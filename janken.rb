class Player
  def hand
    puts "数字を入力してください。"
    puts "0:グー, 1:チョキ, 2:パー"

    while true

      input_hand = gets.chomp
      hands = ["0","1","2"]

        if hands.include?(input_hand)
          break
        end

      puts "0〜2の数字を入力してください。"
      puts "0:グー, 1:チョキ, 2:パー"

    end
    input_hand = input_hand.to_i
  end
end

class Enemy
  def hand

    return rand(0..2)
  end
end

class Janken

  def pon(player_hand, enemy_hand)

    janken = ["グー", "チョキ", "パー"]

    puts "相手の手は#{janken[enemy_hand]}です。"

    if (player_hand === enemy_hand)

      puts "あいこ"

      true

    elsif ((player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0))

      puts "あなたの勝ちです"

      false

    else

      puts "あなたの負けです"

      false

    end
  end
end

class GameStart

  def self.jankenpon

    player = Player.new

    enemy = Enemy.new

    janken = Janken.new

    next_game = true

    while next_game

      next_game = janken.pon(player.hand, enemy.hand)

    end
  end
end

GameStart.jankenpon

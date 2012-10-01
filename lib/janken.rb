require "./ken.rb"
require "./input.rb"

$win = 0
$even = 0
$lose = 0

class Janken
  def initialize(input)
    
    yours = Ken.new input.chomp
    mine = Ken.new
    print "    #{yours.to_s} vs #{mine.to_s}   "
    
    case yours.fight(mine)
    when 1
      $win += 1
      puts "you win!"
    when 0
      $even += 1
      puts "even"
    when -1
      $lose += 1
      puts "you lose..."
    end
  end
end

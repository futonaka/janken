class Input < String
  
  def exit?
    self =~ /exit|quit|q/
  end
  
  def gu?
    self =~ /gu|g/
  end
  
  def choki?
    self =~ /choki|c/
  end
  
  def pa?
    self =~ /pa|p/
  end
  
  def right?
    self.gu? || self.choki? || self.pa?
  end
end

# 拳クラス
class Ken

  GU = 0
  CHOKI = 1
  PA = 2

  def initialize(input = nil)
    # 引数無しの場合はランダム
    if input.nil?
      @v = rand(100) % 3
    else
      if input.gu?
        @v = GU
      elsif input.choki?
        @v = CHOKI
      elsif input.pa?
        @v = PA
      end
    end
  end
  
  def to_s
    case @v
    when GU
      "g"
    when CHOKI
      "c"
    when PA
      "p"
    end
  end
  
  def value
    @v
  end
  
  def fight(other)
    # 大小比較する。差が2以上の場合は小さい方に3を足して比較
    self_value = self.value
    other_value = other.value
    
    if (other.value - self.value).abs > 1
      if other.value > self.value
        self_value = self.value + 3
      else
        other_value = other.value + 3
      end
    end
    
    other_value <=> self_value
  end
end

# enjoy!

puts "input g or c or p or exit."

while text = gets
  input = Input.new(text)
  break if input.exit?
  next unless input.right?
  
  yours = Ken.new input.chomp
  mine = Ken.new
  print "    #{yours.to_s} vs #{mine.to_s}   "
  
  case yours.fight(mine)
  when 1
    puts "you win!"
  when 0
    puts "even"
  when -1
    puts "you lose..."
  end
end

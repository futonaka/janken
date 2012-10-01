# 拳クラス
class Ken

  GU = 0
  CHOKI = 1
  PA = 2
  
  attr :v

  def initialize(input = nil)
    # 引数無しの場合はランダム
    if input.nil?
      @v = rand 3
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
  
  def fight(other)
    # 大小比較する。差が2以上の場合は小さい方に3を足して比較
    self_value = self.v
    other_value = other.v
    
    if (other.v - self.v).abs > 1
      if other.v > self.v
        self_value = self.v + 3
      else
        other_value = other.v + 3
      end
    end
    
    other_value <=> self_value
  end
end

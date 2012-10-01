class Input < String
  
  def exit?
    self =~ /^(exit|quit|q)$/
  end
  
  def gu?
    self =~ /^(gu|g)$/
  end
  
  def choki?
    self =~ /^(choki|c)$/
  end
  
  def pa?
    self =~ /^(pa|p)$/
  end
  
  def right?
    self.gu? || self.choki? || self.pa? || self.exit?
  end
end

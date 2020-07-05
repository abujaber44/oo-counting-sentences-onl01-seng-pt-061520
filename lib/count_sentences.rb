require 'pry'

class String

  def sentence?
    if self.end_with? "." ; return true
    else
      return false
    end
  end

  def question?
    if self.end_with? "?" ; return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with? "!" ; return true
    else
      return false
    end
  end

  def count_sentences
    x = self.split(/\?|\.|!/)
    y = x.delete_if {|e| e=~/^\d*$/}.count 
    if y != 0 ; return y
    else
      return 0
   end
end

end


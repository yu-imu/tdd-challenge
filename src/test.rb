require'pry'
class Area
  def int?
    true
  end

  def caluculate(r)
    pi = Math::PI
    @area = r*r*pi
  end

  def shisya(area)
    area.round(0)
  end

   def to_list(input)
     input.read.split('\n').map {|line| line.to_f}
   end
end

# class Stack
#   def empty?
#     true
#   end
#   def push
#
#   end
# end

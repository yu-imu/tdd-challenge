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
    return area.round(0)
  end

   def get_r
     r = gets.to_i
     Area.caluculate()
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

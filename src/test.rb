require'pry'
class Area
  def outPut(output, r)
    r.each do |result|
      output.puts result
    end
  end

  def caluculate(r)
    pi = Math::PI
    result = r*r*pi
    result.round(0)
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

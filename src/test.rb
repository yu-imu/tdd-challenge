require'pry'
class Reader
  def readerlines
    readlines
  end
end

class Writer
  def outPut(caluculate_results)
    caluculate_results.each do |caluculate_result|
    puts caluculate_result
    end
  end
end

class Main

  def main(reader, writer)
    lines = reader.readerlines
    result = lines.map { |r|
    self.caluculate(r.to_i)  }
    writer.outPut(result)
  end

  def caluculate(r)
    pi = Math::PI
    r = set_int(r)
    result = r*r*pi
    result.round(0)
  end

  def set_int(r)
    r.to_f ? r.to_f : false
  end
end

 action = Main.new
 reader = Reader.new
 writer = Writer.new
 action.main(reader, writer)

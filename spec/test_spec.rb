require 'spec_helper'
require 'stringio'

describe '標準入力' do
  let(:sio) { StringIO.new('1\n2\n3\n3.4') }

  it '入力が数値の配列になる' do
    area = Area.new
    expect(area.to_list(sio)).to eq([1, 2, 3, 3.4])
  end
end


describe '円の面積' do
  area = Area.new

  it '計算実行' do
    r = [1, 2, 3, 3.4]
    pi=Math::PI
    r.each do |num|
      num  = num.to_i
      expect(area.caluculate(num)).to be num*num*pi
    end
  end

  it '値を丸めるて配列で返す' do
    r = [1, 2, 3, 3.4]
    # binding.pry
    r.each do |num|
      num  = num.to_i
      s = area.caluculate(num)
      expect(area.shisya(s)).to be s.round(0)
    end
  end

end


# describe 'Stackは空？' do
#   it 'stackが空の時' do
#     stack = Stack.new
#     expect(stack.empty?).to be true
#   end
#
#   it 'stackが空ではない時' do
#
#
#   end
# end
#
# describe 'stackの操作' do
#   it 'pushの実装' do
#     stack = Stack.new
#     expect(stack.push("hoge")).to be "hoge"
#   end
#   it 'popの実装' do
#     stack = Stack.new
#     expect(stack.pop).to be nil
#   end
# end

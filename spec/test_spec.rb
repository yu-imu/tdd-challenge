require 'spec_helper'
require 'stringio'


describe '円の面積' do
  area= Main.new
  it '数値に変換される' do
    result = [10, "250", "100", "1.5"]
    new_result = []
    result.each do |num|
      new_result << area.set_int(num)
    end
    expect(new_result).to eq([10, 250, 100, 1.5])
  end
  it '計算実行' do
    pi=Math::PI
    result = [10, 250, 100, 1.5]
    new_result = []
    result.each do |num|
      new_result << area.caluculate(num)
    end
    expect(new_result).to eq([314, 196350, 31416, 7])
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

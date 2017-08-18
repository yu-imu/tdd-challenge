require 'spec_helper'

describe '円の面積' do
  area = Area.new
  it '計算実行' do
    r = 20
    pi=Math::PI
    expect(area.caluculate(r)).to be r*r*pi
  end

  it '値を丸める' do
    r = 20
    pi=Math::PI
    s = area.caluculate(r)
    binding.pry
    expect(area.shisya(s)).to be r*r*pi.round(0)
  end

  describe '少数で' do
    it '切り捨てる時'do
      area = 10.1
      expect(area.int?).to be false

    end

    it '切り上げる時' do
      area = 10.5
      expect(area.int?).to be false
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

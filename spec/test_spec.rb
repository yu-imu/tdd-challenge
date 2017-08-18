require 'spec_helper'

describe '円の面積が' do
  it '整数の時' do
    area = 20
    expect(area.int?).to be true
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

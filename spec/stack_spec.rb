require 'spec_helper'
require 'stringio'

describe 'stack' do
  stack = Stack.new
  it '空かどうか?' do
    expect(stack.isEmpty).to eq true
  end

  it '中身が入っている場合' do
    stack = Stack.new('hoge')
    expect(stack.isEmpty).to eq false
  end
end

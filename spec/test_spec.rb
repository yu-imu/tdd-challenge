require 'spec_helper'

describe 'Stackは空？' do
  it 'stackが空の時' do
    stack = Stack.new
    expect(stack.empty?).to be true
  end
  it 'stackが空ではない時' do
    stack = Stack.new(1)
    expect(stack.empty?).to be true
  end
end

describe 'stackの操作' do
  it 'pushの実装' do
    stack = Stack.new
    expect(stack.push("hoge")).to be "hoge"
  end
  it 'popの実装' do
    stack = Stack.new
    expect(stack.pop).to be nil
  end
end

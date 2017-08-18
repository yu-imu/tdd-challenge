require 'spec_helper'
require 'stringio'

describe '標準入力' do
  let(:sio) { StringIO.new('10\n250\n100\n1.5') }
  it '入力が数値の配列になる' do
    area = Area.new
    expect(area.to_list(sio)).to eq([10, 250, 100, 1.5])
  end
end

describe '円の面積' do
  area=Area.new
  it '計算実行' do
    pi=Math::PI
    result = [10, 250, 100, 1.5]
    new_result = []
    result.each do |num|
      new_result << area.caluculate(num)
    end
    expect(new_result).to eq([314, 196350, 31416, 7])
  end

  it '計算結果の配列が出力される' do
    output = StringIO.new
    r= [314, 196350, 31416, 7]
    area.outPut(output, r)
    expect(output.string).to eq(<<-EOF
314
196350
31416
7
EOF
    )
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

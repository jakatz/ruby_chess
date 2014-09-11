require "chess"
require "pry-byebug"

describe Position do
  let(:position) { Position.new }

  it "initializes properly" do
    expect(position.board).to eq(%w(-)*64)
    expect(position.turn).to eq(:white)
    expect(position.ep).to be_nil
    expect(position.castling).to eq(%w(K Q k q))
    expect(position.halfmove).to eq(0)
    expect(position.fullmove).to eq(1)
  end

  context ".[]" do
    subject { Position["Re4 .. Be1 e2"] }
    expect(subject[:e4].to eq)
  end
end

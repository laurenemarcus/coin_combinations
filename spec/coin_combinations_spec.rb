require('rspec')
require('coin_combinations')

describe("Fixnum#coin_combinations") do
  it("returns the number of quarters change for a given value") do
    expect(50.coin_combinations()).to eq([2, 0, 0, 0])
  end

  it("returns the number of quarters and dimes change for a given value") do
    expect(60.coin_combinations()).to eq([2, 1, 0, 0])
  end

  it("returns the number of quarters, dimes, and nickels change for a given value") do
    expect(65.coin_combinations()).to eq([2, 1, 1, 0])
  end

  it("returns the number of quarters, dimes, nickels, and pennies change for a given value") do
    expect(66.coin_combinations()).to eq([2, 1, 1, 1])
  end
end

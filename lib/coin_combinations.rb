class Fixnum
  define_method(:coin_combinations) do
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

    remainder = self
    if remainder >= 25
      until remainder.<=(24) do
        remainder = remainder - 25
        quarters = quarters.+(1)
      end
    end

    if remainder >= 10
      until remainder.<=(9) do
        remainder = remainder - 10
        dimes = dimes.+(1)
      end
    end

    if remainder >= 5
      until remainder.<=(4) do
        remainder = remainder - 5
        nickels = nickels.+(1)
      end
    end

    if remainder >= 1
      until remainder.<=(0) do
        remainder = remainder - 1
        pennies = pennies.+(1)
      end
    end

    array_coins = [quarters, dimes, nickels, pennies]
  end
end

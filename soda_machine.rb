require_relative 'Soda'

class SodaMachine
  attr_reader :sodas, :cash
  attr_accessor :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    return @sodas.count
  end

  def find_soda(soda_brand)
   if @brand == soda_brand
    @brand
  else
    nil
  end


  end

  def sell(soda_brand)
    @sodas.each do |brand|
    if  soda_brand == brand.to_s
      @cash += Soda.price
    else
      nil
    end
  end
  Soda.price
end

end

#soda = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)


#p @sodas
#p @brand

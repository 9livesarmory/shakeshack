

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake #function to calc the price of a shake

  total_price_of_milkshake = @base_price  #setting variable to base price first

  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake

end



end

class Ingredient  
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end


nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

#puts nizars_milkshake.price_of_milkshake  #6

michelles_shake=MilkShake.new
peanutbutter=Ingredient.new("Peanutbutter",3)
michelles_shake.add_ingredient(peanutbutter)
michelles_shake.add_ingredient(banana)

#puts michelles_shake.price_of_milkshake  #8




class ShakeShop

		def initialize
		@shakepricelist=[]  #empty array to push all shake prices into
		end

		def add_shake(shakename_price)  #function to add each shake price into an array
    	@shakepricelist.push(shakename_price)  #push the shakename price into an array
  		end


	  	def checkout  #function to add all shakename prices and give total
	  		total=0  #start total at 0
	  		 @shakepricelist.each do |shakename_price|  #loop through shakepricelist array
	  		 total+=shakename_price
  			end
  			return total
    	end


end

myShop=ShakeShop.new
myShop.add_shake(nizars_milkshake.price_of_milkshake)  #add shake price to my list of shakes
myShop.add_shake(michelles_shake.price_of_milkshake)   #add shake price o my list of shakes
puts myShop.checkout      #price total of all shakes should output 14

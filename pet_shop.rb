# def pets(pet_shop)
#   return pet_shop[:pets]
# end

require('pry-byebug')


def pet_shop_name(shop)
  return shop[:name]
end



def total_cash(shop)
  return shop[:admin][:total_cash]
end



def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end



def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end 



def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold] 
end



def increase_pets_sold(shop, sold)
  shop[:admin][:pets_sold] += sold
end 




def stock_count(shop)
  return shop[:pets].length
end 




def pets_by_breed(pet_shop, breed) 
  pets_by_breed = []
  for pet in pet_shop[:pets]
    pets_by_breed << pet if pet[:breed] == breed
  end
  return pets_by_breed
end



def pets_by_breed(pet_shop, breed) 
  pets_by_breed = []
  for pet in pet_shop[:pets]
    pets_by_breed.push(pet) if pet[:breed] == breed
  end
  return pets_by_breed
end
#notes w Zjolt
#this function should take in a breed, and check how many appearences there are in the pet list
#check the input_breed against the breed of each pet



def find_pet_by_name(pet_shop, name)
                              # "Arthur"
                              for pet in pet_shop[:pets]
                                if ( name == pet[:name] )
                                  return pet
                                end
                              end
                              return nil 
  #returning nil after the loop means it won't return the first pet name after loop checks. it will run through the whole loop and look for arthur, if it doesn't find arthur it returns nil instead.
end



def find_pet_by_name(pet_shop, name) 
  for pet in pet_shop[:pets]
      if ( name == pet[:name] ) #looking for 'Fred', no key value of fred
        return pet # won't return nil at this point, will return first hash in array which is 'sir percy'
      end
  end
 return nil # this will return nil as expected by test, as it will not find fred. This is after loop runs and then returned. If not here, the test will fail. 
end




def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if ( name == pet[:name] )
      return pet_shop[:pets].delete(pet) 
    end
  end
  return nil
end




def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets] << pet
end



def customer_pet_count(customer)
  customer[:pets].count
end



def add_pet_to_customer(customer, pet)
  return customer[:pets] << pet 
end
# return customer[:pets].push(new_pet)


#optional


def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] == new_pet[:price] 
    return new_pet
  else
    return false
  end
end

# > or >= or == ? 

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] <= new_pet[:price]
    return false
  else
    return true
end




def sell_pet_to_customer(pet, customer)
  customer[:pet] << pet_shop[:pets]
end 


end


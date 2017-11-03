def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pets)
  shop[:admin][:pets_sold] += pets
end

def stock_count(shop)
  value = shop[:pets].length
  return value
end

def pets_by_breed(shop, breed)
  pets = []
  for breed_type in shop[:pets]
    if breed_type[:breed] == breed
      pets.push(breed_type[:breed])
    end
  end
  return pets
end

def find_pet_by_name(shop, name)
  pets = {}
  for name_type in shop[:pets]
    if name == name_type[:name]
      pets = {name: name}
      return pets
    end
  end
  puts pets
end

def remove_pet_by_name(shop, name)
  for remove_pet in shop[:pets]
    if name == remove_pet[:name]
      shop[:pets].delete(remove_pet)
      puts name
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
  return shop[:pets].length
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return customer.length
end

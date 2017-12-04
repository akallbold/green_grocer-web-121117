require 'pry'

def consolidate_cart(cart)
  updated_hash

  cart.each do |item_array|
    item_array.each do |item,item_detail|

      if !updated_hash[item]
        updated_hash[item] = item_detail
        current_item= updated_hash[item]
        current_item[:count] = 1
      else
        current_item= updated_hash[item]
        current_item[:count] += 1
      end
    end
  end
  puts updated_hash
end


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

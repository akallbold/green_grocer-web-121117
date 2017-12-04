require 'pry'

def consolidate_cart(cart)
  updated_hash= {}

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
    updated_hash
end



def apply_coupons(cart, coupons)
  output = {}
binding.pry
coupons.each do |coup_array|
  coup_array.each do |coupons_key,coupons_value|
    cart.each do |item,item_hash|
      item_hash.each do |cart_key,cart_value|
        binding.pry
        if coup_array[:item] == item
          output["AVOCADO W/COUPON"] = {}
          # output[item][:count] -= coupons[:num]
        end
end
      end
    end

  end
  output
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

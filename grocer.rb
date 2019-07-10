def consolidate_cart(cart)
  new_arr = []
  cart.each do |food_hash|
    if new_hash.include?(food_hash)
      food_hash[:count] += 1
    else
      food_hash[:count] = 1
      new_arr << food_hash
    end
  end
  new_arr
end



def apply_coupons(cart, coupons)
  cart.each do |k, v|
    if coupons[:item] = k
      v[:price] = (coupons[:cost] / coupons[:num])
    end
  end
  cart
end

def apply_clearance(cart)
  cart.each do |k, v|
    if v[:clearance] = true
      v[:price] *= 0.80
    end
  end
  cart
end

def checkout(cart, coupons)
  sorted = consolidate_cart(cart)
  apply = apply_coupons(sorted, coupons)
  done = apply_clearance(apply)
  done
end

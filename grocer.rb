def consolidate_cart(cart)
  cart.each_with_object({}) do |item, result|
    item.each do |name, description|
      if !result[name]
        description[:count] = 1
        result[name] = description
      else 
        description[:count] += 1
      end
    end
  end
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

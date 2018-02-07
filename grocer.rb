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
  coupons.each do |coupon|
    item_name = coupon[:item]
    if cart[item_name] && cart[item_name][:count] >= coupon[:num]
      if !cart["#{item_name} W/COUPON"]
        cart["#{item_name} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{item_name} W/COUPON"][:clearance] = cart[item_name][:clearance]
      else 
        cart["#{item_name} W/COUPON"][:count] += 1
      end
    cart[item_name][:count] -= coupon[:num]
    end
  end
  cart
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  # code here
end

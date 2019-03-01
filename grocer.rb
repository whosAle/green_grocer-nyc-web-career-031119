def consolidate_cart(cart)
  result = {}
  cart.each {|item| item.each {|k,v| result.key?(k) ? result[k][:count] += 1 : result.merge!(k => v.merge!(count: 1) ) }}
  result
end

def apply_coupons(cart, coupons)
  # code here
  if coupons.length == 0
    cart
  else
    coupons.each do |coupon|
      if cart.keys.include?(coupon[:item])
        if coupon[:num] <= cart[coupon[:item]][:count]
          item = coupon[:item]
          cart[item+" W/COUPON"] = {price: coupon[:item][:cost], clearance: cart[item][:clearance], count: 1}
          puts cart[item+" W/COUPON"]
          cart[item][:count] -= coupon[:num]
        end
      end
    end
    cart
  end

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

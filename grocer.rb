def consolidate_cart(cart)
  result = {}
  cart.each {|item| item.each {|k,v| result.key?(k) ? result[k][:count] += 1 : result.merge! {k => {v, count: 1} }}
  result
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

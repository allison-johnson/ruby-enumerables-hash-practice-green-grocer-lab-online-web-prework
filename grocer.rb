def consolidate_cart(cart)
  consol_cart = Hash.new
  
  cart.each do |item|
    if consol_cart[item.keys[0]] #Item with that key is already in consol cart
      consol_cart[item.keys[0]][:count] += 1
      
    else #Item with that key is NOT already in consol cart
      item_name = item.keys[0]
      new_consol_cart_item = {}
      new_consol_cart_item[:price] = item[item_name][:price]
      new_consol_cart_item[:clearance] = item[item_name][:clearance]
      new_consol_cart_item[:count] = 1
      consol_cart[item_name] = new_consol_cart_item
  
    end #end if
  end #end each block
  consol_cart
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

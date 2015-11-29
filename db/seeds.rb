# User.create!([
#   {email: "idriyswins@gmail.com", encrypted_password: "$2a$10$tPcQU.mTpdCIuhRDw4heX.btHUnKNqW250h34alWU0ThMxALZQcqi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-11-26 00:56:49", last_sign_in_at: "2015-11-26 00:56:49", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
# ])
Image.create!([
  {image: "http://www.saltypeaks.com/pi/p13921-VolcomSocks.jpg", product_id: 1},
  {image: "http://sev.h-cdn.co/assets/cm/15/08/54e814b221e14_-_sev-secret-santa-santa-socks-lgn.png", product_id: 1},
  {image: "http://www.lovethispic.com/uploaded_images/50496-Cute-Santa-Socks.jpg", product_id: 1},
  {image: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=95319575", product_id: 2},
  {image: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=98553068", product_id: 2},
  {image: "https://s-media-cache-ak0.pinimg.com/236x/47/bd/0a/47bd0a0f816f587925b74350009162bb.jpg", product_id: 3},
  {image: "https://s-media-cache-ak0.pinimg.com/236x/78/fb/0d/78fb0dc37a15d592fa9f29f0b389523b.jpg", product_id: 3},
  {image: "http://cdn6.bigcommerce.com/s-kfeqy/products/2696/images/7648/SOC071_pug_green__36004.1446075311.168.168.jpg?c=2", product_id: 4},
  {image: "http://cdn.shopify.com/s/files/1/0234/4461/products/df90a99b42233bd668d512c3672df4e5fa46ac3c_large.jpeg?v=1431997236", product_id: 4},
  {image: "http://ecx.images-amazon.com/images/I/41-uCXMZuvL.jpg", product_id: 5},
  {image: "http://cdn.sheknows.com/articles/2011/12/sock-gift-candy-cane.jpg", product_id: 5},
  {image: "http://www.artisansocks.com/img/categoryimages/products/sockittome-nutcracker-christmas-socks-1206c1.jpg", product_id: 6},
  {image: "http://ecx.images-amazon.com/images/I/41IyJ52nw8L._AC_UL200_SR160,200_.jpg", product_id: 6},
  {image: "http://cdn.shopify.com/s/files/1/0207/8554/products/Sock_it_to_Me_Franken_Sockster_mens_socks_sockdrawer.com_large.jpeg?v=1444327090", product_id: 6},
  {image: "http://l7.alamy.com/zooms/180e903f68784112a750aeca8e6b0d88/odd-socks-with-christmas-patterns-bxrbkt.jpg", product_id: 7},
  {image: "http://cdn.smosh.com/sites/default/files/2014/12/xmas-3.jpg", product_id: 7},
  {image: "https://img0.etsystatic.com/046/0/9450176/il_214x170.678475218_4g7q.jpg", product_id: 8},
  {image: "https://img0.etsystatic.com/040/0/9450176/il_214x170.639088630_7lsj.jpg", product_id: 8}
])
Order.create!([
  {user_id: nil, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 15},
  {user_id: nil, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 15},
  {user_id: nil, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 15},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 5},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 5},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 5},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 5},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 5},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 30},
  {user_id: 1, product_id: nil, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: 1, subtotal: nil, total: nil, tax: nil, quantity: 20},
  {user_id: 1, product_id: 1, subtotal: nil, total: nil, tax: nil, quantity: 15},
  {user_id: 1, product_id: 1, subtotal: nil, total: nil, tax: nil, quantity: 15},
  {user_id: 1, product_id: 1, subtotal: nil, total: nil, tax: nil, quantity: 13},
  {user_id: 1, product_id: 2, subtotal: nil, total: nil, tax: nil, quantity: 13},
  {user_id: 1, product_id: 3, subtotal: nil, total: nil, tax: nil, quantity: 2},
  {user_id: 1, product_id: 3, subtotal: "50.0", total: "54.5", tax: "4.5", quantity: 2}
])
Product.create!([
  {name: "Santa Sock", price: "25.0", description: "Dressy socks for the Summer Santa in you!", inventory: 15, supplier_id: 1},
  {name: "Reindeer Snowflake Sock", price: "20.0", description: "Frolick in the snow with jolly reindeer socks.", inventory: 30, supplier_id: 2},
  {name: "What-is-this-sock", price: "25.0", description: "Like the name says, WHAT IS THIS SOCK?!", inventory: 15, supplier_id: 2},
  {name: "Puppy's got some Christmas Spirit!", price: "10.0", description: "Who knows where this puppy came from but its ready to hop into Santa's sleigh.", inventory: 25, supplier_id: 2},
  {name: "almost new sock", price: "13.0", description: "Artsy sexy sock for men", inventory: 50, supplier_id: 1},
  {name: "Socky sock", price: "20.0", description: "So socky, this sock", inventory: 35, supplier_id: 2},
  {name: "Ironic modern Santa socks", price: "30.0", description: "Adults love Santa on their socks!", inventory: 10, supplier_id: 1},
  {name: "Fancy reindeer socks", price: "20.0", description: "Want to dress up your reindeer for the next board meeting?", inventory: 5, supplier_id: 1}
])
Supplier.create!([
  {name: "Ho Ho Hosiery", email: "info@hhhosiery.com", phone: "555-555-5555"},
  {name: "Target", email: "info@target.com", phone: "312-345-3512"}
])

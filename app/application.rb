require 'pry'

class Application
<<<<<<< HEAD
  
  @@items = []
=======
>>>>>>> a08015e5bfcdb3662c5bb900586988c9c52409d1
  def call (env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
<<<<<<< HEAD
    if req.path.include? ("/items/")
      
      item_req = req.path.split("/items/").last
      item = @@items.find {|i| i.name == item_req}

      if item
=======
    @@item = []
    
    if req.path.include? ("/items/")
      
      item_req = req.path.split("/items/").last
      binding.pry
      if @@item.include? (item_req)
        item = @@item.find {|i| i.name == item_req}
>>>>>>> a08015e5bfcdb3662c5bb900586988c9c52409d1
        resp.write "#{item.price}"
        resp.status = 200
      else
        resp.write "Item not found"
        resp.status = 400
      end
      
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end
end
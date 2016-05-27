

def bake(name, options = {})
  flour = options[:flour] || "rye"
  creamer = options[:creamer] || "cream"
  puts "baking a nice #{flour} loaf with #{creamer}"
end

bake("Wheat")
bake("Sourdough", :flour => "sour")
bake("Pumpernickel", :creamer => "butter")
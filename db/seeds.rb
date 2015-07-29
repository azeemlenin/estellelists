categories = ["Car", "House", "Pet"]

categories.each do |x|
  Category.create(post_name: x)
end
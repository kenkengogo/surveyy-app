["会社", "学校", "趣味", "恋愛", "人生", "料理", "社会", "政治", "カルチャー", "家族", "お店", "服", "SNS"]
.each do |name|
  Category.create!(name: name)
end
Asset::Phone.all.each do |phone|
  phone.phoneable_type[5] = ''  
  phone.update_column(:phoneable_type , phone.phoneable_type)
end

Asset::Location.all.each do |item|
  item.geocoded_type[5] = ''  
  item.update_column(:geocoded_type , item.geocoded_type)
end

Asset::Tagging.all.each do |item|
  item.tagable_type[5] = ''  
  item.update_column(:tagable_type , item.tagable_type)
end

Relation::Like.all.each do |item|
  item.likeable_type[5] = ''  
  item.update_column(:likeable_type , item.likeable_type)
end

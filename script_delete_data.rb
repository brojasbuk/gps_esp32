arr = []

GpsData.all.pluck(:id).each do |i|
  arr << i
end

arr.each do |i|
  GpsData.find(i).destroy!
end

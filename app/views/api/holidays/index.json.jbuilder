json.array! @holidays.each do |holiday|
  json.name holiday["name"]
  json.date holiday["date"]
end

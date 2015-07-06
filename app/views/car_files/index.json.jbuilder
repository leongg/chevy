json.array!(@car_files) do |car_file|
  json.extract! car_file, :id, :office_id, :car_id
  json.url car_file_url(car_file, format: :json)
end

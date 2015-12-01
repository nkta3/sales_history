json.array!(@staff_infos) do |staff_info|
  json.extract! staff_info, :id, :name
  json.url staff_info_url(staff_info, format: :json)
end

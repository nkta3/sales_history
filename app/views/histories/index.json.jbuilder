json.array!(@histories) do |history|
  json.extract! history, :id, :activity_time, :customer_id, :sales_category, :sales_achievement, :detail
  json.url history_url(history, format: :json)
end

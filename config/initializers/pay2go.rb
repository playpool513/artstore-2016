Pay2go.setup do |pay2go|
  case Rails.env
  when "development"
    pay2go.merchant_id = "11543187"  # 放測試站的 key
    pay2go.hash_key    = "SidDEGu7tbwB0lFR38X68b6AmO7qTAnL"
    pay2go.hash_iv     = "TBpyhTFL4cn5x2WB"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "1234567"  # 放正式站的 key
    pay2go.hash_key    = "xxxxxxxx"
    pay2go.hash_iv     = "xxxxxxxx"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end

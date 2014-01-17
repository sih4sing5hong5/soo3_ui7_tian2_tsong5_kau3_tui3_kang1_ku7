json.array!(@kai2_ji7s) do |kai2_ji7|
  json.extract! kai2_ji7, :id, :流水號, :漢羅文, :全羅文, :無齊記號
  json.url kai2_ji7_url(kai2_ji7, format: :json)
end

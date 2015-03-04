json.array!(@calls) do |call|
  json.extract! call, :id, :CallDuration, :From, :To
  json.url call_url(call, format: :json)
end

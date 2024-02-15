using Oxygen
using HTTP
using Base
using Statistics

function get_nums(req::HTTP.Request)
  nums_param  = queryparams(req)["nums"]
  nums_strs = split(nums_param, ',')
  return map(n -> parse(Float64, n), nums_strs)
end

function sum(req::HTTP.Request)
  return Base.sum(get_nums(req))
end

function median(req::HTTP.Request)
  return Statistics.median(get_nums(req))
end

function mean(req::HTTP.Request)
  return Statistics.mean(get_nums(req))
end

@get "/sum" sum
@get "/median" median
@get "/mean" mean

# start the web server
serve(host="0.0.0.0")

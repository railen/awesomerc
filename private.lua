local utility = require('utility')
local util = require('awful.util')

local private = {}

local locations =
   { gjovik = { city = "Gjovik", country = "Norway",
                lat = 60.79, lon = 10.69,
                gmt = 1 },
     ivfran = { city = "Ivano-Frankivsk",
                country = "Ukraine",
                lat = 48.92, lon = 24.71,
                gmt = 2 },
     spb = { city = "St-Petersbug", country = "Russia",
             lat = 59.57, lon = 30.19,
             gmt = 3 },
     kiev = { city = "Kiev", country = "Ukraine",
              lat = 50.45, lon = 30.52,
              gmt = 2 }}

private.user = { name = "pvtr",
                 loc = locations.spb }

-- forecast.io API key is read from ./.forecast_io_api_key file
private.weather = { api_key = utility.slurp(util.getdir("config") ..
                                               "/.forecast_io_api_key", "*line") }

return private

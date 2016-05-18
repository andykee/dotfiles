# TODO: Add your location and forecast.io api key below
apiKey   = '45ec156ff1e36f09f428067c89ee13fa'
location = '34.201694,-118.171667'

exclude  = "minutely,hourly,alerts,flags"


command: "curl -s 'https://api.forecast.io/forecast/#{apiKey}/#{location}?units=auto&exclude=#{exclude}'"

refreshFrequency: '10m'

render: (o) -> """
  <div class='weather'>
    <div class='temp'></div>
    <div class='summary'></div>
  </div>
"""

update: (output, domEl) ->
  data  = JSON.parse(output)
  $domEl = $(domEl)
  $domEl.find('.temp').html "#{Math.round(data.currently.apparentTemperature)}°"
  $domEl.find('.summary').text "#{data.currently.summary}"

style: """
    right: 0px
    bottom: 7px
    width: 425px
    color: #fff
    font-family: system, -apple-system
    text-align: left
    font-size: 18pt
    font-weight: 300
    font-smoothing: antialiased

    .temp
        float: left

    .summary
        float: left
        padding-left: 20px
"""


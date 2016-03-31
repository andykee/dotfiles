command: "date '+%l:%M %p'"

refreshFrequency: 500 # ms

render: (output) -> """
    <div class='wrapper'>#{output}</div>
"""

style: """
    right: 10px
    bottom: 58px
    width: 425px
    text-align: left
    color: #fff
    font-family: system, -apple-system
    font-size: 60pt
    font-smoothing: antialiased
    font-weight: 400
"""

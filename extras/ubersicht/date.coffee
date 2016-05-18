command: "date '+%A, %B %d %Y'"

refreshFrequency: 60000 # ms

render: (output) -> """
    <div class='wrapper'>#{output}</div>
"""

style: """
    right: 0px
    bottom: 25px
    width: 425px
    height: 44px
    text-align: left
    color: #fff
    font-family: system, -apple-system
    font-size: 20pt
    font-weight: 300
    font-smoothing: antialiased
"""

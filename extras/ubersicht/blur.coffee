command: "echo {}"

refreshFrequency: '10d' 

render: (output) -> """
    <div class='wrapper'></div>
"""

style: """
    right: 0px
    bottom: 0px
    width: 445px
    height: 145px
    position: absolute
    z-index: -1
    -webkit-backdrop-filter blur(20px) brightness(90%) contrast(100%) saturate(140%)
"""

Screen.backgroundColor = "#f7f7f7"

tabBar = new Layer
	width: 750
	height: 110
	image: "images/tabBar.png"
	x: 0
	y: Align.bottom
	index: 2
	backgroundColor: "black"
	
leftTab = new Layer
	parent: tabBar
	width: tabBar.width/3
	x: Align.left
	backgroundColor: "none"


middleTab = new Layer
	parent: tabBar
	width: tabBar.width/3
	x: Align.center
	backgroundColor: "none"
	
rightTab = new Layer
	parent: tabBar
	width: tabBar.width/3
	x: Align.right
	backgroundColor: "none"
	
daily_2x = new Layer
	width: 48
	height: 76
	image: "images/daily@2x.png"
	parent: leftTab
	x: Align.center
	y: 24

discover_2x = new Layer
	width: 90
	height: 76
	image: "images/discover@2x.png"
	parent: middleTab
	x: Align.center
	y: 20

profile_2x = new Layer
	width: 40
	height: 78
	image: "images/profile@2x.png"
	parent: rightTab
	x: Align.center
	y: 20

# Variables
pageCount = 8
gutter = 16

# Create PageComponent
memeScroller = new PageComponent
	point: Align.center
	width: 686
	height: 1032
	scrollVertical: true
	scrollHorizontal: false
	clip: false
	index: 1
	x: Align.center
	y: tabBar.height+16

# Loop to create pages
for index in [0...pageCount]
	page = new Layer
		size: memeScroller.size
		y: (memeScroller.height + gutter) * index
		image: "images/card#{[index+1]}.png"
		parent: memeScroller.content
		index: 0


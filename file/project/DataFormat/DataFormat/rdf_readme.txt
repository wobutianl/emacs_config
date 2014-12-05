transportation network 					交通网
	geometric							几何图
		reference and non-reference node			
		cartographic
	roads and ferries attributes		道路+渡口
		road network 
			link 
			lane
			junction(node)
			ferry connection(link)
			enclosed traffic area
			centreline digitisation
			curved features
			multicarriageway
			separately digitisel road
		addressing
		road names
		display & routing attributes
		lane info & attributes
		traffic attributes
administrative inclusion				行政范围（国，省，市，县）
	administrative entities
	administrative area naming
	attributes
	census IDs
	
cartographic inclusion					制图
	naming of cartographic feature
	cartographic inclusion
	
signs									标志（符号）
	signs
	conditions(general conditions)
	date/time modifier
POIs									POI
	general rules
	placement of POIs
	names of poi
	standard poi 
	poi attributes
	administrative coding associate
complex features	
	geometric representation of complex
	complex feature types
	
file associate							文件关联
	file types
	building texture pattren
	attachment types
	file names
	
RDF Schema								RDF 架构
	entity relation ship diagram
	RDF core tables
	admin extension tables
	sdo tables
	wkt tables
	voice tables
	adas tables							驾驶员辅助系统
	
product variations						产品变更
	unicode,transliteration
	entry map
	intermediate map
	off-road africa
	XML 
	miscellaneous files
	
premium content							高级内容
	
extended navigation

point & micro point addressing
	point address
	micro point address
disputed territories					争议地区
	disputed territories model
	
natural guidance						天然指导
	feature point object
	feature associate model
	guide point 
	natural guidance 
	
distance markers
	
trucks									卡车
	access characteristics
	traffic sign 
	no overtaking
	transport access
	
voice phonetic transcriptions			语音转录
	voice phonetic text
	voice cross-reference
	super category data
	geo override
	phonetic transcriptions
	
enhanced curvature, enhanced height and slope	增强高度和坡度
	
basic height
	map representation
	coordinates
	link average height
	
transit & pedestrain					过境分流
	
naming rules	
	general rules
	naming rules for specific feature
	
attribute values
time domain

#########################################################################

有的内容：
prime: Prime coverage has the most detail and enables door-to-door routing functionality 最详细层的所有的内容
	内容：几何对像有些什么（道路+扩展道路+。。。）
	属性：道路+渡口的属性（地址 + 名字 + 其他属性 + 关联属性）
	范围：行政范围的type （分级代码）
	
	制图：哪些东西需要制图（面对象 + 。。）
	POI：内容
	标志：signs	
		Exit signs and Straight-on Signs
		Entrance Ramp signs
		Additional signs
complete: prime 和 network 之间的一层
		Complete coverage areas have Prime coverage road inclusion, but the attribution of these roads does not meet Prime coverage

network :Network coverage includes the main highway network and all the necessary attributes required to allow
		routing from city to city 提供高速路网 + city 2 city 需要的属性
	
city 2 city: City-to-City coverage is minimum coverage in areas before completing Prime, Complete, or Network 覆盖最大的范围（即最上一层）
			This coverage level allows turn-by-turn guidance
	
	
geometric:
	The basic geometric primitives represented in RDF are nodes, links, shape points and faces.  节点 + 链接 + 面对象
	The reference node is the node with the lower latitude 
	the reference node is determined by the end node with the lower longitude 
	x,y,z小的是reference node
	
	Each Face is comprised of a set of closed links
	Cartographic features can be comprised of one or more Faces
	
navigation network:导航网
	道路网内容（详细种类） 
	地址：格式，层次，类型，Scheme
	道路名：各种种类的名字
	显示 & routing 属性：
	lane:车道；小巷
	PS：有图例
	
administrative coding:行政范围 代码（编号）
	行政实例：国家，order1,order2,order8,postal code, zone
	行政区名字：
	属性：
	census IDs :Census IDs is modelled as attributes of Administrative Areas and Zones.统计数字
	
sign:
	This section describes road signs and the conditions they impose on route guidance 道路标志为诱导服务
	什么情况下要显示 Sign : condition
	Date Time information is used to specify periods, dates, or times during which a specific coding is in effect
	
complex feature:
	Complex Features represent groupings of simple features into aggregated Complex Features.
	complex road
	complex intersection
	complex object 
	grouped structures (motorway junction)
	
cartographic representation:地图表示
	Linear cartographic features
	Structure Footprints 
	Polygonal cartographic features
	(administrative, building,land cover, railroad, calamity prone)
	
poi : points of interest
	Point of Interest is a generic term for an activity at a specific location. A  POI  can be a bank, park, hotel,tourist attraction, or one of many other categories.
	poi 的名字，placement位置，标准POI有哪些，属性，行政Coding
	
file associate: a generic model to associate files (external to the core-map database) to map features, via table RDF_FILE_FEATURE. 通用模型

RDF schema: 关系数据库的结构和语义的格式
	• Tables
	• Columns
	• Column data type
	• Column descriptions
	• Primary and foreign keys
	• Entity Relationship Diagrams
	实体关系 + RDF核心表 + 行政扩展表 + SDO表 + wkt表 + voice表 + ADAS表 + selection clipper table

product variations: 产品变更
	
	
#####################################################################

HERE Map:
分为五层：Prime, Network, Complete, City-to-City, and Connector Road.
	prime:has the most detail and enables door-to-door functionality (DETAILED_CITY = Y)
	network: is a sub-set of Prime , inclusion main inter-town highway and all the necessary 		    attributes required to allow routing from city to city (DETAILED_CITY = N)
	complete: a level between Network and Prime, 
	
	都有以下几个部分组成：
		transportation network
			Lists geometry that is included as part of the road network 几何道路网（路网的，大概看看）
		cartographic feature
			Lists cartographic features .制图（用于绘制的，可以不管）
		attribute
			Lists the attribute
		sign
			Describes the inclusion of signs within the road network and the types of sign information provided （出入口标识等，logo mark 应该会用）
		poi
			Lists the POIs and the attribution （很重要）POI categories
		country and administrative areas 
			Lists the attributes for each country and administrative area 
		
		
#######################################################################
							随意记录
#######################################################################
路网数据
	主要包括：(有图例，必需要理解）
		link,lane(车道),junction(node),ferry渡口connection(link),enclosed traffic area(封闭交通),centreline digitisation(中线数字化),curved(弧形),multicarriageway(多车行道),separately digitised road(单行数字化道路),bow and teardrops,pedestrain zones(行人专用区),Roundabouts(环岛),Single-Point Urban Interchange (SPUI)(单点城市的交汇处), Traffic Islands and Turn Lanes(岛屿和车道交通),unstructured traffic square(非结构化交通广场),toll structures(收费)
	地址：格式，层次，类型，Scheme
	道路名：各种种类的名字
	
administrative code : 行政范围代码
	country -> order1 -> order2 -> order8; built-up??
	postal code // Postal Area Zones(邮编区)
	attribute:country attri + administrative area attri 
		currency + language + driving slide + houseNumber + ISO + phone code + unit 
		abbreviation of area name + ....
	census ids : modelled as attributes of Administrative Areas and Zones
		
sign & condition: 标识与诱导条件
	describes road signs and the conditions they impose on route 	guidance 介绍了道路标志和路径诱导规定的条件
	signs : sign test + exit number + straight-on-sign(??)
	
	condition:诱导条件
		很多情况。
		
complex feature: 复合类型
	Complex Features represent groupings of simple features into aggregated Complex Features.  简单特征组成
	• CF Road 
	• CF Intersection  复合交叉路口
	• CF Object        
	• CF Grouped Structure 
	• CF Motorway Junction Object 
	
cartographic representation: 绘图
	地图表示The cartographic features can be areas or lines
	administrative boundaries 
	landmark (feature + attribute)
	land cover / land usage :
	water
	railroad
	calamity prone area 灾害易发区(龙卷风，洪泛区，海啸)
	enviromental zone 环境区 access to traffic is limited and governed by specific environmental criteria 对交通的访问是有限的，并由特定的环境条件
	
POI : 
	原则：一个POI必需有一个分类编号
		POIs may exist in multiple categories？这个不太好理解。
	POIs placement POIs 放置的位置	
		 naming 名称
		 标准POI （介绍了很多POI）
	POI 属性：	
		地址 + associate(关联) + chain name(??) + contact info(联系方式) + diesel(petrol/gas stations) + ....
	POI administrative coding :
		order8 + built-up area + zone + link + side + vanity city 
	
file associate: 文件关联
	RDF offers a generic model to associate files (external to the core-map database) to map features, via table RDF_FILE_FEATURE. 用于绘图
	file name + building texture + 2D
	
RDF Schema：RDF架构
	 the structure and semantics of the Relational Database Format . RDF数据的结构
	ERD(实体关系图) + RDF Core Tables + Extension table + SDO表( Oracle Spatial Data Objects) + WKT table + Voice Table + ADAS table + select Clipper table 
	
	
#import "../../template.typ": *

#show: project.with(
	theme: "lab",
	course: "普通物理学实验Ⅱ",
	title: "数字逻辑设计 实验报告",
	semester: "2024-2025 Autumn & Winter",
	author: "高玮轩",
	school_id: "3230105892",
	date: "2024年10月9日",
	college: "竺可桢学院",
	major: "人工智能（图灵班）",
	teacher: "肖婷",
)

//score:91

#lab_header(name: "托卡马克等离子体物理虚拟仿真实验", place: "紫金港 东四-431", date: "2024年10月9日")

= 引言


核聚变能在大规模商业应用之前需要解决两大关键问题：一个是实现核聚变反应的持续进行，并获得聚变能量增益；另一个是聚变反应产生的能量转化为可实际应用的热能，并能产生出足够的氚保证聚变反应自持。

第一个问题的解决依赖于托卡马克等离子体物理技术的发展，本实验主要关注第一个问题托卡马克等离子体物理过程，在下面的章节中重点介绍。第二个问题则取决于包层技术的发展。发生核聚变后产生的 alpha 粒子留在等离子体继续加热燃料离子，而聚变产生的高能中子转变成核热以及氚燃料的增殖是依靠包层来完成。

聚变包层是聚变堆实现氚自持和能量转换的关键部件。其结构通常包括耐高温、低活化的结构材料，氦气冷却剂结构，固态球床如硅酸锂小球作为氚增殖剂、金属铍球作为中子倍增剂。对包层内球床热工水力学分析能够给出系统中冷却剂的流动和传热特性。有关包层技术的知识我们在此不做展开。

托卡马克主要是由外部线圈产生的环形磁场约束等离子体的一种磁约束核聚变研究装置。在等离子体实验中，首先通过中心螺线管的电磁线圈在装置中产生环向电场击穿并加热等离子体，同时利用外部的高功率射频波、中性束等加热手段产生高温高压等离子体。托卡马克等离子体的约束不仅仅只靠环形磁场，还必须同时使用极向磁场来实现等离子体的压力和磁力的平衡。托卡马克中的极向磁场主要是由环形等离子体电流自身产生。环向磁场和极向磁场共同形成了一个沿着装置环形的螺旋型磁场。托卡马克高温等离子体真空室中，面向等离子体的部件通畅称为第一壁部件。第一壁部件会受到来自等离子体的高能粒子轰击和热负荷冲击，早期托卡马克采用圆形截面，并使用限制器来确定等离子体边界，限制器的表面位置决定了等离子体的最外闭合磁面（last closed flux surface，LCFS）,限制器的主要作用是避免来自等离子体的高能粒子对其他第一壁材料的损伤。但是由于限制器与等离子体直接接触，其表面产生的杂质和气体会污染等离子体，且热负荷会导致限制器表面材料腐蚀乃至熔化而产生杂质污染等离子体。

20世纪50年代开始发展D形截面托卡马克，通过磁场控制改变等离子体拉长比与三角形变，并采用“偏滤器”。等离子体电流与外部同向的极向场线圈电流共同产生了极向磁场为零的点，磁力线通过该点的面称为分界面，即LCFS。在LCFS内部的磁面是闭合的，而位于其外侧的侧面是开口的，称为刮削层(scrape-off layer, SOL)。从芯部等离子体跨越磁力线的高能粒子通过LCFS进入刮削层，沿着磁力线流向偏滤器靶板，偏滤器材料表面释放的杂质会被电离并受等离子体流冲刷回到偏滤器材料表面，从而实现过滤杂质、排出粒子的功能。

= 实验原理

== 核聚变原理

核聚变反应是指两个较轻的原子核在一定条件下结合成一个较重的原子核，并伴随着大量能量释放的过程。最容易发生的核聚变反应是氢元素的同位素氘和氚，在一亿度的高温下聚变生成一个阿尔法粒子（氦核）和一个中子的反应，并放出 17.6 兆电子伏特的能量。

原料中的氘在海水中大量存在；而氚的半衰期为 12 年，无法在自然界存在，但可以通过中子与锂元素的核反应制备。

以上反应的原料丰富，聚变产物清洁无辐射。因此，聚变能源被认为是人类社会发展能源需求的最终解决方案。

== 磁约束

核聚变反应需要在一亿度的高温下进行，此时燃料氘氚完
全电离，形成等离子体。怎样约束高温的等离子体，维持其高密度的状态使
其发生聚变反应，是一个国际难题。磁约束核聚变的原理是根据带电粒子无
法横越磁场运动的性质，利用磁场来约束高温的等离子体，维持其高温
（约一亿度）、高密度的状态，从而达到核聚变反
应以及能量增益的条件——劳逊判据（“聚变三乘积”）。

目前领先的磁约束聚变装置是托卡马克，其中约束磁场的拓扑结构类似于轮胎的形状（图 1），其平衡磁场由环向场线圈产生的环向磁场和环向等离子体电流产生的极向磁场共同构成，形成了嵌套的磁面，并将等离子体约束于其中。装置的磁面即对应了等离子体的等压面。等离子体的力学平衡由磁压力与等离子体热压力相平衡得到，

#align(center)[$gradient P = J times B \/ c$]

其中，P,J,B分别为等离子体压强，电流和磁场。在环形装置中以上磁流体力学平衡并可由 Grad-Shafranov 方程（GSE）描述。GSE 是磁约束聚变装置设计的基础；改变等离子体的电流、磁场分布，其约束等离子体的径向压强分布也会相应的改变，共同构成了磁约束等离子体的平衡分布。

== 磁约束中的带电粒子轨道

单个带电粒子的轨道由其磁漂移运动和沿着磁力线的运动共同决定，形成“香蕉轨道”或“通行轨道”，其偏离磁面的距离与粒子速度成正比。对于同样的能量和质量，捕获粒子偏离磁面的距离更大。

== 等离子体微观湍流与输运

约束等离子体具有芯部压强高、边缘压强低的特点。这个等离子体不均匀性所携带的自由能，会激发等离子体的集体振荡（即不稳定性），如起静电的“漂移波”湍流，其在等离子体的不同参数区间具有不同的自由能来源，如离子温度梯度模、捕获电子模等，因而具有不同的偏振特性。这些漂移波不稳定性，会引起等离子体横越磁场的反常输运，从而导致约束性能下降。等离子体中发生的非线性自组织行为，如带状流激发等，会导致漂移波湍流的饱和；其过程是通过漂移波湍流非线性激发带状流而达到的，在此过程中湍流被带状流散射到稳定的短波长区域，从而被抑制。这个非线性过程，决定了磁约束聚变装置中的湍流的强度，从而决定了磁约束聚变装置的约束水平和经济效益。

= 实验仪器

== EAST装置

中性束系统、离子回旋装置、弯晶谱仪、低杂波系统、中性束系统、飞行质谱仪、离子回旋装置、汤姆逊诊断装置、EAST 主机。

== 主体设备

- 真空室：由16个D形截面的不锈钢扇形焊接组成，提供为热核聚变反应提供了超高真空的运行环境。周围窗口提供抽气、诊断、加热电流驱动及冷却通道。
- 超导纵场线圈：由16个D形超导线圈沿环形均匀分布组成，可在等离子体中心产生3.5T的环向磁场。 
- 超导极向场线圈：由上下对称分布的中心螺管和四对大线圈组成，提供极向磁场。
- 外真空杜瓦：为圆桶状结构，它分为圆顶盖、中部环体和基座三个部分。外真空杜瓦主要为极向场、纵场、真空室等部件提供真空、低温环境。

== 诊断设备

- 汤姆逊散射仪：目的是测量等离子体的电子温度和密度，为非接触式诊断系统，对等离子体几乎无干扰。其工作原理是将一束激光（即入射电磁破）照射到等离子体内，等离子体中作加速运动的带电粒子在入射电磁破的作用下会发生散射而产生再辐射，通过还原散射谱的形状获得温度测量、通过能量绝对强度来获得电子密度测量。

- 快动探针：可测量等离子体中电子温度和电子密度、粒子流量、平行等离子体流、湍流输运等，为接触式诊断系统。移动速度可达到2米/秒，测量等离子体参量轮廓时间间隔可达300毫秒。探针系统采用两级传动结构：一级传动为长距离慢动系统，目的是驱动探针系统穿过托卡马克装置的水平窗口进入等待区域，在该区域，探针头不受等离子体的影响；二级传动为短距离快动系统，目的是驱动探针快速进入和退出等离子体削删层区域进行数据诊断。

- 电磁测量：电磁测量系统是托卡马克运行、等离子体反馈控制系统和共振磁扰动线圈系统的基本诊断。电磁测量传感器分布在真空室内，提供包括等离子体电流、极向场电流、磁通量、磁场等测量。包括罗科线圈和磁探针。

= 实验过程

1. 托卡马克装置认识与重要诊断测量装置组装
	1. 通过点击各装置，对托卡马克装置的各部分进行认识。
		#image("image1.png")
	2. 等离子体诊断装置与电磁装置模块组装
		#image("2.png")
	3. 实验启动准备：装置检查、启动冷却和抽真空装置。（较为简单，未截图）
	4. 进行学习测验。
2. 等离子体磁流体力学仿真实验
	1. 启动等离子体磁流体力学平衡仿真实验，观察磁面位形，磁场分布等图像。
		#image("屏幕截图 2024-10-09 144648.png")
	2. 测量等离子体温度分布轮廓
		1. 点击“温度分布”显示真空室内环向截面上的温度分布，并进行测量，保存数据得到`温度分布.txt`,绘图可得径向T-R曲线
			#image("Figure_1.png")
	3. 测量等离子体密度分布轮廓
		1. 同理得到密度分布数据`密度分布.txt`，绘图得到径向n-R曲线
			#image("Figure_2.png")
	4. 观察不同位型下的分布。
		1. #image("屏幕截图 2024-10-09 145708.png")

3. 单粒子在复杂磁场中的运动轨迹仿真实验
	1. 通过单粒子运动轨迹仿真实验预习测试。
	2. 测量分析带电粒子在托卡马克复杂位形磁场中的运动轨迹。
		1. #image("屏幕截图 2024-10-09 152100.png")
		2. #image("屏幕截图 2024-10-09 152403.png")

4. 托卡马克等离子体平衡剖面设计探究性实验
	1. 可自由选择某一磁面位形，设置极向电流大小，分析在该实验装置条件下粒子运动轨迹规律。也可以固定极向励磁电流大小，更改最外磁面位形，进行探究实验。
		1. #image("3.png")
5. 等离子体中的湍流演示性实验
	1. 通过湍流演示性实验，观察等离子体中的湍流现象。
	2. 观察湍流的产生过程，湍流中的温度演化、密度演化。
6. 结束实验，妥善关闭纵场与极向场励磁电流。

= 思考题

1. 请简述核聚变反应发生以及产生能量增益的条件，并写出最易发生的核聚变反应表达式。\
	核聚变反应发生的关键条件：\
	- 高温（数千万至数亿摄氏度）\
		高温使粒子获得足够的动能，克服原子核之间的库仑斥力（正电荷之间的排斥力），从而接近到发生核反应的范围内。
		例如，太阳核心的温度约为 1500万K。
	- 高压或高密度\
		高压使粒子更容易发生碰撞，增加反应的几率。在实验室中，使用强磁场（如托卡马克装置）或惯性约束（如激光聚变）实现高密度约束。
	- 足够长的约束时间\
		粒子必须在高温和高压环境中保持足够长的时间（称为约束时间），才能确保足够多的反应发生。
	- 燃料选择与反应截面\
		核燃料的选择直接影响反应的难易程度。最常见的核聚变燃料是氢的同位素（如氘和氚），因为它们的库仑斥力较小，更容易发生聚变。
	- 能量增益（点火条件）：\
		要实现核聚变能量增益（即输出能量大于输入能量），需要满足劳逊判据（“聚变三乘积”）：$n⋅τ⋅T$>临界值。其中𝑛：粒子的密度，𝜏：约束时间，𝑇：温度。如果达到这一准则，聚变反应就能自持运行，称为点火条件。
	- 最易发生且被广泛研究的反应是氘-氚（D-T）聚变反应：
		- #image("4.png")
2. 托卡马克内等离子体中的电子与聚变产生的 alpha 粒子，其运动轨迹有何不同，原因是什么?\
	电子：质量轻、速度快、轨迹紧密沿磁场线运动，回旋半径小，容易受电磁波和磁场扰动的影响。\
	α 粒子：质量大、速度慢、回旋半径大、轨迹松散，在等离子体中起到加热作用。
	关键差异：电子的轨迹更受磁场的紧密约束，而α 粒子由于较大的质量和高能量，其轨迹更为松散且不易被磁场完全约束。这也是为什么在托卡马克装置中需要优化磁场设计，以确保更多的α 粒子能量沉积在等离子体中用于自加热，而不是直接损失。

3. 磁约束环形装置中，如果仅有环向磁场，等离子体中不同电性的粒子将做怎样的运动？\
	如果仅存在环向磁场（沿环形装置的环向方向，即与装置中心轴平行），则等离子体中的带电粒子（正负电性不同的粒子）将表现出特定的螺旋运动，但无法有效约束。
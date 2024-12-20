#import "../../template.typ": *

#show: project.with(
	theme: "lab",
	course: "普通物理学实验Ⅱ",
	title: "普物实验2 实验报告",
	semester: "2024-2025 Autumn & Winter",
	author: "高玮轩",
	school_id: "3230105892",
	date: "2024年10月17日",
	college: "竺可桢学院",
	major: "人工智能（图灵班）",
	teacher: "张建华",
)

#lab_header(name: "液体黏性系数的测定", place: "紫金港 东四-232", date: "2024年10月16日")

= 引言

在流动的液体中，流速不等的流体形成不同的流层，各流层之间因速度不等而存在内摩擦力，称为粘滞阻力，它会阻碍流层的相对运动。根据流体力学知识可知，粘滞阻力 $f$ 的大小与流层间的接触面积 $A$ 及垂直于速度方向的速度梯度 $frac(dif v,dif y)$ 成正比，即

#align(center)[$f = eta A frac(dif v,dif y)$]

粘滞系数 $eta$ 的大小与液体的性质及温度有关。温度升高，液体的粘滞系数减小，而气体则相反。粘滞系数的测定在航空、造船、桥梁、化学、医学、水利工程中都有重大的实际意义，

= 实验原理

1.当金属小球在粘性液体中下落时，它受到三个铅直方向的力：小球的重力 $m g$（$m$ 为小球质量）、液体作用于小球的浮力 $rho g V$ （V 是小球体积，$rho$ 是液体密度）和粘滞阻力 $F$（其方向与小球运动方向相反）。如果液体无限深广，在小球下落速度 $v$ 较小情况下，有

#align(center)[$F_1 = 6 pi eta r v $]

上式称为斯托克斯公式，其中 $r$ 是小球的半径；$eta$ 称为液体的黏性系数。

而其受到的浮力可表示为

#align(center)[$F_2 = frac(4 pi,3) r^3 rho_1 g $]

其中 $rho_1$ 是液体的密度，$g$ 是重力加速度，球体受到的重力为

#align(center)[$F_3 = frac(4 pi,3) r^3 rho_2 g $]

其中 $rho_2$ 是小球的密度，当球体运动一段时间后，三种力平衡，即

#align(center)[$F_1 + F_2 = F_3$]

此时，球体将以匀速$v$运动（也成为收尾速度）。因此，通过测量小球的收尾速度，可以求得液体的黏性系数：

#align(center)[$eta = frac(2 g r^2 (rho_2 - rho_1),9 v)$]

此处的 $v$ 可以在球体下降某一过程中测量其通过某一区间 $s$ 所用的时间 $t$，从而求得。

#align(center)[$eta = frac(2 g t r^2 (rho_2 - rho_1),9 s)$]

在实际测量中，液体并非无限扩展，且容器的边界效应对球体受到的粘滞力有一定影响，因此实际测量中，需对斯托克斯公式进行修正，对于在无限长，半径为 $R$ 的圆柱形液体轴线上下落的球体，修正后的粘滞力为

#align(center)[$F = 6 pi eta r v (1 + 2.4 frac{r}{R})$]

如此一来，液体的黏性系数可表示为

#align(center)[$eta = frac(2 g t r^2 (rho_2 - rho_1), 9 s (1 + 2.4 frac(r,R)))$]

= 实验目的

1. 了解物体在液体中运动所受的粘滞阻力、并测定流体的粘滞系数 $η$。


2. 研究液体粘滞系数随温度变化的关系。 

= 实验仪器

1. 液体粘滞系数测定仪，内含蓖麻油
2. 游标卡尺
3. 螺旋测微器
4. 小钢珠
5. 配有水泵的水浴加热装置 // 煮饭锅
6. 控温仪
7. 秒表

= 实验内容

== 参考实验常量

- 内筒内半径：$R=18.5$mm
- 蓖麻油密度：$rho = 950$ kg/m#super("3")
- 室温 $T = 22.5$ #super("o")C

== 实验一：落球法测粘滞系数

在玻璃皿中任取六粒钢珠，用螺旋测微器测出直径取平均值。再用镊子将钢珠放入蓖麻油中自由下落，测出室温下小钢珠匀速通过某段距离 $L$ 所需的时间，再将所有数据代入公式，计算粘滞系数 $η$ 及不确定度。

=== 实验数据

为保证钢珠做匀速运动，在测量仪靠下一段选取 $L = 10.0 c m$\
螺旋测微器测得六枚钢珠直径如下

#table(columns: (auto,auto,auto,auto,auto, auto, auto))[i][1][2][3][4][5][6][$d_i$(mm)][2.965][3.010][3.000][3.000][2.990][2.984]

则平均值 $macron(d) = 2.992 m m, r = 1.496 times 10^(-3) m$

测量六枚钢珠下落距离 $L=0.1m$ 所用的时间，得结果如下\

#table(columns: (auto, auto, auto, auto, auto, auto, auto),align: horizon + center)[i][1][2][3][4][5][6][$t_i$(s)][3.03][3.45][2.87][2.90][2.97][3.25]

计算 $v_i = frac(L,t_i)$ 并代入公式，得蓖麻油粘滞系数如下

#table(columns: (auto, auto, auto, auto, auto, auto, auto),align: horizon + center)[i][1][2][3][4][5][6][$eta_i$(kg/(ms))][0.855][0.973][0.809][0.817][0.838][0.916]

求得平均值 $macron(eta) = 0.857$ kg/(ms)

查表知蓖麻油在22.5摄氏度下的粘滞系数为 $0.79$ kg/(ms)，则相对误差为

#align(center)[$E = frac(macron(eta) - eta_0, eta_0) times 100% = frac(0.857 - 0.79, 0.79) times 100% = 8.48%$]

A类不确定度为 

#align(center)[$u_A = sqrt(frac(Sigma_(i=1)^n (eta_i - macron(eta)), n (n-1))) = 0.048$ kg/(ms)]

B类不确定度为

#align(center)[$u_B = frac(Delta_(仪), sqrt(3)) = frac(0.01, sqrt(3)) = 0.006$ kg/(ms)] // 应该不是这么算的，摆了

综合不确定度为

#align(center)[$u = sqrt(u_A^2 + u_B^2) = sqrt(0.048^2 + 0.006^2) = 0.048$ kg/(ms)]

则最终结果为

#align(center)[$eta = 0.857 plus.minus 0.048$ kg/(ms)]

== 实验二：测量蓖麻油的粘滞系数随温度的变化

1. 对待测液体进行水浴加热，到达设定温度后进行保温，由于热惯性，需待一段时间后，才能达到平衡。
2. 选择5个不同的温度点，使小钢珠从中间自由落下，测出小钢珠经过某段距离L的时间，算出液体粘滞系数。
3. 作液体粘滞系数随温度变化的关系曲线图。

选择五枚大小相近的钢珠，测得其直径平均值为$3.000$mm，则$r = 1.5 times 10^(-3)$m，从30摄氏度开始，每次升高5摄氏度进行一次测量，测量数据如下

#table(columns: (auto, auto, auto, auto, auto, auto),align: horizon + center)[i][1][2][3][4][5][$T_i$][30][35][40][45][50][$t_i$(s)][1.88][1.22][0.97][0.87][0.79]

计算 $v_i = frac(L,t_i)$ 并代入公式，得蓖麻油粘滞系数如下
#table(columns: (auto, auto, auto, auto, auto, auto),align: horizon + center)[i][1][2][3][4][5][$eta_i$(kg/(ms))][0.530][0.344][0.274][0.245][0.223]

作出液体粘滞系数随温度变化的关系曲线图

#image("Figure_123.png")


= 误差分析

- 读数时，控温装置指示灯熄灭后，可能在温度计尚未稳定的情况下读取读数，导致测量的时机出现偏差，从而出现结果误差。
- 小钢珠略有生锈，导致其密度与实际值有所偏差，从而影响实验结果。
- 螺旋测微器年久失修，可能存在读数误差，从而影响实验结果。
- 在测量下落时间时，由于肉眼观察与手动操作秒表，可能存在人为误差，从而影响实验结果。
- 测量仪所在平台，尽管经过调整，仍有可能不与地面平行，导致小钢珠不能竖直下落，导致实验结果误差。

= 思考题

1. 影响液体粘性系数的因素有哪些？
    - 液体温度：由图像可看出，温度升高，液体的粘滞系数减小，这是因为分子之间的吸引力减弱，使流动性增强。
    - 压力：对于大多数液体，压力的变化对粘性影响较小。但在非常高的压力下，粘性会增加，因为分子之间的距离缩短，流动受限。
    - 分子结构：分子间的相互作用力（如氢键、范德华力）越强，粘性越大。长链分子（如聚合物）或有极性基团的分子通常具有较高粘性。
    - 外部场：某些具有极性或含磁性纳米粒子的流体，其粘性会受到电场或磁场的影响。
2. 设计一个不用传感器的测量液体粘性系数的实验方案，要求：简述实验方法和基本原理，画出系统原理框图。

    1. 实验原理：同实验一
    2. 实验方法：
        1. 准备工作：
          选择合适的小球（如钢球、玻璃球），并测量其半径 r 和质量 m\
          将待测液体倒入透明竖直管内，并标记上下两点（距离 𝐿）
        2. 实验步骤：\
          让小球从液面下方某一固定高度静止释放。\
          测量小球从上标记点到下标记点的下落时间 𝑡
        3. 数据处理：\
          计算小球的下落速度 $v = frac(L,t)$\
          使用斯托克斯定律计算液体的粘性系数 

    3. 系统原理框图\
      +------------------------------+\
      |  透明竖直管 (充满液体)     |\
      |  -------------------------------  |\
      |  | ---------------------------                   |  |\
      |  |  -- 上标记点 (开始)   --  |  |\
      |  |   ---------------------------  |  |\
      |  |      ---------------------------            |  |\
      |  |      --------------------------- |  |\
      |  |  -- 下标记点 (结束)   --  |  |\
      |  ------------------------------  |\
      +----------------------------+\
      \
      +----------------------------+          +----------------------------+\
      |  小球 (释放后下落)  | --------> |  时间测量 (秒表)    |\
      +----------------------------+          +----------------------------+\
                                        
      +------------------------------+          \
      |  数据处理 (计算 v 和 $η$) |\
      +------------------------------+\

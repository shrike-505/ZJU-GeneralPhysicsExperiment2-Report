import matplotlib.pyplot as plt

# 数据
ETA = [0.530, 0.344, 0.274, 0.245, 0.223]
T = [30, 35, 40, 45, 50]

# 绘图
plt.figure(figsize=(8, 6))  # 可选，调整图像尺寸
plt.plot(T, ETA, marker='o', linestyle='-', color='b', markersize=8, label='ETA-T Relationship')

# 添加标题和轴标签
plt.title('ETA-T Plot', fontsize=16)
plt.xlabel('T (Temperature)', fontsize=14)
plt.ylabel('ETA', fontsize=14)

# 添加网格和图例
plt.grid(True)
plt.legend()

# 显示图像
plt.show()

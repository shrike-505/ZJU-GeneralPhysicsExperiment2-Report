import numpy as np
import matplotlib.pyplot as plt

# 光电流 (μA)
light_current = np.array([3.1, 4.8, 4.4, 2.2, 0.2, 0.6, 2.8, 4.7])

# 角度 Phi (°)
phi = np.array([-42.75, -12.75, 17.25, 47.25, 77.25, 107.25, 137.25, 167.25])

# 计算 100 cos^2 Phi
phi_rad = np.radians(phi)  # 转换为弧度
cos2_phi = 100 * (np.cos(phi_rad) ** 2)

# 排序数据
sorted_indices = np.argsort(cos2_phi)
sorted_cos2_phi = cos2_phi[sorted_indices]
sorted_light_current = light_current[sorted_indices]

# 绘制图形
plt.figure(figsize=(10, 6))
plt.plot(sorted_cos2_phi, sorted_light_current, marker='o', linestyle='-', color='b')
plt.xlabel('100 cos^2 Phi')
plt.ylabel('i (μA)')
plt.grid()
plt.xticks(np.arange(0, 110, 10))
plt.yticks(np.arange(0, 5, 0.5))
plt.show()

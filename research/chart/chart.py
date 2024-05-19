import matplotlib.pyplot as plt

# Данные для первых двух графиков
x = ['0', '3', '6', '9', '13']
y2 = [0.0012, 0.0018, 0.0022, 0.0054, 0.0083]
y1 = [2.81, 2.82, 2.84, 2.89, 2.92]

# # Создание второго рисунка с двумя графиками рядом
plt.figure(figsize=(12, 6))

# Построение первого графика на втором рисунке
plt.subplot(2, 1, 1)
plt.plot(x, y1, marker='o', color='b')
plt.xlabel('Количество дочерних вложенных представлений')
plt.ylabel('Время (секунды)')
plt.title('UIKit')

# Построение второго графика на втором рисунке
plt.subplot(2, 1, 2)
plt.plot(x, y2, marker='o', color='r')
plt.xlabel('Количество дочерних вложенных представлений')
plt.ylabel('Время (секунды)')
plt.title('Разработанный метод')

# Отображение всех созданных графиков
plt.tight_layout()
plt.show()

# plt.plot(x, y1, marker='o', color='b', label='UIKit')
# plt.plot(x, y2, marker='o', color='r', label='Разработанный метод')

# plt.xlabel('Количество дочерних вложенных представлений')
# plt.ylabel('Время (секунды)')
# plt.title('UIKit | Разработанный метод')
# plt.legend()
# plt.show()

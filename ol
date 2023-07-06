# Уникальный скрипт на языке Ruby

# Определение класса "Задача"
class Task
  attr_accessor :title, :description, :priority, :completed

  # Конструктор класса
  def initialize(title, description, priority)
    @title = title
    @description = description
    @priority = priority
    @completed = false
  end

  # Метод для отметки задачи как выполненной
  def complete
    @completed = true
  end

  # Метод для вывода информации о задаче
  def display_info
    puts "Заголовок: #{@title}"
    puts "Описание: #{@description}"
    puts "Приоритет: #{@priority}"
    puts "Статус: #{@completed ? 'Выполнено' : 'В процессе'}"
  end
end

# Создание списка задач
tasks = []
tasks << Task.new("Помыть посуду", "Вымыть все тарелки и столовые приборы", "Низкий")
tasks << Task.new("Сделать покупки", "Купить продукты и необходимые товары", "Средний")
tasks << Task.new("Закончить проект", "Завершить разработку проекта и сдать заказчику", "Высокий")

# Вывод информации о каждой задаче
tasks.each do |task|
  task.display_info
  puts "-" * 20
end

# Поиск задач

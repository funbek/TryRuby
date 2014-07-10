# Запустить cmd with ruby -> прописать путь, для запуска программы необх наборать ruby test.rb
# Для непосредственного использования консоли необходимо прописать irb
# def - метод
# получение свойств у методов "text".methods

=begin
def met(variable = "world")
	puts "Hello #{variable.capitalize}"
end

met()
=end


class Greeter
	def initialize(name = "World")
		@name = name.upcase
	end
	def say_hi
		puts "Hi #{@name}!"
	end
	def say_bye
		puts "Bye #{@name}!"
	end
end

object = Greeter.new("Den")

# object.say_hi
# object.say_bye

# получение методов которые заданы для Greeter
# puts Greeter.instance_methods(false)

# new_object = Greeter.new("Andy")

# new_object.say_bye

# g = Greeter.new("One")

# g.say_hi




# class MegaGreeter
# 	attr_accessor :names

# 	def initialize(names = "World")
# 		@names = names.capitalize
# 	end

# 	def say_hi
# 		if @names.nil?
# 			puts "You're don't fil the gap, in say_hi"
# 		elsif @names.respond_to?("each")
# 			# блок с методом each
# 			@names.each do |name|
# 				puts "Hello #{name}"
# 			end
# 		else
# 			puts "Hello #{@names}"
# 		end
# 	end

# 	def say_bye
# 		if @names.nil?
# 			puts "You're don't fil the gap, in say_bye"
# 			# блок с методом join
# 		elsif @names.respond_to?("join")
# 			puts "Goodbye #{@names.join(", ")}"
# 		else
# 			puts "goodbye #{@names}. Back soon"
# 		end
# 	end
# end

# Данная проверка говорит: “Если это тот самый файл,
# который был запущен изначально…”. Это позволяет файлу быть использованным как библиотека,
# и не выполнять код в данном контексте.
# Но если файл используется как выполняемый – тогда выполняем этот код.
# if __FILE__ == $0
# 	mg = MegaGreeter.new
# 	mg.say_hi

# 	mg.names = "Denis"
# 	mg.say_bye

# 	mg.names = nil
# 	mg.say_hi
# end



# переменная Dasha не изменяется, изменяется лишь ссылка на переменную (поэтому выводится Masha),
# метод clone позволяет использовать клон данной переменной, в то время как самма переменная
# остается не изменной. (копии объектов можно создавать методом .dup)
=begin
girlfriend = "Dasha"
goes_on_a_visit = girlfriend.clone
puts girlfriend
goes_on_a_visit[0] = "M"
puts girlfriend
=end
# *большинство методов, при присваивании переменным, сами создают клон!
# здесь Ruby создаст объект с новым значением и поместит в (уже существующую) переменную ссылку на объект
=begin
goes_on_a_visit = "Maks"
puts girlfriend
=end


# СТРОКИ метод to_s - преобразует в строку
# АССОЦИАТИВНЫЕ МАССИВЫ 
a_array = {'one'=>"two"}
a_array["one"] #выведет two

# диапазоны значений "a".."z"="a"..."y", есть 3 элемента, начало, конец и протяженность, 
# должны быть перечислимы,т.е.иметь метод.succ(по текущему элементу достоверно определить следующий)


# определение класса
a = 12
a.class
a.class.superclass


# МЕТОДЫ ЯВНОГО ПРЕОБРАЗОВАНИЯ ТИПОВ
# to_f (в число с плавающей точкой float)
# to_i (в целое integer)
# to_s (в строку string)
# to_a (в массив array)

# СЛУЧАЙНЫЕ ЧИСЛА
# rand - от 0.0 до 0.99
# rand(100) - от 0 до 99 

srand 123 #номер случайной последовательности
Array.new(5){ rand(100) }    #=> [66, 92, 98, 17, 83]

# ОКРУГЛЕНИЕ
# a = 123.434  a.round 3

# МАССИВЫ
# перечесление [1,2,3]
# создание нового Array.new(6){ |index| index + 1}  ==> [1,2,3,4,5,6] - значение массива больше на единицу его индекса
# (1..6).to_a преобразование диапазона в массив
# получение необходимых значений массива
arr = [1,2,3,4,5,6]
arr[2..-1] #выведет 3 4 5 6

# ["у","попа","была","собака"].max  -  "у" , максимальный по значению элемент (min)
# ["у","попа","была","собака"].max_by{ |elem| elem.size}  -  "собака" максимальный по размеру строки (min_by)


# ["у","попа","была","собака"].sort  -  сортировка по  значению
# ["у","попа","была","собака"].sort_by{|elem| elem.size}   -  сортировка по размеру строки


# метод .reverse  переворачивает массив, в сл по убыванию 
["one","two","three","th"].sort_by{|index| index.size}.reverse

# объединение массивов [1,2,3,4,5,5,6] | [0,1,2,3,4,5,7] => [1,2,3,4,5,6,0,7], сначала сцепляются, а затем удаляются повторяющиеся

[1,1,1,2,3,4,5,7] | [1,0,3,4,7,9]

# пересечение [1,2,3,4] & [2,0,4] => [2,4] из первого удаляются отсутст во втором и то же самое во втором.
a = [1,2,3,4] & [2,0,4]
a.reverse


# .flatten - делает из многомерного массива одномерный

puts [[2,9,4],[5,6,7],1,10].flatten.max
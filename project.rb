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
puts a_array["one"] #выведет two


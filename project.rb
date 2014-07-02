# Запустить cmd with ruby -> прописать путь, для запуска программы необх наборать ruby test.rb
# Для непосредственного использования консоли необходимо прописать irb


=begin
def met(variable = "world")
	puts "Hello #{variable.capitalize}"
end

met()
=end

def new(variable = "one")
	puts "this is #{variable}"
end

new("two")


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



def method(a)
	a.each do |a|
		puts "some #{a}"
	end
end

# b = [1, 2, 3, 4, 5]
# method(b)


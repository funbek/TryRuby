#!/bin/env ruby
# encoding: utf-8

# Запустить cmd with ruby -> прописать путь, для запуска программы необх наборать ruby test.rb
# Для непосредственного использования консоли необходимо прописать irb
# def - метод
# получение свойств у методов "text".methods


# ------------------------------------- СТРОКИ -------------------------------------
# переменная Dasha не изменяется, изменяется лишь ссылка на переменную (поэтому выводится Masha),
# метод clone позволяет использовать клон данной переменной, в то время как самма переменная
# остается не изменной. (копии объектов можно создавать методом .dup)

girlfriend = "Dasha"
goes_on_a_visit = girlfriend.clone
 girlfriend
goes_on_a_visit[0] = "M"
 girlfriend

# *большинство методов, при присваивании переменным, сами создают клон!
# здесь Ruby создаст объект с новым значением и поместит в (уже существующую) переменную ссылку на объект

goes_on_a_visit = "Maks"
 girlfriend



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

# ------------------------------------- МАССИВЫ -------------------------------------
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
[[2,9,4],[5,6,7],1,10].flatten.max

# array.compact - удаляет nil элементы из массива

# Метод .map — это итератор, который позволяет нам делать что-нибудь с каждым объектом, на который указывает массив.
arr2d = [[6,3],[5,4]]
arr = arr2d.map{|index| index.max}

# добавление в конец массива или метод .push
arr = [1,2,3,4]
arr.push(19)
 arr
# удаление из массива или метод .pop
arr.pop
 arr

# .unshift(4) - добавляет элемент в начало массива
# .shift -удаляет элемент из начала массива
arr = [1, 2, 3]
 arr.unshift(233)
arr.shift
 arr

# .include?("some") этот метод позволяет проверить нахождения эмемента в массиве

# проверка на пустоту .empty? , .any? обратный метод


# ------------------------------------- ИТЕРАТОРЫ -------------------------------------
# .map{0} - обнуляет все элеметны массива, .map{|elem| elem.**2} - возводит в степень каждый элемент массива
# чтобы был сохранены новые элементы в массив нужно добавить map!
arr = [1,2,3,4,5]
 arr.map!{|index| index**2}
 arr

 # .find_all - находит все элементы соответствующие правилу
 arr.find_all{|index| index % 2 == 0} #.zero - проверка на равенство нулю (elem % 2).zero? -проверка на четность

# методы .odd? .even? - четность или не четность
 arr
 arr.find_all{|index| index.even?}

# .inject(0) "result = 0"- позволяет находить произведение/сумму всех элементов массива.
 arr.inject(0){|result, elem| result * elem}

# нахождение суммы всех отрицательных чисел массива!!!
 arr = Array.new(10){|index| index = rand(-5..5)}
sum_negative_el_arr = arr.find_all{|index| index < 0}.inject(0){|one, two| one + two}
 "the sum of elements = #{sum_negative_el_arr}"

# Итератор .partition делит массив на две части по некоторому бинарному признаку (чётности, положительности, наличию высшего образования и тому подобным).
# делим массив по признаку кратности трем
arr = [1,2,3,4,5,6,7,8,9]
 arr.partition{|x| (x%3).zero?}
# размещаем полученный массив в две переменные
one, two = arr.partition{|x| (x%2).zero?}
 one
 two

# Проверка всех .all
 arr.all?{|elem| elem > 0}
# Провурка хотя бы один .any
 arr.any?{|elem| elem > 8}

# сортировка по убыванию без .reverse
arr = [1,3,2,5,7,4,6]
 arr.sort{|a, b| a <=> b}



# ------------------------------------- АССОЦИАТИВНЫЕ МАССИВЫ -------------------------------------
hash = {5=>3, 1=>6, 3=>2}
 hash[5]
 hash[1]

# колличество использования каждой цифры
asoc_arr = [1, 2, 1, 2, 3, 2, 1, 2, 4, 5]
 asoc_arr.inject(Hash.new{0}){|result, i|
	result[i] += 1
	result
}

# получение ключа .key
asoc_arr = {1=>4, 5=>3, 2=>2}
 asoc_arr.keys
# получение значения .values

 asoc_arr.max_by{|key, value| value}



# ------------------------------------- СТРОКИ -------------------------------------
arr = [1,2,3,4]
# puts "This is text and = #{arr.join(", ")}"

# запись числа в двоичном виде
number = 1234
 "В двоичном виде #{number.to_s(2)}"
# или
 "в двоичном виде %b" %number
# multiply
 years = 80
  " test " * years

# Преобразование в массив .split
 a = "re-re-re-re-re".split('-')
# преобразование из массива в строку с выбранным разделителем .join = to_s или * (разделитель)
 # a.join(' - ')
 # a * ' - '
 ["re","re"] * 2 * ' - '

 "that is text".size

# Получение подстроки
text = "that is big text"
 text[0..3]
 text[7...-1]
 text[2..2] # - выдаст символ  или text[2]

# .sub замена подстроки в строке (одна), gsub (все)
 str = "жыло-было шыбко шыпящее жывотное"
 str.sub("жы", "жи")
 str.gsub("жы","жи").gsub("шы","ши")

 # .scan("sd") -поиск по селектору
 str.scan("жы").size

# / / - правила или регулярные выражения
/[абвгде]/    #=> простое перечисление символов
/[а-яА-Я]/    #=> все русские буквы
/[0-9a-z]/    #=> цифры и строчная латиница
/[^0-9]/      #=> все символы, кроме цифр (^ циркумфлекс)

# {3} квантификатор - количество повторяющихся символов
/\w{3}/           #=> три латинских буквы или цифры
/\d{1, 3}/        #=> одна, две или три цифры
/[а-яА-Я]{3,}/    #=> русское слово длиной три символа и больше


# ------------------------------------- МАТРИЦЫ и ВЕКТОРЫ -------------------------------------
# require "mathn" - подключение библиотеки mathn
require "mathn"
Matrix[[1,-2,3],[3,4,-5],[2,4,1]]

# (*) переобразование массива в матрицу
array = [[1, -2, 3], [3, 4, -5], [2, 4, 1]]
Matrix[*array]

# изменение элементов матрицы
 matrix = Matrix[[1, -2, 3], [3, 4, -5], [2, 4, 1]]
array = matrix.to_a
array[0][0] = 0
 Matrix[*array]



# ------------------------------------- Work with files -------------------------------------

# Если нужно считать весь файл целиком, то надо использовать методы класса IO.
config = IO.read('README.md')
config.class
 "THAT IS A TEXT IN .md =  #{config}"


# Если нужно работать только с одним файлом на чтение и только одиним файлом на запись, то надо использовать перенаправление потока.
   #$stdin = File.open('выходные данные.txt')  # Открытие файла
   #puts $stdin
   #$stdout = File.open('выходные данные.txt', 'w') # модификатор доступа, то есть кодовое слово,
# по которому метод .open может предположить то, что вы будете делать с этим файлом (write)
# сначала стирает, затем записывает новые данные
   #$stderr = File.open('сообщения об ошибках.txt', 'a') # каждый раз файл будет перезаписываться.
# При помощи модификатора a

# puts 'Очень важные данные,'
# puts 'которые будут сохранены в файл'
# raise 'Принудительно вызываем ошибку'


# Универсальный способ, позволяет использовать закрытие файла (отсутствует в предыдущем)
string = File.open('README.md', 'r'){|file| file.read} # r - не обязательный параметра
# puts string
File.open('one.txt', 'w'){ |file| file.write string }
File.open('two.txt', 'a'){ |file| file.puts  string } # a -добавление к концу файла
# Запись данных в файл осуществляется методами puts, write и так далее.
#Замыкание метода .open (то есть фигурные скобки) нужен для того, чтобы при выходе из замыкания автоматически осуществлять закрытие файла.


# Удаление файла
File.delete('one.txt')
File.delete('two.txt')


# ------------------------------------- МЕТОДЫ -------------------------------------
 str = "    some string with spaces   "
 str.strip!
 str


arr = []

t = Time.now # новый объект Time
t+10 # добавляем 10 секунд
 Time.mktime(2000, 1, 1)          #  Двухтысячный год (Y2K)

require 'date'
d = Date.today
d+1 # на день больше

# поглощение аргументов метода
def sum(*members)  # звездочка сворачивает аргументы, метод получает массив в качестве аргумента
	members[0]+members[1]
end

 sum(10, 2) # 12



def sum(*members)
	initial = 0
	members.collect{ |item| initial += item }  # находим сумму произвольного колличества аргументов
	initial
end

sum(10, 3, 21, 117)

arr_to_sum = [10, 2, 10, 7]
 sum(*arr_to_sum) # перечесление всех элементов массива с помощью *



# ------------------------------------- ЗАМЫКАНИЯ -------------------------------------

# Замыкание передаётся методу через конструкцию do … end или фигурные скобки
 (1..3).map(){"Bu-ee!"}  #При передаче замыкания методу, замыкание следует за скобками аргументов.

 (1..3).map(){words = "Bu-ee!"; words}

# i=0
# (1..3).map{|i| ; puts i}
# puts i



# ------------------------------------- OTHER -------------------------------------

# puts, gets - выводит строку и получает строку от пользователя
# .chomp - удаляет пробелы после введеного слова
#  "your name is:"
# name = gets.chomp
#  "your name is #{name}"


 Math::PI
 Math::E
 Math.cos(Math::PI/3)
 Math.tan(Math::PI/4)
 Math.log(Math::E**2)
 (1 + Math.sqrt(5))/2


# ------------------------------------- ЦИКЛЫ -------------------------------------

command = ''

# while command != 'пока'
#   puts command
#   command = gets.chomp
# end



# ------------------------------------- TRY -------------------------------------
# botles_beer - метод вывода сообщений и удаления бутылок
# call_number - метод проверки правильности введеных данных пользователем



# проверка, если все же пользователь ввел правильные данные
# def botles_beer(botle)
# 	if botle == 0 or botle < 0
# 		puts "Sorry, this is empty bottles"
# 	elsif botle > 3
# 		while botle != 0
# 			if botle == 3
# 				botle -= 1
# 			elsif botle > 1
# 				puts "I have #{botle} botles in my shelf"
# 				botle -= 1
# 			else
# 				puts "I have #{botle} botle in my shelf"
# 				botle -= 1
# 			end
# 		end
# 		puts "Opps, i take one"
# 	else
# 		while botle != 0
# 			if botle > 1
# 				puts "I have #{botle} botles in my shelf"
# 				botle -= 1
# 			else
# 				puts "I have #{botle} botle in my shelf"
# 				botle -= 1
# 			end
# 		end
# 	end
# 	puts "And that is all"
# 	time_to_start = 1
# end


# проверка на число, если = 0 то не число, если = 0 то число
# def call_number(number)
# 	begin
# 		botles_beer(Integer(number))
# 	rescue
# 		puts "You're dumb. Try again. Enter a NUMBER!!!"
# 	end
# end

# запускаем програму
# time_to_start = 0
# while time_to_start == 0
# 	puts "Please, enter a number"
# 	number = gets.chomp
# 	call_number(number)
# 	break if time_to_start != 0
# end
# number = gets.chomp.to_i



	# Открытие файла и задание файла
# File.open("README.md") do |f|
# 	line = f.readline
# 	puts line
# end


	# Все операторы это выражения
x = 10
y = 11
# minimum = if x < y 
# 	then
# 		x 
# 	else
# 		y
# end
# puts minimum


# max = x > y ? x : y
# puts max



module Sudoku
	




require 'sudoku'
puts Sudoku.solve(Sudoku::Puzzle.ne(ARGF.readlines))
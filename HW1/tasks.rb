p "77 Дано целое число. Найти сумму его цифр."
p number = rand(100..500)

p "Sum of digits = #{number.digits.inject(:+)}"
p "---------------------------------------------------------------------------" 

p "78 Дано целое число. Найти произведение его цифр."
p number = rand(100..500)

p "Multiplication of digits = #{number.digits.inject(:*)}"
p "---------------------------------------------------------------------------" 

p "29 Дан целочисленный массив. Упорядочить его по возрастанию."
p arr = Array.new(10) { rand(-100...100) }

p"Ascending sorted array = #{arr.sort}"
p "---------------------------------------------------------------------------" 

p "30 Дан целочисленный массив. Упорядочить его по убыванию."
p  arr = Array.new(10) { rand(-100...100) }

p "Descending sorted array = #{arr.sort { |a, b| b <=> a }}"
p "---------------------------------------------------------------------------" 

p "1 Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
p  arr = Array.new(10) { rand(-100...100) }

res = arr.group_by.with_index do |el, i|
  i.odd? ? :odd_index : :even_index
end
 
p "Elements with even indexes: #{res[:even_index].join(', ')}."
p "Elements with odd indexes:  #{res[:odd_index].join(', ')}."
p "---------------------------------------------------------------------------" 

p "2 Дан целочисленный массив. Необходимо вывести вначале его элементы с нечётными индексами, а затем - с чётными."
p  arr = Array.new(10) { rand(-100...100) }

res = arr.group_by.with_index do |el, i|
  i.odd? ? :odd_index : :even_index
end

p "Elements with odd indexes:  #{res[:odd_index].join(', ')}."
p "Elements with even indexes: #{res[:even_index].join(', ')}."

p "---------------------------------------------------------------------------"

p "84 Дано натуральное число N. Найти результат следующего произведения 1*2*…*N."
p "N = #{n = rand(10)}"
factorial = [*1..n].inject(:*)

p "N Factorial = #{factorial}"
p "---------------------------------------------------------------------------"


p "44 Дан целочисленный массив. Найти максимальный нечетный элемент."
p  arr = Array.new(10) { rand(-100...100) }

p "Max odd element = #{arr.select{ |i| i.odd? }.max}"
p "---------------------------------------------------------------------------"

p "43 Дан целочисленный массив. Найти максимальный чётный элемент."
p  arr = Array.new(10) { rand(-100...100) }

p "Max even element = #{arr.select{ |i| i.even? }.max}"
p "---------------------------------------------------------------------------"

p "42 Дан целочисленный массив. Найти минимальный нечетный элемент."
p  arr = Array.new(10) { rand(-100...100) }

p "Min odd element = #{arr.select{ |i| i.odd? }.min}"
p "---------------------------------------------------------------------------"

p "41 Дан целочисленный массив. Найти минимальный чётный элемент."
p arr = Array.new(10) { rand(-100...100) }

p "Min even element = #{arr.select{ |i| i.even? }.min}"
p "---------------------------------------------------------------------------"

p "34 Дан целочисленный массив. Найти индекс максимального элемента."
p  arr = Array.new(10) { rand(-100...100) }
maxElem = arr.max
maxIndex=arr.index(maxElem)

p "Max element index = #{maxIndex}"
p "---------------------------------------------------------------------------"

p "33 Дан целочисленный массив. Найти индекс минимального элемента."
p arr = Array.new(10) { rand(-100...100) }

minElem = arr.min
minIndex=arr.index(minElem)

p "Min element index = #{minIndex}"
p "---------------------------------------------------------------------------"

p "39 Дан целочисленный массив. Необходимо найти количество минимальных элементов."
p arr = Array.new(10) { rand(-100...100) }

p "Quantity of minimal elements = #{arr.count{ |i| i == arr.min }}"
p "---------------------------------------------------------------------------"

p "40 Дан целочисленный массив. Необходимо найти количество максимальных элементов."
p arr = Array.new(10) { rand(-100...100) }

p "Quantity of maximum elements = #{arr.count{ |i| i == arr.max }}"
p "---------------------------------------------------------------------------"

p "9 Дан целочисленный массив. Заменить все положительные элементы на значение минимального."
p arr = Array.new(10) { rand(-100...100) }
min = arr.min
arr.map! { |e| e > 0 ? min : e }

p "Change all positive elements on min array element = #{arr}"
p "---------------------------------------------------------------------------"

p "10 Дан целочисленный массив. Заменить все положительные элементы на значение максимального."

p arr = Array.new(10) { rand(-100...100) }
max = arr.max
arr.map! { |e| e > 0 ? max : e }

p "Change all positive elements on max array element = #{arr}"
p "---------------------------------------------------------------------------"

p "11 Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального."
p arr = Array.new(10) { rand(-100...100) }
min = arr.min
arr.map! { |e| e < 0 ? min : e }

p "Change all negative elements on min array element = #{arr}"
p "---------------------------------------------------------------------------"

p "12 Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального."
p arr = Array.new(10) { rand(-100...100) }
max = arr.max
arr.map! { |e| e < 0 ? max : e }

p "Change all negative elements on max array element = #{arr}"
p "---------------------------------------------------------------------------"

puts "3 Дан целочисленный массив. Вывести номер первого из тех его элементов,
   которые удовлетворяют двойному неравенству:
   A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."

p  arr = Array.new(10) { rand(-100...100) }

p "Element number = #{arr.index(arr.select { |num| arr[0] < num && num < arr[-1] }.first) || []}"
p "---------------------------------------------------------------------------"

puts "4 Дан целочисленный массив. Вывести номер последнего из тех его элементов,
   которые удовлетворяют двойному неравенству:
   A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."

p arr = Array.new(10) { rand(-100...100) }

p "Element number  = #{arr.index(arr.select { |num| arr[0] < num && num < arr[-1] }.last) || []}"
p "---------------------------------------------------------------------------"

p "13 Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."
p arr = Array.new(10) { rand(-100...100) }
  arr = arr.rotate()

p "Left shifted array = #{arr}"
p "---------------------------------------------------------------------------"

p "14 Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию."
p arr = Array.new(10) { rand(-100...100) }
  arr = arr.rotate(-1)

p "Right shifted array = #{arr}"
p "---------------------------------------------------------------------------"

p "25 Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент."

def insertBeforePositive
    p nums = Array.new(10) { rand(-100...100) }   
    arr = []
    nums.each do |e|
      arr << 0 if e > 0
      arr << e
    end
    return "modified array = #{arr}"   
    end
    
p insertBeforePositive()
p "---------------------------------------------------------------------------"

p "26 Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент."

def insertBeforeNegative
    p nums = Array.new(10) { rand(-100...100) }
    zeroElem = 0
    arr=[]
    nums.each do |num|
        if num < 0
          arr.push(zeroElem)
          arr.push(num)
        else
            arr.push(num)
            end
        end
    
  return "modified array = #{arr}" 
end

p insertBeforeNegative()
p "---------------------------------------------------------------------------"

p "27 Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент."

def insertAfterPositive
    p nums = Array.new(10) { rand(-100...100) }
    zeroElem = 0
    arr=[]
    nums.each do |num|
        if num > 0
          arr.push(num)
          arr.push(zeroElem)
        else
            arr.push(num)
            end
        end
      return "modified array = #{arr}"
    end
    p insertAfterPositive()
p "---------------------------------------------------------------------------"

p "28 Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент."

def insertAfterNegative
    p nums = Array.new(10) { rand(-100...100) }
    zeroElem = 0
    arr=[]
    nums.each do |num|
        if num < 0
          arr.push(num)
          arr.push(zeroElem)
        else
            arr.push(num)
            end
        end
  return "modified array = #{arr}"   
end
p insertAfterNegative()

p "---------------------------------------------------------------------------"

p "65 Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные"
p arr = Array.new(10) { rand(-100...100) } 
arr = arr.partition(&:even?).inject(:concat)

p "modified array = #{arr}"
p "---------------------------------------------------------------------------"

p "66 Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные"
p arr = Array.new(10) { rand(-100...100) }  
arr = arr.partition(&:odd?).inject(:concat)

p "modified array = #{arr}"
p "---------------------------------------------------------------------------"
 
p "45 Дан целочисленный массив. Найти минимальный положительный элемент."
p arr = Array.new(10) { rand(-100...100) } 

p "Min positive element = #{arr.select{|i| i>0}.min}" 
p "---------------------------------------------------------------------------"

p "46 Дан целочисленный массив. Найти максимальный отрицательный элемент."
p arr = Array.new(10) { rand(-100...100) } 

p "Max negative element = #{arr.select{|i| i<0}.max}"
p "---------------------------------------------------------------------------"

p "87 Дан целочисленный массив. Найти все чётные элементы."
p arr = Array.new(10) { rand(-100...100) } 

p "All evens = #{arr.select{|i| i.even?}}"
p "---------------------------------------------------------------------------"

p "89 Дан целочисленный массив. Найти все нечётные элементы."
p arr = Array.new(10) { rand(-100...100) } 

p "All odds = #{arr.select{|i| i.odd?}}"
p "---------------------------------------------------------------------------"

p"88 Дан целочисленный массив. Найти количество чётных элементов."
p arr = Array.new(10) { rand(-100...100) } 

p "Evens count = #{arr.select{|i| i.even?}.count}"
p "---------------------------------------------------------------------------"

p"90 Дан целочисленный массив. Найти количество нечётных элементов."
p arr = Array.new(10) { rand(-100...100) } 

p "Odds count = #{arr.select{|i| i.odd?}.count}" 
p "---------------------------------------------------------------------------"

p "86 Дан целочисленный массив. Найти cреднее арифметическое его элементов."
p arr = Array.new(10) { rand(-100...100) }

p "Avg = #{arr.sum / arr.count}" 
p "---------------------------------------------------------------------------"

p "75 Дан целочисленный массив. Найти cреднее арифметическое  модулей его элементов."
p arr = Array.new(10) { rand(-100...100) }

p "Avg = #{(arr.inject(0){ |sum, i| sum + i.abs }.to_f) / arr.size}"
p "---------------------------------------------------------------------------"

p "76 Дан целочисленный массив. Найти cреднее арифметическое квадратов его элементов."
p  arr = Array.new(10) { rand(-100...100) }

p "Avg = #{(arr.inject(0){ |sum, i| sum + i.pow(2) }.to_f) / arr.size}"
p "---------------------------------------------------------------------------"
 
p "82 Дано число А и натуральное число N. Найти результат следующего выражения 1 + А + А*2 + А*3 + … + А*N."
a,n = 1,10
p "A = #{a} N = #{n}"

p "Result = #{(1..n).inject(1){ |s,i| s+a*i }}"
p "---------------------------------------------------------------------------"

p "95 Дан целочисленный массив и число К. Вывести количество элементов, меньших К."
p arr = Array.new(10) { rand(-100...100) }
k = rand(10) 
p "K = #{k}" 

p "Result = #{arr.select{|i| i<k}.count}"
p "---------------------------------------------------------------------------"

p "61 Дан целочисленный массив. Необходимо найти два наибольших элемента."
p  arr = Array.new(10) { rand(-100...100) }

p "Result = #{arr.sort.last 2}"
p "---------------------------------------------------------------------------"

p "62 Дан целочисленный массив. Необходимо найти два наименьших элемента."
p arr = Array.new(10) { rand(-100...100) }

p "Result = #{arr.sort.first 2}"
p "---------------------------------------------------------------------------" 
 
p "98 Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел."

p arr = Array.new(10) { rand(-100...100) }
puts "Indexes"
p temp = (1...arr.size).select{ |x| arr[x] < arr[x-1] }

puts "number of elements = #{temp.size}"
p "---------------------------------------------------------------------------" 

p "31 Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность."
p arr = Array.new(10) { rand(-100...100) }

p "Result = #{(0...arr.size).sort_by{ |i| arr[i] }.reverse}"
p "---------------------------------------------------------------------------" 

p "32 Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность." 
p arr = Array.new(10) { rand(-100...100) }

p "Result = #{(0...arr.size).sort_by{ |i| arr[i]}}"
p "---------------------------------------------------------------------------"

p "5 Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять."

     def addFirstToEvens
        p arr = Array.new(10) { rand(-100...100) }
        arr.each do |el|
          index = arr.index(el)
          if el.even? && index != 0 && index != (arr.size()-1)
            arr[index] = el + arr.first
          end
        end
        return "Modified array = #{arr}"
     end
    p addFirstToEvens() 
p "---------------------------------------------------------------------------"

p "6 Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять."
     
 def addLastToEvens
   p arr = Array.new(10) { rand(-100...100) }
   arr.each do |el|
   index = arr.index(el)
    if el.even? && index !=0 && index != (arr.size()-1)
    arr[index] = el + arr.last
    end
  end
   return "Modified array = #{arr}"
  end
p addLastToEvens()
p "---------------------------------------------------------------------------"

p "7 Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять."
     
def addLastToOdds
p arr = Array.new(10) { rand(-100...100) }
arr.each do |el|
    index = arr.index(el)
    if el.odd? && index != 0 &&  index != (arr.size()-1)
      arr[index] = el + arr.last
    end
   end
   return "Modified array = #{arr}"
end

p addLastToOdds
p "---------------------------------------------------------------------------"

p "8 Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять."
    
def addFirstToOdds
    p arr = Array.new(10) { rand(-100...100) }
    arr.each do |el|
        index = arr.index(el)
         if el.odd? && index != 0 && index != (arr.size()-1)
          arr[index] = el + arr.first
        end
     end
     return "Modified array = #{arr}"
    end
    
p addFirstToOdds()
p "---------------------------------------------------------------------------"

p "79 Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять."

def powElements
  p arr = Array.new(10) { rand(-10...10) }
  arr.each_with_index do |el,i|
  if el < 0
      arr[i] = el**2
  elsif el > 0
      arr[i] = el**3
  else
      arr[i] = 0
  end
  end
  return "Modified array = #{arr}"
  end

 p powElements()
 p "---------------------------------------------------------------------------"

 p "91 Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false."

 def elementLower
  p arr = Array.new(10) { rand(-100...100) }
  k = rand(10) 
  p "K = #{k}" 
  return "Result = #{arr.any?{ |el| el < k }}"
  end
  
 p elementLower()
 p "---------------------------------------------------------------------------"
 
 p "92 Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false."

 def elementBigger
  p arr = Array.new(10) { rand(-100...100) }
  k = rand(10) 
  p "K = #{k}" 
  return "Result = #{arr.any?{ |el| el > k }}"
  end
  
 p elementBigger()
 p "---------------------------------------------------------------------------"

 p "93 Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false."

 def allElementsLower
  p arr = Array.new(10) { rand(-100...100) }
  k = rand(10) 
  p "K = #{k}" 
  return "Result = #{arr.all?{ |el| el < k }}"
  end
  
 p allElementsLower()
 p "---------------------------------------------------------------------------"

 p "94 Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false."

 def allElementsBigger
  p arr = Array.new(10) { rand(-100...100) }
  k = rand(10) 
  p "K = #{k}" 
  return "Result = #{arr.all?{ |el| el > k }}"
  end
  
 p allElementsBigger()
 p "---------------------------------------------------------------------------"

 p "---------------Total Tasks Completed: 54---------------"


 




    
    





    


 																								


 


 




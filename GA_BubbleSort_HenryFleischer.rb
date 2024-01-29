#Returns an array of "total" random numbers between 0 and 10,000
def generaterandoms total
  numbers = [0]
  i = 0
  while i < total
    numbers << Random.rand(10000)   # << appends to the end of an array. We don't need to make an object to use the random class, although if I wanted to use a specific seed, I could.
    i += 1
  end
  numbers
end

class Array #Existing array class
    #Sorts using bubblesort.
  def bubblesort   #Add bubblesort method to array class
    numbers = self
    numbers.count.times { #Outer loop, around entire array. Each cycle increases how sorted the array is. Should happen at most n times.
      swapped = false     #Shows if anything has been moved
      i = 0
      numbers.count.times { #Inner loop, each cycle is for one element. Happens n times every time the outer loop cycles.
        i += 1
        nextElement = i + 1
        if !numbers[i].nil? && !numbers[i + 1].nil? #Check if an element is not nil. Attempting to compare a nil with a non-nil number will result in a crash!
          if numbers[i] > numbers[nextElement]  #If the number on the left is greater than the number on the right, swap them.
            swapped = true  #Indicates that the list is not yet sorted
            swapnum = numbers[i]    #Storage value for swapping numbers
            numbers[i] = numbers[nextElement]
            numbers[nextElement] = swapnum
          end
        end
      }
      if swapped == false #Check if the list is already sorted. If it is, break, to save ourselves some comparisons we don't need to do.
        puts "Sorted early"
        break
        puts "Oh no"
      end
    }
  end
end
#Override array.to_s (basically array.toString in C#) so it returns a more readable format
class Array
    def to_s()
        stringVal = ""
        self.each(){|x|
                    stringVal += x.to_s + ", "
            }
        stringVal
    end
end

numbers = [0]
numbers = generaterandoms(25)
puts "Unsorted numbers, length ~25"
puts numbers.to_s
numbers.bubblesort()
puts "Sorted numbers, length ~25"
puts numbers.to_s

numbers = generaterandoms(75)
puts "Unsorted numbers, length ~75"
puts numbers.to_s
numbers.bubblesort()
puts "Sorted numbers, length ~75"
puts numbers.to_s

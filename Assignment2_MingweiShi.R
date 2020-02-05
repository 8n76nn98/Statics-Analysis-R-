#iniitaliation for n_stay and n_swith in order to compute its average
n_stay <- 0    
n_switch <- 0

for ( i in 1:100) {
  #for loop syntax variable from start to end
  
  #The first thing we want to do is to set up our three doors. 
  #The following code creates a vector named door that 
  #contains the numbers 1, 2, and 3.
  door <- c(1,2,3) 
  #this keyword to set breakpoint in RStudio in order to debug easily
  browser()
  #Next, we need to randomly select one of the doors to have the car 
  #behind it with the following code. 
  cardoor <- sample(door,1) 
  #The variable cardoor now contains 
  #a randomly selected value from those in the vector door.
  #We now need to randomly select the contestants choice of door using similar code.
  choice <- sample(door,1) 
  # If the contestant has chosen the door with the car, we can reveal either of the goat doors. 
  # However, if the contestant chose a door with a goat,
  # we have only one option for a door to reveal (since we will never reveal the car.
  # We can handle this with an if else loop.
  # First, lets create a new vector that holds the values corresponding to goats using the following code:
  goatdoors <- setdiff(door, cardoor) 
  #Next, we will identify the options we have for the reveal using similar code.
  reveal_options <- setdiff(goatdoors, choice) 
  # Now we can implement our if else loop.
  # First, we have the situation where there are two goats to choose from,
  # and we select one randomly and assign it to the variable reveal.
  if (choice == cardoor) { 
    reveal <- sample(reveal_options,1) 
  }  
  else {
    #Alternatively, there will be only a single element in 
    #reveal_options which we assign to reveal.
    reveal <- reveal_options 
  }
  #Finally, we can create a new vector which identifies the two remaining unrevealed doors
  remaining_doors <-setdiff(door, reveal)
  #Lets create a new variable recording the final choice of door if the contestant switches.
  newchoice <- setdiff(remaining_doors, choice)   
  
  if (choice == cardoor) {
    # counting the stay number
    n_stay <- n_stay + 1
    #This is code that i have added 
    #We can now print the results of the game using two more if else loops.
    print(paste("In",i,"th term The result is :Stay:You got a car"))
  }

  
  if (newchoice == cardoor) {
    #counting the switch number
    n_switch <- n_switch + 1
    #This is code that I added 
    print(paste("In",i,"th term The result is :Switch:You got a car"))
  }
 
 
}
#print the avaerage of stay
print(n_stay/100)
#print the average of switch
print(n_switch/100)


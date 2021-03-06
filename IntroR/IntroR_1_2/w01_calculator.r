#################    Introduction to R Programming   ##################
#                                                                     #
#                           MMU FUTURES                               #
#                       Christian Devenish                            #
#                                                                     #
#                     June 2015, Manchester, UK                       #
#                 Manchester Metropolitan University                  #
#                                                                     #
#######################################################################

####  Activity 1. Using R as a calculator ####

# 1.1 Practise these operations with all the operators (plus, minus, multiplication etc).
# Take care with the order of operators. Calculate the result in your head before you do
# it in R. Compare with your neighbour

1 + 1
10 - 5
10 / 2
2 * 5  # try it with or without spaces. Is there a difference
2*5
    2*5
# Spaces can make the code easier to read (very important!!), but don't use more than one 
# at a time

2^3  # 2 to the power of three


## Other operators (don't worry if you don't do this part)

10 %% 5 # modulo (remainder of integer division)
10 %% 6

10 %/% 5  # integer division (result of the division to the nearest integer)
10 %/% 6

## See this for more help:
? Arithmetic #  for all operators

# or with the help() function
help(Arithmetic)

## Careful with the order of the operators - which operators go first? 
#  ^, * /, + -  etc...

# see this for the order (ignore the operators you are not familiar with for the moment)
? Syntax

# Is there a difference between these sums?

10 + 10 / 2 - 1

(10 + 10) /2 - 1

8 - 4 * 4 + 2 #  Remember that in RStudio you can select your code in the scrip and execute it with ctrl + enter. Try it!

# If you're not sure about the order, use parenthesis...
10 + (10 / 2) - 1
10 + 10 / 2 - 1

12/24*100
(12/24)*100

# 1.2 Calculate... 

# Complete these operations using any operators and/or parenthesis ()

# Examples

#i#  10  5   2   8   = 3.2
10 / 5 ^ 2 * 8 

#ii#  10 5  5  2 = 2 
(10 - 5) / 5 * 2 

# Now you!
#iii#  2  2  4  5  10 = 51

#iv#  3  3  12  3  10 = 30

#v# Write an operation that results in 50, using these operators: *  /  ^  
#EXAMPLE
2 * 100 / 2^2

#vi#  Write an operation that results in 39 using these operators: ^  /  *  +


#vii# Write an operation that gives 120 using at least 5 different operators:



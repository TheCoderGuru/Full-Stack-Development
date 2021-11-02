# Read in a value for the user and store it in a string variable

sumOfMoneyInCents = int( input( 'Please enter the number of 1 cent pieces: ' ) )

numberof25CentsNeeded = sumOfMoneyInCents // 25
numberof1CentRemaining = sumOfMoneyInCents % 25

print( 'Number of 25 cent pieces: ', numberof25CentsNeeded )
print( 'Number of 1 cent pieces: ', numberof1CentRemaining )

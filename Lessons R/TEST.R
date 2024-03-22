# Operators in R
# Equals to - <-
# Remainder - %%
# Returns integer -  %/%
8 %% 3
-8 / 3

-8 %/% 3

# Determining types
x <- TRUE
typeof(x)
mode(x)
storage.mode(x)
class(x)
# Checking if a variable is an integer
is.integer(x)
# Creating integer value
typeof(as.integer(8) )
#or
8L
x = 10
print(x)
50 -> w

# Multiple assignment
a<-b<-c<-8
# in built commands
month.abb
month.name
letters
LETTERS
pi
#SEQUECES IN R
seq() 
#SELECTION CONTROL
3 -> x
if(x >=1){
  print('Positive number')
} else if(x==0){
  print('Zero')
} else {
  print('Negative number')
}

ifelse(x > 1,'Greater than one','less than one')

ifelse(x%%2==0,'Even','Odd')


#ITERATIVE CONTROL
for(i in seq(1,10,1)) {
  print(i)
}
count=0
for(i in -1:10){
  count = count + 1
}
print(count)

assign('f',6)
while(f>0) {
  print('yow')
  f <- f-1
}  

s = 1
repeat {
  print(s)
    if(s>5)break
  s <- s+1
  
}

# Next statement
for(i in 1:10) {
  if(i%%2!=0)
    next
  print(i)
}


#DEFINING FUNCTIONS IN R 
sum = function(a,b){
  c = a + b
  return(c)
}
sum(1,2)

counter=function(x,y){
  count=0
  for(i in x)
    if(i == y){
      count=count+1
  }      
  return(count)
}
numbers = list(1,2,3,5,3,7,3,7,7)
counter(numbers,7)

# INLINE FUNCTIONS
sum = function(x,y) x+y


# VECTORS
# USING 'c' TO CREATE A VECTOR
x = c(10,20,30,40,50)
typeof(x)
# rep() repeats an object a specified number of times
p<- rep(c(10,20,30),times=3)
assign('v',rep(c(11,21,31),times=3))
v
l = c(p,v)
counter(l,21)

# USING VECTOR FUNCTION TO CREATE A VECTOR
# Empty vector
d<- vector('numeric',length=7)


length(l)
length(d)

# Indexing and accessing objects in vectors
assign('g',c(seq(10,50,5)))
# Negative indexing excludes the object in the negated index
g[-2]
# Obtaining objects in vectors as vectors using their indices

library('dplyr')

g[c(1,5,7)]
# trying to access an index that is not in a vector N/A is returned
g[11]
# Modifying vectors
# Adding objects
g[12]=65
g[-3] = 0 # replaces all object in vector except third index

# Using logical operators to access objects in a vector
assign(letters[17],c(T,F,T,T,F,T,T,T,F,T))

g[s]
g[q]
g[c(T,F)]
# if the number of logical  values 
# is less than the number of indices
# of vector the logical values are repeated
# until the indices of the vectors are subjected to
# the logical values

d<-c(T,T,F,F)
g[d]

# if the number of logical values exceeds the 
# indices of the vectors all the logical values are executed
# but the extra logical values return N/A

g
t = c(T,F,T,T,F,F,T,T,F,T,T,F,T)
g[t]

# Using a for loop to access objects in a vector
for(i in 1:length(g))print(g[i])
# OR
for(i in seq_along(g))print(g[i])
seq_along(g) #returns number of objects in a vector
# OR
for (i in g)print(i)

# Matching operator
g
35%in%g #checks if an object is in a vector
list(35,55)%in%g

# Arithmetic operations in vectors
g
g+2
g*2
g**2
g%%2
g%/%2
sqrt(g)

l# Adding vectors
# Length of vectors need not to be of the same length
f = c(seq(0,6,2))
h = c(seq(1,7,2))
f+h

# Vector methods
sum(g)
prod(g)
rev(g) # Returns reverse order of the vector
sort(g,decreasing = T)
f%*%h
# OR
crossprod(f,h)
 # Out of product multiplication
f %o% h #Returns a product of each element in each vector
f
h
# Vector coercion
# All objects in a vector are converted to the same class
# By default R converts all objects in a vector to the easiest type
# Implicit coercion
r = c(10,'john',20,30.75) #Returns characters
s = c(10,T) #Returns integers
t = c('john',T) #Returns characters
list(r,s,t)
# Explicit coercion
#coercing objects in a vector to logical values
k = c(10,4,7,8,0)
n=c('Turu','Shitty','Makena','Michi')
as.logical(n)
as.logical(k)
# coercing objects in a vector to characters
as.character(k)

# coercing objects in a vector to numeric
j = c('jack','john','derek')
as.numeric(j)j
# LOGICAL VECTORS
x=g[1:6]
x
g
p = x>=30 & x<35
p
y<-c(20,17,2,10,43,4)
x>y
length(x)
# which()-returns indices of vector where the argument is satisfied
which(y<30&y>5)
y[which(y<30&y>5)]


# FACTORS
# Represents categorical data
w = factor(c('male','female','male','male','female'))
#table()-returns table of counts of different objects in a vector
table(w)


# MATHEMATICAL FUNCTIONS IN R
d = c(2.3,4.6,8,34,-2.4,9.7)
abs(d)
ceiling(d)
floor(d)
round(d)
trunc(d)
exp(d)
log(16, base=4)
factorial(d)

# Random numbers
rnorm(7)
rnorm(4,mean=0,sd =1)


# Matrix
b = matrix(c(seq(1,9,1)),nrow=3,ncol=3)
b
c= matrix(c(seq(1,12,2)),nrow=2,ncol=3,byrow=T)
c
n = matrix(rnorm(6,mean=7,sd=1))
dim(n)<-c(2,3)
nrow(o)
ncol(o)
dim(o) # returns rows and columns in that order
length(c)
# Diagonal matrix
assign('m',matrix(1:9,3,3))
m
n <- diag(1:3,4)
n

diag(m)
# Naming rows and columns of a matrix
m<- matrix(c(2,3,4,0,1,2,-1,-3,5),nrow=3,ncol = 3,byrow = T)
m
rownames(m) = c(letters[1:3])
colnames(m) = c(LETTERS[1:3])
m

# Accessing objects in a matrix
a = matrix(c(2,3,4,0,1,2,-1,-2,5,8,6,-3),nrow = 4,ncol = 3,byrow=T )
a[1,2]
a[4,3]
a[1,]
a[,1]
a[nrow(a),] #returns last row
a[,ncol(a)] #returns last column

a[-1,] #Excludes first row
a[,-3] #Excludes third column
a[2:3,-3] #returns second and third row excluding third column  
a[-1,2:3] #return second and third column excluding first row

# Using vectors
a[c(1,3),]
a[,c(1,3)]
a
# Using rbind() and cbind() in matrices
b <-rbind(a,c(10,11,12)) #Adds another row with 10,11,12
c = rbind(a,b) #binds(concatenates) matrices a and b

assign('b',cbind(a,c(10,11,12,13))) #Adds a column with 10,11,12,13
d = cbind(a,b) #binds matrices a and b side by side

# Matrix operations
a=a[-4,]
b=matrix(c(4,-1,3,7,9,5,1,2,8),nrow=3,ncol=3,byrow=T)
a
b
a+b #Addition
a-b #Subtraction
a*b #multiplication #multiplies element by element of each matrix
a%*%b #matrix multiplication
a/b #division #divides element by element of each matrix

a%/%b #matrix division
t(a) #returns transpose of a matrix
# transpose is like setting the byrow argument in a matrix to false
solve(a) #returns inverse matrix of a
dim(a)
a[-nrow(a),]->a
a %*% solve(a)
# Matrix specific funtions
m = matrix(1:9,3,3,byrow=T)
rowSums(m) #returns sum of each row of a marix
rowMeans(m) #returns mean of each row

colSums(m) #returns sum of each column
colMeans(m) #returns mean of column

# or
apply(m,1,sd) #sum of rows
apply(m,2,sd) #sum of columns
assign('s',matrix(c(rnorm(6,sd=.2,mean=3)),nrow=2,ncol=3))
apply(s,1,FUN=sd)
# LISTS
x = list('john',10,T)
# unlike in  vectors there is no implicit coercion in lists
# creating lists using vectors
rollno = c(101,102,103)
snames = c('john','jack','james')
marks = c(78.25,59.45,63)
students = list(rollno,snames,marks)
students
typeof(students)
mode(students)
storage.mode(students)
class(students)

# Accessing objects in a list
students[[1]][1] #returns first element of  first vector in a list
# Changing objects in a list
students[[1]][2] = 107

# List subset operations
students = list('id'=rollno,'names'=snames,'score'=marks)
students$id
# OR
students[c(1,3)] #returns id and score
# OR
students[c('id','score')]

# List concatenation
age <- list('age'=c(19,20,45))
# Concatenating age to students
c(students,age)




# DATAFRAMES
# Creating Dataframes
id = c(101,102,103)
names = c('john','jack','james')
score = c(78.25,59.45,63)
students <- data.frame(id,names,score)
students
# Accessing objects in a dataframe
# accessing rows
students[1:2,] #returns first and second rows 
# accessing columns
students[,1:2]
students[-1,-2] #returns objects of the dataframe excluding 
# first row and second column
students[c(1,3),c(1,3)]
students[[3]][1] #third column first row
students[3,1]
students$id[3] #obtains third element in the id column

# Subset()
# returns a set of objects that satisfy a specific argument
top_student = subset(students,score>73&id>100,select=c(names,score))
top_student

# rbind() and cbind() in dataframes
rbind(students,data.frame(id=104,names='jean',score=83.45))
cbind(students,data.frame(age=c(17,22,26)))

# edit()
students_tables = edit(students)
# Returns tabular data from a dataframe 


# DEALING WITH MISSING DATA
assign('x',c(10,4,NA,7,NaN))
is.na(x) #returns logical values
is.nan(x)
# clearing NA and NaN values
y<-is.na(x)
x[!y] #! negates all trues to false and vice-versa hence only true
# values which were initially false are returned

id = c(101,102,103,104,105)
temperature = c(25.8,34.2,NA,27.4,20.5)
wind = c(56,68,29,45,NaN)
humidity = c(25,45,85,NaN,44)
info = data.frame(id,temperature,wind,humidity)
info
missing_info = complete.cases(info)
missing_info #TRUE refers to rows without NA or NaN values the
#reverse is also true
info[missing_info,]


D=read.csv('Global YouTube Statistics.csv',header = T )

D[is.na(D)]

D=D[-complete.cases(D)]
D[-is.na(D)]

library('dplyr')
iris=read.csv('Iris.csv')
summary(iris$Petal.Length)
D=D[complete.cases(D),]
colSums(is.na(D))
dim(distinct(D))
dim(D)
8%in%D
names(D)
distinct(D$channel_type)


library('dplyr')
GE_data=read.csv('GEStock.csv')
IBM_data=read.csv('IBMStock.csv')
sd(GE_data$StockPrice)
sd(IBM_data$StockPrice)
cov(GE_data$StockPrice,IBM_data$StockPrice)
runif(10,min=12,max=18)



plot(GE_data$StockPrice,
     xlab = 'Date',
     ylab = 'Stockprice',
     col = 'red',
     type='l',
     main = 'Niaje',
     )
#Cummulative frequency curves
#Unniform distribution
x<- runif(200)
h = hist(x,plot=F)
cumsum(h$counts) -> sm
barplot(sm)
#Normal distribution
x<- rnorm(100,50,10)
hist(x,probability = T)
lines(density(x),col='blue')
cor(rock$shape,rock$perm)
cov(rock$shape,rock$perm)

rug(x)

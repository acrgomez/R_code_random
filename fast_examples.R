a = 5
f <- function(){
    print(a)
    a=3
    print(a)
}
f()



x <- 0L
for (i in 1:10000) {
    x <- x + 1
}


testmatrix = matrix(1:9,ncol=3)
testdf = data.frame(testmatrix)
sum(testmatrix) == sum(testdf)


population = 10
for (i in 1:5){
    population = c(population, population[i]*1.3)
}


population=c(10,NA,NA,NA,NA,NA)
for (i in 2:length(population)){
    population[i] = population[i-1]*1.3
}


population = rep(10,6)
population = population*1.3^seq(0,5)




    
dummy <- function(x){
    population=c(10,rep(NA,x))
    for (i in 2:length(population)){
        population[i] = population[i-1]*1.3
    }
}
system.time(for(i in 1:1000) dummy())  
compiled_dummy <- compiler::cmpfun(dummy)
system.time(for(i in 1:1000) compiled_dummy())   

require(parallel)    
system.time(lapply(5:2000,FUN=dummy))
system.time(mclapply(5:2000,FUN=dummy))






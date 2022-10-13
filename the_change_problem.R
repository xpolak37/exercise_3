# the change problem
# convert some amount of money into the fewest number of coins

CZKChange <- function(M) {
    # 50 coins
    num_of_50 <- floor(M/50)
    M <- M - (50*num_of_50)
    
    # 20 coins
    num_of_20 <- floor(M/20)
    M <- M - (20*num_of_20)
    
    # 10 coins
    num_of_10 <- floor(M/10)
    M <- M - (10*num_of_10)
    
    # 5 coins 
    num_of_5 <- floor(M/5)
    M <- M - (5*num_of_5)
    
    # 2 coins 
    num_of_2 <- floor(M/2)
    M <- M- (2*num_of_2)
    
    number_of_coins <- num_of_50 + num_of_20 + num_of_10 + num_of_5+ num_of_2 + M
}

number_of_coins <- CZKChange(68)


CZKChange2 <- function(M,array_of_coins) {
  sum <- 0
  how_many <- length(array_of_coins)
  my_list <- rep(0,how_many)
  i <- 1
  while (M > 0){
    if (M >= array_of_coins[i]){
      num <-  floor(M/array_of_coins[i])
      M <- M - array_of_coins[i]*num
      my_list[i] <- num
    }
    i <- i +1
  }
  return(my_list)
}

list <- CZKChange2(68,c(50,20,10,5,2,1))

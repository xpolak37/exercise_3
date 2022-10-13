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

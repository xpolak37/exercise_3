
IndexOfMin <- function(array, first, last) {
  index <- first
  for (k in (first+1:last-1)){
    if (array[k] < array[index]) {
      index <- k
    }}
    return (index)
}

index <- IndexOfMin(c(4,2,5,3,8),1,5)



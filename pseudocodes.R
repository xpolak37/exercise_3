
IndexOfMin <- function(array, first, last) {
  index <- first
  for (k in (first+1):last){
    if (array[k] < array[index]) {
      index <- k
    }
    }
    return (index)
}

index <- IndexOfMin(c(5,2,1,8),1,4)

# selection sort, more info: https://www.geeksforgeeks.org/selection-sort/

SelectionSort <- function(a,n) {
  for (i in (1:(n-1))) {
    j <- IndexOfMin(a, i, n)
      help_var <- a[i]
      a[i] <- a[j]
      a[j] <- help_var
  }
  return(a)
}

my_array <- SelectionSort(c(4,2,5,3,8),5)

RecursiveSelectionSort <- function(a,first,last) {
  if (first < last) {
    index <- IndexOfMin(a, first, last)
    help_var <- a[first]
    a[first] <- a[index]
    a[index] <- help_var
    a <- RecursiveSelectionSort(a, first +1, last)
  }
  return (a)
}

my_array <- RecursiveSelectionSort(c(4,2,5,3,8),1,5)

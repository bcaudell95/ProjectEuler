import Data.List

list low high = [a**b | a <-[low..high], b<-[low..high]]

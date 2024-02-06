##ggplot 
#graph qui marchent
library(ggplot2)

cara=diamonds[[1]]
colo=diamonds[[3]]
clar=diamonds[[4]]
dept=diamonds[[5]]
tabl=diamonds[[6]]
pric=diamonds[[7]]

xx=diamonds[[8]]
yy=diamonds[[9]]
zz=diamonds[[10]]


ggplot( data = diamonds)+geom_point(mapping = aes(x = cara, y = pric, group=clar, color=clar))


ggplot( data = diamonds)+geom_point(mapping = aes(x = cara, y = pric, group=tabl, color=colo))       


#graph qui marchent pas

library(ggplot2)   
xx=diamonds[[8]]
yy=diamonds[[9]]
zz=diamonds[[10]]

ggplot( data = diamonds)+geom_point(mapping = aes(x = xx, y = yy, group=clar, color=clar))+geom_contour_filled(aes(zz))
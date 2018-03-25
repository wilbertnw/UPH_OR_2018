library(lpSolveAPI)

question4 <- make.lp(3,2)
set.column(question4,1,c(10,6,8))
set.column(question4,2,c(5,20,10))

set.constr.type(question4,c("<=","<=","<="))
set.rhs(question4,c(600,600,600))
set.objfn(question4,c(2,1))

lp.control(question4, sense="max")

question4

solve(question4)

get.objective(question4)
get.variables(question4)

plot(question4)
get.sensitivity.rhs(question4)

library(ggplot2)

ggplot(data_frame(x = c(0, 100)), aes(x = x)) + 
  stat_function(fun = function(x) {(600 - 10*x)/5}, aes(color = "process 1")) + 
  stat_function(fun = function(x) {(600 - 6*x)/20 }, aes(color = "process 2")) + 
  stat_function(fun = function(x) {(600 - 8*x)/10 }, aes(color = "process 3")) +
  theme_bw() + 
  scale_color_discrete(name = "Function") + 
  geom_polygon(
    data = data_frame(
      x = c(0, 0, 60, Inf),
      y = c(0, 120, 0, 0)
    ),
    aes(
      x = x, y = y, fill = "Constraint 1"
    ),
    inherit.aes = FALSE, alpha = 0.4
  ) + 
  geom_polygon(
    data = data_frame(
      x = c(0, 0, 100, Inf),
      y = c(0, 30, 0, 0)
    ),
    aes(
      x = x, y = y, fill = "Constraint 2"
    ),
    inherit.aes = FALSE, alpha = 0.4
  ) + 
  geom_polygon(
    data = data_frame(
      x = c(0, 0, 75 , Inf),
      y = c(0, 60, 0, 0)
    ),
    aes(
      x = x, y = y, fill = "Constraint 3"
    ),
    inherit.aes = FALSE, alpha = 0.4
  ) + 
  scale_fill_discrete(name = "Constraint Set") + 
  scale_y_continuous(limits = c(0, 200))
  scale_y_continuous(limits = c(0, 200))
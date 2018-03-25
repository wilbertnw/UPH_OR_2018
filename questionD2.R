library(lpSolveAPI)

questionD2 <- make.lp(3,4)
set.column(questionD2,1,c(20,15,28))
set.column(questionD2,2,c(30,10,12))
set.column(questionD2,3,c(40,5,8))
set.column(questionD2,4,c(20,10,4))

set.constr.type(questionD2,c("<=","<=","<="))
set.rhs(questionD2,c(500,380,450))
set.objfn(questionD2,c(75,70,55,45))

lp.control(questionD2, sense="max")

questionD2

solve(questionD2)

get.objective(questionD2)
get.variables(questionD2)

plot(questionD2)
get.sensitivity.rhs(questionD2)
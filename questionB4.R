library(lpSolveAPI)

questionB4 <- make.lp(5,2)
set.column(questionB4,1,c(1,1,1,0,0))
set.column(questionB4,2,c(1,0,0,1,1))

set.constr.type(questionB4,c(">=",">=","<=",">=","<="))
set.rhs(questionB4,c(20,5,12,6,10))
set.objfn(questionB4,c(1,1))

lp.control(questionB4, sense="min")

questionB4

solve(questionB4)

get.objective(questionB4)
get.variables(questionB4)

plot(questionB4)
get.sensitivity.rhs(questionB4)
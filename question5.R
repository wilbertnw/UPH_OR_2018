library(lpSolveAPI)

question5 <- make.lp(2,2)
set.column(question5,1,c(2,1))
set.column(question5,2,c(4,0))

set.constr.type(question5,c("<=","<="))
set.rhs(question5,c(240,100))
set.objfn(question5,c(20,50))

lp.control(question5, sense="max")

question5

solve(question5)

get.objective(question5)
get.variables(question5)

plot(question5)
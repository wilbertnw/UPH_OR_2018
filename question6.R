library(lpSolveAPI)

question6 <- make.lp(2,2)
set.column(question6,1,c(40,35))
set.column(question6,2,c(550,580))

set.constr.type(question6,c("<=","<="))
set.rhs(question6,c(800,600))
set.objfn(question6,c(800,600))

lp.control(question6, sense="max")

question6

solve(question6)

get.objective(question6)
get.variables(question6)

plot(question6)

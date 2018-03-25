library(lpSolveAPI)

question8 <- make.lp(2,2)
set.column(question8,1,c(1,1))
set.column(question8,2,c(1,1))

set.constr.type(question8,c("=",">="))
set.rhs(question8,c(30,10))
set.objfn(question8,c(1500,1000))

lp.control(question8, sense="min")

question8

solve(question8)

get.objective(question8)
get.variables(question8)

plot(question8)

library(lpSolveAPI)

question8 <- make.lp(2,2)
set.column(question8,1,c(1,1))
set.column(question8,2,c(1,1))

set.constr.type(question8,c("=",">="))
set.rhs(question8,c(30,10))
set.objfn(question8,c(1500,1500))

lp.control(question8, sense="max")

question8

solve(question8)

get.objective(question8)
get.variables(question8)


plot(question8)
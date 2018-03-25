library(lpSolveAPI)

question9 <- make.lp(4,2)
set.column(question9,1,c(5,5,5,5))
set.column(question9,2,c(6,4,6,4))

set.constr.type(question9,c("<=","<=",">=",">="))
set.rhs(question9,c(150,200,30,40))
set.objfn(question9,c(150,145))

lp.control(question9, sense="max")

question9

solve(question9)

get.objective(question9)
get.variables(question9)
plot(question9)
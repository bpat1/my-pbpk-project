#test mr gsolve
library(mrgsolve)
mod <- mcode('test', '
$PARAM CL = 1, V = 10
$CMT CENT
$ODE dxdt_CENT = -(CL/V) * CENT;
$TABLE double CP = CENT / V;
$CAPTURE CP
')
out <- mrgsim(mod, events = ev(amt = 100, cmt = 'CENT'), end = 24)
head(out)

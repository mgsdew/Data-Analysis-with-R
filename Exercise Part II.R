
# install a package named 'haven' from Package option and now load the package using library() command
library(haven)

# 'haven' library can read data from below 4 types of file
stata.df = read_dta("data.dta")
spss.df = read_sav("data.sav")
sas.df = read_sas("data.sas7bdat")
sasxport.df = read_xpt("data.xpt")



getwd()
#setwd()
patient.df = read.csv("Patient.csv")
head(patient.df)

# Names of the variables
names(patient.df)

# Check the structure of the data set
str(patient.df)

# Calculate the average height of patients 
mean(patient.df$Height)  # Output is NA as there are some missing values

# Calculating averages with missing values
mean(patient.df$Height, na.rm = TRUE)


# One-way table of counts
table(patient.df$Gender)

#Same table of counts using 'with'
with(patient.df, table(Gender))


# Table of proportions for the gender variable
prop.table(table(patient.df$Gender))


# Convert to % and round to 1dp
round(prop.table(table(patient.df$Gender)) * 100, 1)

# Two-way frequency tables 
gender_eth_table = with(patient.df, table(Gender, Ethnicity))
gender_eth_table

#                               Two-way frequency tables (proportions)

# We can calculate proportions for each row (margin = 1) or for each column (margin = 2)



# Calculate proportions across gender for each ethnicity
prop.table(gender_eth_table, margin = 2)


prop.table(gender_eth_table, margin = 1)


#                                     Functions

sem_function = function(input){
  s = sd(input, na.rm = TRUE) # Calc std. deviation
  print(s)
  N = length(input)           # Calc sample size
  print(N)
  s / sqrt(N)                 # Definition of SEM
}

sem_function(patient.df$Weight)


# Extract the first patient's height
patient.df$Height[1]

# Extract the first 5 patients' heights
patient.df$Height[1:5]

#Extract the heights of the third and eighth patients
patient.df$Height[c(3, 8)]

# Subset patient.df to only include the first 5 patients' data on
# the 4th, 5th, 6th, and 7th variables (Ethnicity, Weight, Height, Smoke)
patient.df[1:5, 4:7]

# Select those cases for which the value of Smoke is equal to 1
smokers <- which(patient.df$Smoke == 1)
smokers




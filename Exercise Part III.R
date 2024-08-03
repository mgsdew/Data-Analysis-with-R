
# Read another CSV

lake.df = read.csv("Lake.csv",
                   stringsAsFactors = FALSE)
head(lake.df)

# Initialize the plot. It will be empty 
ggplot()

# Creating a new plot
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll))

# Creating a scatterplot
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point()

# Changing the colour manually
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point(colour = "red")

# Changing the colour automatically
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point(aes(colour = Calcium))

# Changing the shape manually
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point(shape = 10)

# Changing the shape automatically
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point(aes(shape = Calcium))

# Combining shape, colour and size
ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point(aes(colour = Calcium), size = 3, shape = 4)

# Modify label

ggplot(data = lake.df,
       mapping = aes(x = pH, y = Chlorophyll)) +
  geom_point(aes(colour = Calcium), size = 3, shape = 4) +
  labs(x = "Lake pH", y = "Chlorophyll (mg/L)",
       title = "Chlorophyll versus pH in lakes",
       colour = "Calcium level")

# Change Calcium variable to a factor and specify levels
lake.df$Calcium = factor(lake.df$Calcium,
                         levels = c("Low", "Medium", "High"))
# Check the levels
levels(lake.df$Calcium)



ggplot(data = patient.df,
       mapping = aes(x = Gender, y = Height)) +
  geom_boxplot(aes(fill = Ethnicity))

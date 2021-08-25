image_data <- read_csv("FILE_NAME_HERE.csv")
# Change the filname above to match the name of the data set file exported from CellProfiler

image_data <- image_data %>%
  mutate(Area_Change = as.numeric(Area_Change))
# MAKE SURE TO CHANGE THE VARIABLE NAMES TO MATCH YOUR EXPERIMENTAL INTEREST

boxplot <- 
  ggplot(data=image_data, aes(x=Treatment, y=Area_Change)) +
  geom_boxplot(aes(fill=Treatment, ymax=250), alpha=.8) +
  coord_flip() + 
  theme(axis.text.y = element_blank()) + 
  labs(title="CHART TITLE", y="Y AXIS NAME")
boxplot
# MAKE SURE TO CHANGE THE VARIABLE NAMES TO MATCH YOUR EXPERIMENTAL INTEREST

image_data_1=image_data %>%
  filter(Treatment=="FILTER COLUMN 1" | Treatment == "FILTER COLUMN 2")
# In the filler spaces, enter the columns in your data spreadsheet that you're interested in looking at in your chart. There will be multiple, so keep in mind that you'll need to find a dependent and independent variable from those columns to graph on your charts. 
# MAKE SURE TO CHANGE THE VARIABLE NAMES TO MATCH YOUR EXPERIMENTAL INTEREST

image_data_2=image_data %>%
  filter(Treatment =="Fish Water" | Treatment == "100uM Gemcitabine")
# OPTIONAL: If you have more than one set of variables to test, you can use this area to filter additional columns in your data set file. See above. 
# MAKE SURE TO CHANGE THE VARIABLE NAMES TO MATCH YOUR EXPERIMENTAL INTEREST

violin_1 <- 
  ggplot(data=image_data_1, aes(x=Treatment, y=Area_Change)) +
  geom_violin(trim=FALSE, show.legend=TRUE, aes(fill=Treatment), alpha=.3) +
  geom_jitter(data=image_data_1, width=.1, alpha=.7) +
  theme(axis.text.x=element_blank()) +
  stat_summary(image_data_1.data="mean_sdl", geom="crossbar", width=0.2, color="red")
violin_1
# MAKE SURE TO CHANGE THE VARIABLE NAMES TO MATCH YOUR EXPERIMENTAL INTEREST

violin_2<- 
  ggplot(data=image_data_2, aes(x=Treatment, y=Area_Change)) +
  geom_violin(trim=FALSE, show.legend=TRUE, aes(fill=Treatment), alpha=.3) +
  geom_jitter(data=image_data_2, width=.1, alpha=.7) +
  theme(axis.text.x=element_blank()) +
  stat_summary(image_data_2.data="mean_sdl", geom="crossbar", width=0.2, color="red")
violin_2
# MAKE SURE TO CHANGE THE VARIABLE NAMES TO MATCH YOUR EXPERIMENTAL INTEREST
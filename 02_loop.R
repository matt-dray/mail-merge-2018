# 'Mail Merge in 2018': automate report production with R
# Read data and loop through to produce reports
# Matt Dray
# June 2018


# Read data ---------------------------------------------------------------


# Read in the CSV data as a dataframe object
# Each row is an episode of the first season of Dawson's Creek

data <- read.csv(
  file = "data/dawsons-creek-season-1.csv",  # path to file
  stringsAsFactors = FALSE  # read text columns as strings
)


# Loop --------------------------------------------------------------------


library(rmarkdown)  # for render

for (i in data$production_code){  # for each unique episode
  
  # Isolate that episode from the dataset
  
  episode <- data[data$production_code == i, ]  
  
  # The one-row dataframe object 'episode' we just created will be used as the
  # source for filling the details in on the template file
  
  # Now render ('knit') the R Markdown file to Word format, name it and save it
  
  render(
    input = "01_template.rmd",  # path to the template
    output_file = paste0("episode_", i, ".docx"),  # name the output
    output_dir = "output"  # folder in which to put the output file
  )

}  # end of loop

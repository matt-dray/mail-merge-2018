
library(rmarkdown)

# Read data ---------------------------------------------------------------

data <- read.csv(
  file = "data/dawsons-creek-season-1.csv",
  stringsAsFactors = FALSE
)

# Loop --------------------------------------------------------------------


for (i in data$production_code){
  
  episode <- data[data$production_code == i, ]
  
  # the one-row dataframe object 'episode' we just created will be used as the
  # source for filling the details in on the template
  
  # now render ('knit') the R Markdown file to Word format, name it and save it
  
  render(
    "01_template.rmd",  # where to source the template from
    output_file = paste0("episode_", i, ".html"),  # name the output
    output_dir = "output"  # folder to put the output file
  )
}
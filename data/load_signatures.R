library(readxl)
library(knitr)

# Read in the data
my_data <- read_excel("data/signatures.xlsx")

# Create the Markdown table
html_table <- kable(my_data, format = "html", table.attr = "class='custom-table'")

# Save to file
writeLines(html_table, "static/includes/signatures.html")


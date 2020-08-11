# Go to whatsapp web , open a group chat and right click on the name of the group and press inspect element
# Copy paste the numbers as a string in the 'input' variable
# Write a group name 
# --- NOTE --- 
# When we copy paste from the inspect element, there are two sets of same numbers. Make sure to delete half of the entries.

library(tidyverse)
library(stringr)

input <-"+91 1233445, +91 123455, +91 141324234 "

group_name <- "Sample Group Name"

clean_input_data(input,group_name)

clean_input_data <- function(input,group_name){
  
  input <- strsplit(input, ",")
  
  df <- data.frame(numbers= input[[1]])
  
  df %>% 
    mutate(a1 = numbers %>% str_trim) %>% 
    mutate(a2 = a1 %>% str_remove_all(" ")) %>% 
    mutate(a3 = a2 %>% parse_number()) %>% 
    select(a3) %>% 
    drop_na() -> df
  
  df$a3 %>% 
    substring(3) %>% 
    as.numeric() -> final
  
  final <- tibble (numbers = final)
  
  final %>% 
    mutate(name = paste0("bulk ",group_name)) %>% 
    drop_na() %>% 
    mutate(i = name %>% row_number()) %>% 
    mutate(name = paste0(name," ",i)) %>% 
    select (name, numbers) -> final 
  
  
  write.csv(final,paste0("bulk ",group_name,".csv"))
  
}





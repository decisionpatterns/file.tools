# > "someone"  %>% file_ext
# [1] NA
# > "someone.txt"  %>% file_ext
# [1] "txt"
# > "someone..txt"  %>% file_ext
# [1] "txt"
# > "someone.one.txt"  %>% file_ext
# [1] "txt"
# > "someone...txt"  %>% file_ext
# [1] "txt"
# > "someone..."  %>% file_ext

alphabet <- letters  
upper_alphabet <- LETTERS 
first_10_lower <- alphabet[1:10]
last_10_upper <- upper_alphabet[(length(upper_alphabet)-9):length(upper_alphabet)]
letters_22_to_24_upper <- toupper(upper_alphabet[22:24])
cat("First 10 lowercase letters:", paste(first_10_lower, collapse = ""), "\n")
cat("Last 10 uppercase letters:", paste(last_10_upper, collapse = ""), "\n")
cat("Letters from 22nd to 24th in uppercase:", paste(letters_22_to_24_upper, collapse = ""), "\n")

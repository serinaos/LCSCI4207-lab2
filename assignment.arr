import file("lab2-support.arr") as support


"1..."

#firstencryptor

support.encryptor1("hello.")

fun encryptor1(inputString :: String) -> String:
  doc: "first encryptor, produces five hello.'s"
  string-repeat(inputString, 5)
end
  
support.test-encryptor1(encryptor1)



#secondencryptor

support.encryptor2("hello.")


fun myencryptor2(inputString :: String) -> String:
  doc: "second encryptor, inputting string and deleting one letter"
  string-substring(inputString, 0, 4)
end

support.test-encryptor2(myencryptor2)


#thirdencryptor

support.encryptor3("hello.")


fun myencryptor3(inputString :: String) -> String:
  doc: "third encryptor, enter hello. and replace . with !"
  string-replace(inputString, ".", "!")
end


support.test-encryptor3(myencryptor3)


#fourthencryptor

support.encryptor4("hello.")

fun myencryptor4(inputString :: String) -> String:
  doc: "delete o. but repeat five times"
  string-repeat(string-substring(inputString, 0, 4), 5)
end


support.test-encryptor4(myencryptor4)

  
  
#fifthencryptor

support.encryptor5("hello.")




fun myencryptor5(inputString :: String) -> String:
  doc: "fifth encryptor, enter hello. and replace e with f and o with p"
  s1 = string-replace(inputString, 'a', 'b')
s2 = string-replace(s1, 'e', 'f')
s3 = string-replace(s2, 'i', 'j')
s4 = string-replace(s3, 'o', 'p')
s5 = string-replace(s4, 'u', 'v')

s6 = string-replace(s5, 'A', 'B')
s7 = string-replace(s6, 'E', 'F')
s8 = string-replace(s7, 'I', 'J')
s9 = string-replace(s8, 'O', 'P')
s10 = string-replace(s9, 'U', 'V')

s10
end

support.test-encryptor5(myencryptor5)




#sixthencryptor


support.encryptor6("hello.")

fun myencryptor6(inputString :: String) -> String:
  doc: "make everything lowercase, and replace r with space"
  a1 = string-to-lower(inputString)
  string-replace(a1, "r", "")
end
  

support.test-encryptor6(myencryptor6)

 

#seventhencryptor



support.encryptor7("hello.")


fun myencryptor7(inputString :: String) -> Number:
  doc: "seventh encryptor, produce a number out string letters"
  string-length(inputString)
end

support.test-encryptor7(myencryptor7)


#eigthencryptor


support.encryptor8("hello.")


fun myencryptor8(inputString :: String) -> String:
  doc: "eigth string, add !! and repeat three times"
  string-repeat(string-append(inputString, "!!!"), 3)
end


support.test-encryptor8(myencryptor8)



#ninthencryptor


support.encryptor9("hello.")


fun myencryptor9(inputString :: String) -> Number:
  doc: "input a string and produce a character code"
  string-to-code-point(string-substring(inputString, 0, 1))
end

support.test-encryptor9(myencryptor9)



#tenthencryptor


support.encryptor10("hello.")


fun myencryptor10(inputString :: String) -> String:
  doc: "input string, replace vowels, and repeat five times"
  myencryptor4(myencryptor5(myencryptor6(inputString)))
end


support.test-encryptor10(myencryptor10)

#phase 1

def first_anagram?(str1, str2)
    return true if str1.split("").permutation.include?(str2.split(""))
    false
end

str1 = "ear"
str2 = "era"
p first_anagram?(str1, str2)
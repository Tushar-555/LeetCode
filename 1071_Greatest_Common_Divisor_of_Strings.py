class Solution:
    def gcdOfStrings(self, str1: str, str2: str) -> str:
        # Check if the concatenation of the two strings in different order results in the same string.
        # This is required as the strings should be made of the same substrings for them to have a common divisor.
        if str1 + str2 != str2 + str1:
            # If they don't form the same string when concatenated in different orders, 
            # there is no common divisor string and hence return an empty string.
            return ''
      
        # Find the gcd of the lengths of the two strings.
        # The gcd of the lengths will give us the maximum length the common divisor string can have.
        length_gcd = gcd(len(str1), len(str2))
      
        # Return the substring from 0 to length_gcd from the first string, 
        # which is the greatest common divisor string.
        return str1[:length_gcd]

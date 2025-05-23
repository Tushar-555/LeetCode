# Using Hash Table
class Solution:
    def isAnagram(self, s: str, t:str) -> bool:
        count = defaultdict(int)

        # Count the frequency of characters in string s
        for x in s:
            count[x] += 1

        # Decrement the frequency of characters in string t
        for x in t:
            count[x] -= 1

        # Check if any character has non-zero frequency 
        for val in count.values():
            if val != 0:
                return False
        return True

#  Using Hash table (using array)
# class Solution:
#     def isAnagram(self, s: str, t: str) -> bool:
#         count = [0]*26

#         # Count the frequency of characters in string s
#         for x in s:
#             count[ord(x) - ord('a')] += 1

#         # Decrement the frequency of characters in string t
#         for x in t:
#             count[ord(x) - ord('a')] -= 1

#         # Check if any character has non-zero frequency 
#         for val in count:
#             if  val != 0:
#                 return False
        
        return True
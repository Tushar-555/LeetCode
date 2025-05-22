# class Solution:
#     def containsDuplicate(self, nums: List[int]) -> bool:
#         for i in range(0, len(nums)-1):
#             for j in range(i+1,len(nums)):
#                 if nums[i]==nums[j]:
#                     return True
#         return False

# class Solution:
#     def containsDuplicate(self, nums:List[int]) -> bool:
#         nums.sort()
#         for i in range(1, len(nums)):
#             if nums[i]==nums[i-1]:
#                 return True
#         return False

class Solution:
    def containsDuplicate(self, nums:List[int]) -> bool:
        if len(set(nums)) < len(nums):
            return True
        return False
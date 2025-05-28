# class Solution:
#     def twoSum(self, nums: List[int], target: int) -> List[int]:
#         for i in range(0,len(nums)-1):
#             for j in range(i+1,len(nums)):
#                 if nums[i] + nums[j] == target:
#                     return [i,j]

# Using Hash table
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        num_map = {}
        n = len(nums)

        for i in range(0, n):
            complement = target - nums[i]
            if complement in num_map:
                return [num_map[complement],i]
            num_map[nums[i]] = i
        
        return []
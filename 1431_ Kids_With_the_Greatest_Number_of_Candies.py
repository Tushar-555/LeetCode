class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        m=max(candies)
        result=[]
        for i in range(0,len(candies)):
            candies[i]=extraCandies+candies[i]
            if(candies[i]>=m):
                result.append(True)
            else:
                result.append(False)

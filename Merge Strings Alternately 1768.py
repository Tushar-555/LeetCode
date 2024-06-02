# Approach 1
class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        len1=len(word1)
        len2=len(word2)
        final_word=''
        new_word=[]
        count=0

        if(len1>len2):
            length=len2
            word=word1
        elif(len2>len1):
            length=len1
            word=word2
        else:
            length=len1
            word=word2

        for i in range(0,length):
            new_word.append(word1[i]+word2[i])
            final=''.join(new_word)
            count+=i

        print("Count is: ",count)
        final=final+word[count+1:]
        return final

#Approach 2 - Work only when both words are of equal length
'''
class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        word=""

        for c1,c2 in zip(word1,word2):
            word=word+c1+c2

        print(word)
        
        return word
'''

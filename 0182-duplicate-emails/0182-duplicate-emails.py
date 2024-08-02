import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    l1=person['email'].unique()
    l2=person['email']
    l3=[]
    
    for i in l1:
        count=0
        for j in l2:
            if(i==j):
                count=count+1
        if(count>1):
            l3.append(i)
    
    return pd.DataFrame({'Email':l3})
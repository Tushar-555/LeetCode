import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    df1=pd.merge(customers,orders,left_on="id",right_on="customerId",how="left")
    df1=df1[df1['customerId'].isna()]
    df2=pd.DataFrame()
    df2['Customers']=df1['name']
    return df2
import pandas as pd

def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    address=address.rename(columns={'personId':'personId1'})
    person=pd.merge(person,address,left_on='personId',right_on='personId1',how='left').drop(['personId','addressId','personId1'],axis=1)
    return person
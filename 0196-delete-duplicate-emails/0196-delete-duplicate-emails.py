import pandas as pd

def delete_duplicate_emails(person: pd.DataFrame) -> None:
    # To find duplicate records based on columns in subset
    #person=person.duplicated(subset=["email"])
    person.sort_values(by=['id'],ascending=True, inplace=True)
    # Remove duplicates from df based on specific columns 
    person.drop_duplicates(subset=["email"],inplace=True)
    #return person
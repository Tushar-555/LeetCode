import pandas as pd

def user_activity(activity: pd.DataFrame) -> pd.DataFrame:
    activity=activity[(activity['activity_date']>'2019-06-27') & (activity['activity_date']<'2019-07-28')]
    activity1=activity[['activity_date','user_id']].copy()
    # or 
    # activity1=activity.filter(['activity_date','user_id])
    activity2=activity1.drop_duplicates()
    activity_count=activity2.groupby(['activity_date']).count().reset_index()
    #print(activity_count)
    return activity_count.rename(columns={'activity_date':'day','user_id':'active_users'})
    
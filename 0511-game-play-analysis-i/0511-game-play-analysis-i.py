import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    activity.sort_values(by=['player_id','event_date'],ascending=True,inplace=True)
    activity.drop_duplicates(subset='player_id',inplace=True)
    activity=activity[['player_id','event_date']]
    activity.rename({'event_date':'first_login'},axis=1,inplace=True)
    return activity
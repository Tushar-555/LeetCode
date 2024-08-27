import pandas as pd

def find_classes(courses: pd.DataFrame) -> pd.DataFrame:
    courses_count=courses.groupby(['class']).count().reset_index()
    print(courses_count)
    course_count_final=courses_count[courses_count['student']>=5]
    print(course_count_final)
    return course_count_final[['class']]
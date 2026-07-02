import pandas as pd

def inspect_dataframe(data):
    """
    Returns: dict with 'rows', 'cols' (ints), 'columns' (list),
    'dtypes' (dict), 'total_values' (int)
    """
    df=pd.DataFrame(data)
    return {
        "rows":len(df),
        "cols":len(df.T),
        "columns":df.columns.tolist(),
        "dtypes":dict(df.dtypes.astype(str)),
        "total_values":df.size
    }
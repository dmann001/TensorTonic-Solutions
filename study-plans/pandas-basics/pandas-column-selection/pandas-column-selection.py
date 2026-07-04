import pandas as pd

def select_column(data, column):
    """
    Returns: dict with 'values' (list) and 'length' (int)
    """
    df=pd.DataFrame(data)
    return {
        
"values": df[str(column)].tolist(),"length": len(df[str(column)].tolist())}
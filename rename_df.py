for counter in df.columns:
    column_name = ''.join(
        e if e.isalnum() else "_" for e in counter).lower().strip("_")
    df.rename(columns={counter: column_name}, inplace=True)

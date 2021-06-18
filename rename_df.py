# Drop all unnamed columns
del_col = [
    col for col in df.columns if 'Unnamed' in col]
df = df.drop(
    del_col, axis='columns')

# Change all special characters to underscore 
# Make all letters to lower case
# Strip the leading and trailing underscores 
# Replace consecutive underscores to one single underscore
for counter in df.columns:
	column_name = re.sub(r"_{2,}\s*", "_", ''.join(
		e if e.isalnum() else "_" for e in counter).lower().strip("_"))
	df.rename(
		columns={counter: column_name}, inplace=True)

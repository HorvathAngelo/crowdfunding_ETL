import pandas as pd

# Load the Excel data into a Pandas DataFrame
df = pd.read_excel("crowdfunding.xlsx")

# Rename the "blurb" column to "description"
df.rename(columns={"blurb": "description"}, inplace=True)

# Convert the "goal" and "pledged" columns to float
df["goal"] = df["goal"].astype(float)
df["pledged"] = df["pledged"].astype(float)

# Convert the "launched_at" and "deadline" columns to datetime
df["launch_date"] = pd.to_datetime(df["launched_at"], unit="s", utc=True)
df["end_date"] = pd.to_datetime(df["deadline"], unit="s", utc=True)

# Drop the original "launched_at" and "deadline" columns
df.drop(columns=["launched_at", "deadline"], inplace=True)

# If you named the category and subcategory dataframes something else please change here 
df = df.merge(category_df, left_on="category_id", right_on="category_id")
df = df.merge(subcategory_df, left_on="subcategory_id", right_on="subcategory_id")

# Drop the redundant "category_id" and "subcategory_id" columns
df.drop(columns=["category_id", "subcategory_id"], inplace=True)

# Export the campaign DataFrame as "campaign.csv"
df.to_csv("campaign.csv", index=False)
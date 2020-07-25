#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import os
import csv


file = os.path.join('..','PyBank','budget_data.csv')
file_df = pd.read_csv(file)
file_df.head()


# In[2]:


months = file_df['Date'].count()
total = file_df['Profit/Losses'].sum()
change = file_df['Profit/Losses'].pct_change()
greatest = file_df['Profit/Losses'].max()
least = file_df['Profit/Losses'].min()


# In[3]:


print('Financial Analysis')
print('--------------------------')
print(f"Total Months: {months}")
print(f"Total: ${total}")
print(f"Greatest Increase in Profits: {greatest}")
print(f"Greatest Decrease in Profits: {least}")


# In[ ]:





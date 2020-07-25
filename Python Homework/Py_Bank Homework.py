#!/usr/bin/env python
# coding: utf-8

# In[10]:


import pandas as pd
import os
import csv


file = os.path.join('..','PyBank','budget_data.csv')
file_df = pd.read_csv(file)
file_df.head()


# In[12]:


months = file_df['Date'].count()
total = file_df['Profit/Losses'].sum()
change = file_df['Profit/Losses'].pct_change()


# In[13]:


print('Financial Analysis')
print('--------------------------')
print(f"Total Months: {months}")
print(f"Total: ${total}")
print(f"Average Change: {change}")


# In[ ]:





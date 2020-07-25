#!/usr/bin/env python
# coding: utf-8

# In[3]:


import pandas as pd
import os
import csv


file = os.path.join('..','PyBank','election_data.csv')
file_df = pd.read_csv(file)
file_df.head()


# In[4]:


total = file_df['Voter ID'].count()


# In[7]:


print('Election Results')
print('--------------------------')
print(f"Total Votes: {total}")
print('--------------------------')


# In[ ]:





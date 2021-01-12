#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jan 11 21:31:11 2021

@author: jm
"""

# %% required libraries
import os
import smtplib
from email.message import EmailMessage

# %% get email and password from environment variables
EMAIL_SENDER= os.environ.get('EMAIL_SENDER')
EMAIL_PASSWORD = os.environ.get('EMAIL_PASSWORD')
EMAIL_RECIPIENT = os.environ.get('EMAIL_RECIPIENT')

# %% set up email content
msg = EmailMessage()
msg['Subject'] = 'Email from Python'
msg['From'] = EMAIL_SENDER
msg['To'] = EMAIL_RECIPIENT
msg.set_content('Hi! This is email is being sent automatically from Python running on GitHub Actions.')

# send email
with smtplib.SMTP_SSL('smtp.gmail.com', 465) as smtp:
    smtp.login(EMAIL_SENDER, EMAIL_PASSWORD)
    smtp.send_message(msg)
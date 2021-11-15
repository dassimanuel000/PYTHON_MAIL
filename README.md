# How to send an email with Python? 


I recommend that you use the standard packages email and smtplib together to send email. Please look at the following example (reproduced from the Python documentation). Notice that if you follow this approach, the "simple" task is indeed simple, and the more complex tasks (like attaching binary objects or sending plain/HTML multipart messages) are accomplished very rapidly.

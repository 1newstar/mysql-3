
import datetime
import time
dtstr = str(raw_input('Enter the datetime:(20151215):'))
dt = datetime.datetime.strptime(dtstr, "%Y%m%d")
print (dt)
another_dtstr =dtstr[:4] +'0101'
print (another_dtstr)
another_dt = datetime.datetime.strptime(another_dtstr, "%Y%m%d")
print (another_dt)
print (int((dt-another_dt).days) + 1)

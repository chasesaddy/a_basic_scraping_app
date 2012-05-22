# config.sample.rb

config = Hash.new

# these next two options can be overridden through the url
config[ 'browser' ] = 'chrome'
config[ 'operating' ] = 'headless'

# password is changed every so often
config[ 'login_url' ] = 'https://atm.worldpay.us/pages/userlogin.aspx'
config[ 'username' ] = 'shehzad@acfn.info'
config[ 'password' ] = 'Password10'

config[ 'terminal_selection_url' ] = 'https://atm.worldpay.us/Pages/Reports/RealTimeTransactions.aspx'

terminal = Array.new
# there should be as many fields before as ATM terminals
terminal[] = '2480 Maryland Rd'
terminal[] = '1644 Whitehorse-Mercerville Rd'
terminal[] = '3101 W. Cabot Blvd'
terminal[] = '151 N. Queen St'
terminal[] = '1290 Toms River Road'
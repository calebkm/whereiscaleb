require 'Base64'
require 'flickraw'

string = "OTQ5N2M2Yjk2OTUxODAzZmM4MjRhNmQ2ZWJmNDY2NTg=\nBODE4ZjVmNjIwNzMwYTY1MA==\n"

# Sure, this isn't secure. But you'll have to do a little bit of work at least.
FlickRaw.api_key = Base64.decode64(string.split('B').first)
FlickRaw.shared_secret = Base64.decode64(string.split('B').last)
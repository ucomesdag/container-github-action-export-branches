import requests
import json
import os

r=requests.get(os.environ.get('GITHUB_API_URL') + "/repos/" + os.environ.get('GITHUB_REPOSITORY') + "/branches", headers={'Authorization': 'Bearer: ' + os.environ.get('INPUT_GITHUB_TOKEN')})

obj = json.loads((r.text))
branches = []
for v in obj:
  branches.append(v['name'])

s = " "
f = open(os.environ.get('GITHUB_ENV'),'w')
print("BRANCHES=" + s.join(branches), file=f)
f.close()

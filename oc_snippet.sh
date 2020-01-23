#Update build config
oc patch bc journey-name --type=json --patch '
[
  { 
    "op": "replace",
    "path": "/spec/source/git/ref",
    "value": "feature/residential"
  }
]
'

#Trigger build 
oc start-build journey-name

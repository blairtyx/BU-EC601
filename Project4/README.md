# Unit-test

## Sprint 1

### Goal: 
try implementing the github action.

### modules:

1. Checkout
2. Google SDK
3. configure gcloud CLI
4. Install dependencies

### Result: Github action return faults:

```
Traceback (most recent call last):
    File "test.py", line 6, in <module> 
        from google.cloud.language_v1 import enums
ImportError: cannot import name 'enums' from 'google.cloud.language_v1' 
(/opt/hostedtoolcache/Python/3.8.6/x64/lib/python3.8/site-packages/google/cloud/language_v1/__init__.py)
Error: Process completed with exit code 1.
```


## Sprint 2 (current)

### Improvement
1. try skip the module "Google SDK" in Sprint 1, 
   
   use pip to install the google cloud SDK, use requirements.txt to manage the dependencies. 

2. Update the credential management method
3. Add pytest cases.
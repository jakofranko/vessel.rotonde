# Dialog
    
The exchange structures for the Rotonde application.

## Calls

The calls are requests done to a distant Rotonde vessel, and contain 2 elements: a domain:name format element and the answer names, seperated by comma.

```
<rotonde> call api.xxiivv.com:inner-haven activity.length,spectating.lenght
answer("api.xxiivv.com:inner-haven",["activity.length","spectating.lenght"])
```

## Answer

The answer is the minimum required structure for the data answered by rotonde calls.

```
profile
  name
  domain
  details

activity
  length
  feed()
    [<activity>]

spectating
  length
  feed()
    [<rotonde>]

seeding
  length
  feed()
    [<rotonde>]
```

### Notifications

Calls expecting a sort of update from the called instance.

```
<rotonde> notify api.xxiivv.com:inner-haven pair
```

#### Basic

```
Notify          Parameter       Answer          Info
=============== =============== =============== ===============
pair                            Bool            TRUE if spectated by instance, else FALSE
alive                           Any             ANY if instance is online, else timeout
reply           <activity.id>   Any             Should update the activity's replies
```

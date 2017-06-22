# Dialog

This is a simplistic self hosted, editable, version-controlled, platform and programing language agnostic social media experiment and tool. The idea is to share a feed of daily activity logs and interactions, that's all. You can see [my feed](http://rotonde.xxiivv.com) as an example.

## Answer
### The JSON structure for the Rotonde API. 

The answer is the minimum required structure for the data answered by rotonde calls.

```
{
  "profile":
  {
    "name":"Devine Lu Linvega",
    "location":"Huahine",
    "color":"#72dec2"
  },
  "feed":
  [
    {
      "time":"1497499200",
      "ref":"rotonde.monochromatic.co 1496203200",
      "text":"Nice work Ian!"
    },
    {
      "time":"1497326400",
      "media":"http://wiki.xxiivv.com/public.oscean/media/diary/339.jpg",
      "text":"Worked on the Rotonde specs.",
      "url":"http://xxiivv.com/index.htm"
    }
  ],
  "portal":
  [
    "rotonde.monochromatic.co",
    "rotonde.cblgh.org",
    "rotonde.anxl.faith"
  ]
}
```

### Profile
Profile information.
#### Name
Your display name.
#### Location
Current location.
#### Color
Hex value for display highlights.

### Feed
Array of Entries, recommended limit of 30.
#### Time
Unixtime.
#### Media
Url to attached image, audio, video.
#### Ref
Url of distant rotonde instance, followed by unixtime
#### Text
text content of the entry.
#### Url
Attached URL of the entry.

### Portal
Array of subscribed rotonde instance urls, recommended limit of 30.

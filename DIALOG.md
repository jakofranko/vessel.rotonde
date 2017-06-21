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
    "avatar":"http://wiki.xxiivv.com/avatar.gif",
    "color":"#72dec2"
  },
  "feed":
  [
    {
      "date":"20170621-1",
      "ref":"rotonde.monochromatic.co 20170621-4",
      "text":"Nice work Ian!"
    },
    {
      "date":"20170621",
      "media":"http://wiki.xxiivv.com/public.oscean/media/diary/339.jpg",
      "text":"Worked on the Rotonde specs.",
      "url":"http://xxiivv.com/index.htm"
    }
  ],
  "portal":
  [
    "rotonde.monochromatic.co"
  ]
}
```

### Profile
Profile information.
#### Name
Your display name.
#### Location
Current location.
#### Avatar
Url to your image.
#### Color
Hex value for display highlights.

### Feed
Array of Entries, recommended limit of 30.
#### Date
Date value, without dashes and zerofilled, Y-M-D Multiple logs in a single day can be encoded with DATE-1, DATE-2, ...
#### Media
Url to attached image, audio, video.
#### Ref
Url of content, with entry code
#### Text
text content of the entry.
#### Url
Attached URL of the entry.

### Portal
Array of subscribed rotonde urls, recommended limit of 30.
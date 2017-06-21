# Dialog
    
The JSON structure for the Rotonde API.

## Answer

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
      "type":"reply",
      "ref":"rotonde.monochromatic.co#20170621-4",
      "text":"Nice work!"
    },
    {
      "date":"20170621",
      "type":"media",
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

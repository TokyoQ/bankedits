# bankedits

This little coffee script will watch Wikipedia for edits from a set of
named IP ranges and will tweet when it notices one.  

Powered by https://github.com/edsu/anon with a custom config file.

You will be able to see the tracked banks in the config file. 

## Pull Requests

You can configure IP address ranges using a netmask:

    "143.231.0.0/16"

or with an array of start/end IP addresses:

    ["143.231.0.0", "143.231.255.255"]

These two are equivalent, but the former is a bit faster, and easier to read.
The latter is convenient if your range is difficult to express using a netmask.

If you would like your configuration file to reference the IP addresses in 
the external file just use the filename. So instead of:

```javascript
{
  "nick": "anon1234",
  "accounts": [
    {
      "consumer_key": "",
      "consumer_secret": "",
      "access_token": "",
      "access_token_secret": "",
      "template": "{{page}} Wikipedia article edited anonymously from {{name}} {{&url}}",
      "ranges": {
        "Home Network": [
          ["192.168.1.1", "192.168.255.255"]
        ]
      }
    }
  ]
}
```

you would have:

```javascript
{
  "nick": "anon1234",
  "accounts": [
    {
      "consumer_key": "",
      "consumer_secret": "",
      "access_token": "",
      "access_token_secret": "",
      "template": "{{page}} Wikipedia article edited anonymously from {{name}} {{&url}}",
      "ranges": "ranges.json"
    }
  ]
}
```


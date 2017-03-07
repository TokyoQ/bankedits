# bankedits

This little coffee script will watch Wikipedia for edits from a set of
named IP ranges and will tweet when it notices one.  

Powered by https://github.com/edsu/anon with a custom config file.

You will be able to see the tracked banks in the config file. 

## Adding Banks

You can add additional banks by editing ranges.json and submitting a pull request. 

There are two ways to add IP ranges:

```javascript
"Test Network": [
          ["192.168.1.1", "192.168.255.255"],
          "143.231.0.0/16"
        ]
```
# bankedits

This little bot will watch Wikipedia for edits from an IP address from one of the world's largest banks and will [tweet](https://twitter.com/bankedits) when it notices one.

Look in [ranges.json](ranges.json) to see the banks under watch.

Inspired and powered by [anon](https://github.com/edsu/anon).

## Pull Requests

Feel free to raise a pull request to add additional banks. 

Both start/end IPs or CIDR ranges are supported. CIDR is preferred where possible. 

    "mybank": [
          ["192.168.1.1", "192.168.255.255"],
          "143.231.0.0/16"
        ]


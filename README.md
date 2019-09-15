# bankedits

This little bot will watch Wikipedia for edits from an IP address from one of the world's largest banks and will [tweet](https://twitter.com/bankedits) when it notices one.

Look in [banks.txt](banks.txt) to see the banks under watch.

Inspired and powered by [anon](https://github.com/edsu/anon).

## Pull Requests

Feel free to raise a pull request to add additional banks. Use the below format in [ranges.yaml](ranges.yaml).

    mybankname:
    # ASN num
    - 143.231.0.0/22

These will be converted into [ranges.json](ranges.json) once deployed to the bot.

## Finding / Confirming IP Ranges

You can search for banks to find their ASNs and IP ranges using [this tool from Hurricane Electric](https://bgp.he.net/).

You can also cross reference with this [ASN Lookup Tool](https://www.ultratools.com/tools/asnInfoResult). 

The ASN used to discover IP ranges are listed in [ranges.yaml](ranges.yaml) as comments. 
# bankedits

This little bot will watch Wikipedia for edits from an IP address from one of the world's largest banks and will [tweet](https://twitter.com/bankedits) when it notices one.

You can find the list of banks under watch listed below.

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

## List of Banks

* ANZ Bank
* Alpha Bank
* Amherst Pierpont
* BNP Paribas
* Banco Bradesco
* Banco Santander
* Bank of America
* Bank of China
* Bank of Cyprus
* Bank of Montreal
* Bank of Nova Scotia
* Barclays
* Charles Schwab & Co.
* China Construction Bank
* Citigroup
* Commonwealth Bank of Australia
* Credit Agricole
* Deutsche Bank
* FNB
* First Republic
* Goldman Sachs
* Greenhill
* HSBC
* ICBC
* JP Morgan Chase
* Jefferies
* Lloyds Banking Group
* Macquarie Bank
* Mitsubishi UFJ Financial Group
* Mizuho Financial Group
* Moelis & Co
* Morgan Stanley Group
* National Australia Bank
* Nomura
* Old National
* Open Bank
* PNC Bank
* Rabobank
* Republic Bank
* Reserve Bank of Australia
* Royal Bank of Canada
* Royal Bank of Scotland
* Silicon Valley Bank
* Toronto Dominion Bank
* U.S. Bank
* Wells Fargo
* Westpac Bank

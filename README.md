# Proxy Checker
Generates output about proxy status to a file using the given input with newline-separated list of proxies.
## Usage
1. `chmod +x ./proxy-checker.sh`
2. `./proxy-checker.sh [input] [output] [url]`

`[input]` - path to input file. Proxies are either whitespace-separated or newline-separated.

`[output]` - path to output file. Output will be appended to the file or created if file does not exist.

`[url]` - URL to the site to test proxy
## Example
`./proxy-checker.sh proxies.txt output.txt https://api.ipify.org?format=json`
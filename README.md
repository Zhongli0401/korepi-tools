# Korepi Tools

Some Korepi related stuff that I wrote while learning how to hack

## Prerequisites

You'll want to have at least Node 18 or newer. Don't forget to install the dependencies with `npm i`.

## How to Use

1. Launch Korepi once without any license, and it should give you a hardware ID.
2. Then run the `license_gen.js` which will asks you for your HWID and generates a license file to use.
3. **Copy** (don't cut) the license file into the same folder where the exe is located.
4. Run `ssl_gen.js` and install the generated certificated (`certs/md5c.korepi.com.crt`) as a trusted root certificate.
5. Edit your hosts file and add the following lines:

```
127.0.0.1 md5c.korepi.com
127.0.0.1 md5c.mxmicah.me
```
6. Then start `server.js` and launch Korepi.

For future launches, you only need to run the `server.js` file (no need to regenerate the license or SSL).

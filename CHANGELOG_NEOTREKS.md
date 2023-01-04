
## Amalgamation files generation

```commandline
./configure --with-crypto-lib=none
make sqlite3.c
```
## Customizations
* `geoDistFunc` function
* ~~Enabled `SQLITE_ENABLE_MATH_FUNCTIONS`~~ (already enabled in new SqlCipher versions)

Seem more info in the: 
- [SQLCipher - Android Build -> How to update the SQLCipher project](https://docs.google.com/document/d/1OxT9dHKbQtQp69ZUXJDGaOP3w2Ng82Rw33X3FhxCak8/edit#heading=h.6m1z8e5l5bpp)
- [Adding SQLCipher to Xcode Projects](https://www.zetetic.net/sqlcipher/ios-tutorial/)

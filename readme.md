check this out:
---
https://medium.com/coinmonks/solidity-development-setting-up-environment-611c4bc2530b

- FOR WINDOW CHECK THIS OUT:
https://github.com/trufflesuite/truffle/issues/150
- ISSUE WITH 'truffle compile' IN WINDOWS:
```
in windows try ...
'truffle.cmd'
instead of 'truffle'.

Because of PATH_EXT= .......... .JS
truffle.js is excuted.

Or remove '.JS' in PATH_EXT .
```
```
While reading below helped as well
http://truffleframework.com/docs/advanced/configuration#resolving-naming-conflicts-on-windows
```
```
Either use truffle.cmd compile or go to the /contract directory and use truffle compile .
```
- IN SUMMARY:
```
If you have the same issue on Windows, instead of 'truffle compile' try 'truffle.cmd compile'
```
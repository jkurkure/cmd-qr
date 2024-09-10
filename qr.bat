@call npm install qrcode-terminal > nul
@setlocal EnableDelayedExpansion
@set multiLine=var qrcode = require('qrcode-terminal'); ^

qrcode.generate(process.argv[2], {small: true});
@echo !multiLine! > tmp.js
@node tmp.js "%*"
@del tmp.js
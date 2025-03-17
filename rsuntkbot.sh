#!/bin/env bash

msg="*$TITLE*
\`\`\`
$2
\`\`\`
*Note: Always backup working boot before flash\\.*
Thanks for Source [rsuntk](https://github.com/rsuntk) [rsuntk-open-source](https://github.com/rsuntkOrgs)\\.
"

# Escape any special markdown characters
msg=$(echo "$msg" | sed 's/[\*_\[\]()~`>#+-=|{}.!]/\\&/g')

file="$1"

curl -s -F document=@$file "https://api.telegram.org/bot$BOT_TOKEN/sendDocument" \
	-F chat_id="$CHAT_ID" \
	-F "disable_web_page_preview=true" \
	-F "parse_mode=markdownv2" \
	-F caption="$msg"

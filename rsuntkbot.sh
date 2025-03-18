#!/bin/env bash

msg="*$TITLE*
\`\`\`
$2
\`\`\`
*Note: Always backup working boot before flash\\.*
*Thanks for Source builder and kernel rsuntk, rsuntkOrgs\\.*
"

file="$1"

curl -s -F document=@$file "https://api.telegram.org/bot$BOT_TOKEN/sendDocument" \
	-F chat_id="$CHAT_ID" \
	-F "disable_web_page_preview=true" \
	-F "parse_mode=markdownv2" \
	-F caption="$msg"

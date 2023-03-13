#!/bin/bash

# curl 'https://api.telegram.org/bot123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11/sendMessage?text=test&chat_id=43804645'
# https://core.telegram.org/bots/api#making-requests

TOKEN="123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11"

getMe() {
    curl "https://api.telegram.org/bot${TOKEN}/getMe"
}

sendMessage() {
    chat_id="$1"
    text="$2"
    curl -G "https://api.telegram.org/bot${TOKEN}/sendMessage" -d "chat_id=${chat_id}" -d "text=${text}"
}

sendMessage 43804645 "test"

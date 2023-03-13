#!/usr/bin/env python3
import asyncio
from pyrogram import Client, filters

# https://docs.pyrogram.org/start/examples/

api_id = 12345
api_hash = "0123456789abcdef0123456789abcdef"
bot_token = '123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11'

app = Client(
        "bot",
        api_id=api_id, api_hash=api_hash,
        bot_token=bot_token
    )


@app.on_message(filters.command(["start"]))
async def start(client, message):
    await message.reply("Bot started!")

@app.on_message(filters.text & filters.private)
async def echo(client, message):
    await message.reply(f"You just sent me: \n\n{message.text}")

app.run()

#!/usr/bin/env bash

nohup rake start_bot > log/bot.log & echo $! > tmp/bot.pid

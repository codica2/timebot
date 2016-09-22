#!/usr/bin/env bash

RAILS_ENV=production nohup rake start_bot > log/bot.log & echo $! > tmp/pids/bot.pid

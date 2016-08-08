#!/usr/bin/env bash

echo 'Resque.enqueue(Listener)' | rails c
QUEUE=listener rake resque:work

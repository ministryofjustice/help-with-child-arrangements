#!/bin/sh
set +ex

printf '\e[33mINFO: Checking for migrations\e[0m\n'
bundle exec rails db:migrate

printf '\e[32mSUCCESS: Migrations complete.\e[0m\n'


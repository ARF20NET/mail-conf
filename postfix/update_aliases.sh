#!/bin/sh
postmap /etc/postfix/insiders
postmap /etc/postfix/protected_destinations
postalias /etc/aliases
newaliases
postfix reload


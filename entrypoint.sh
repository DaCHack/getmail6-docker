#!/bin/sh

getmail --getmaildir=/getmail $GETMAIL_OPTIONS
echo "Sleeping for $POLLING_INTERVAL seconds..."
sleep $POLLING_INTERVAL

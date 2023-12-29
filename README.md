# mail-conf
ARFNET mail server configuration

- Domain: `arf20.com` (MX mail.arf20.com) (PTR, TLSA, SPF, DKIM and DMARC configured)
- FQDN: `mail.arf20.com`
- hostname: `mail`
- mailname: `arf20.com`

## Postfix SMTP MTA and smtpd.
With smtpd at ports 25, SMTPS submission at 465 and SMTP (STARTTLS) submission at 587.

Accepts all connections, relays mail from authenticated users, rejects unauthenticated relaying.

## Dovecot IMAP daemon
IMAP at 145 and IMAPS at 993

No POP3 because POP3 sucks

## Files
```
postfix     
|- master.cf              daemon instance specific, { smtpd, submission, submissions }
|- main.cf                program specific, { smtp, smtpd }
|- aliases                address aliases
|- protected_destinations destionations only reachable by insiders
|- insiders               insider addresses
dovecot
|- dovecot.conf           dovecot config
gnu-mailutils
|- mailutils.conf         GNU mailutils config
|- .mailrc                user specific mail options
```

## Tested clients
- Local GNU mail
- Local alpine
- Remote mutt
- Remote thunderbird
- Remote Gmail client on android (non-gmail account)

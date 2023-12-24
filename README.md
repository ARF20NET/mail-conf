# mail-conf
ARFNET mail server configuration

Postfix SMTP MTA and smtpd.
With smtpd at ports 25, SMTPS submission at 465 and STARTTLS submission at 587.
Accepts all connections, relays mail from authenticated users, rejects unauthenticated relaying.

Dovecot IMAP daemon
IMAP at 145 and IMAPS at 993

Domain: `arf20.com` (MX mail.arf20.com) (PTR, TLSA, SPF, DKIM and DMARC configured)
FQDN: `mail.arf20.com`
hostname: `mail`
mailname: `arf20.com`

```
postfix     
|- master.cf        daemon instance specific, { smtpd, submission, submissions }
|- main.cf          program specific, { smtp, smtpd }
|- aliases          address aliases
dovecot
|- dovecot.conf     dovecot config
gnu-mailutils
|- mailutils.conf   GNU mailutils config
|- .mailrc          user specific mail options
```


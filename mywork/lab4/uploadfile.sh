#!/bin/bash

#url:
#https://ds2002-ncd6fc.s3.us-east-1.amazonaws.com/mashpotato.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA47CRZ7WEEHLZSZ4F%2F20240315%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240315T210642Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzEJz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDIGrGYH9OWqUuMqG4iLEAXbQCdC1Ff5P%2FGbVWlA99T8GugyU2IKDADPtFXPNwQgTE0f3awtlr6dCJ1gRyERampguo%2F4XyHWKBGXKuNRDjMDKRcaA%2FwaF4thDm2KqUvKVxZ7XYBbdmwmp3ANj%2Fru5aDLWSsos1qkS6GIf1fbBEEePg0vVZWeF18UitBTTOo3G0lVQnu1guNRi2B6KL8fjAQijWdv8Clo4YVVScI4HmULdaXjG6SHUDiZbwgYG0%2FT9Mu9PvQ2dlLDpd%2Fe9x9vMICwr6z4onqvSrwYyLVaRIq0uyPapJn%2BT1LmcpOBKg1rNhic41%2FDmd7cJb%2BIt6w9o5nsR4rUz2cVtTQ%3D%3D&X-Amz-Signature=dd52ad7377996b6933538f7b10b2e7a3f851f3e236f191b3e0d94c6529968d49

aws s3 cp mashpotato.jpg s3://ds2002-ncd6fc/
aws s3 presign --expires-in 604800 s3://ds2002-ncd6fc/mashpotato.jpg

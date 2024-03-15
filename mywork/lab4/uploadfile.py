import boto3
import requests
#URL: 
#https://ds2002-ncd6fc.s3.amazonaws.com/cat.png?AWSAccessKeyId=ASIA47CRZ7WEEHLZSZ4F&Signature=DSTzx5mRmvfw%2FuYoxCVOetGrnMU%3D&x-amz-security-token=FwoGZXIvYXdzEJz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaDIGrGYH9OWqUuMqG4iLEAXbQCdC1Ff5P%2FGbVWlA99T8GugyU2IKDADPtFXPNwQgTE0f3awtlr6dCJ1gRyERampguo%2F4XyHWKBGXKuNRDjMDKRcaA%2FwaF4thDm2KqUvKVxZ7XYBbdmwmp3ANj%2Fru5aDLWSsos1qkS6GIf1fbBEEePg0vVZWeF18UitBTTOo3G0lVQnu1guNRi2B6KL8fjAQijWdv8Clo4YVVScI4HmULdaXjG6SHUDiZbwgYG0%2FT9Mu9PvQ2dlLDpd%2Fe9x9vMICwr6z4onqvSrwYyLVaRIq0uyPapJn%2BT1LmcpOBKg1rNhic41%2FDmd7cJb%2BIt6w9o5nsR4rUz2cVtTQ%3D%3D&Expires=1711136234

s3 = boto3.client('s3', region_name="us-east-1")

response = s3.list_buckets()


for r in response['Buckets']:
        print(r['Name'])
bucket = 'ds2002-ncd6fc'
url= 'https://i.pinimg.com/564x/dc/46/40/dc46403064ec076a128234ffdcd916c9.jpg'
resp = s3.put_object(
        Body = requests.get(url).content,
        Bucket = bucket,
        Key = 'cat.png',
        ACL = 'public-read'
)

presigned_url = s3.generate_presigned_url(
        'get_object',
        Params={'Bucket': bucket, 'Key': 'cat.png'},
        ExpiresIn=604800
        )

print(presigned_url)

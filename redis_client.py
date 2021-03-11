# Reference: https://rednafi.github.io/digressions/python/database/2020/05/25/python-redis-cache.html

import redis
import sys
import os

REDIS_HOST = os.getenv("REDIS_HOST")
REDIS_PW = os.getenv("REDIS_PW")

def redis_connect() -> redis.client.Redis:
    try:
        client = redis.Redis(
            host=REDIS_HOST,
            port=6379,
            password=REDIS_PW,
            db=0,
            socket_timeout=5,
        )
        ping = client.ping()
        if ping is True:
            return client
    except redis.AuthenticationError:
        print("AuthenticationError")
        sys.exit(1)


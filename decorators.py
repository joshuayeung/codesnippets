# This formula is a good boilerplate template for building more complex decorators.
# https://realpython.com/primer-on-python-decorators/
import functools

def decorator(func):
    @functools.wraps(func)
    def wrapper_decorator(*args, **kwargs):
        # Do something before
        value = func(*args, **kwargs)
        # Do something after
        return value
    return wrapper_decorator

import salt
import salt.config


__virtualname__ = "testmod"


def __virtual__():
    '''
    Try to load this module
    '''
    return __virtualname__


def mytestfunc():
    '''
    This is loaded from the master branch
    '''
    msg = 'This is loaded from the staging branch'
    return {'retcode': 0, 'comments': msg}

def morefunc(myarg=None):
    '''
    Return the user value
    '''
    msg = myarg
    if not msg:
        msg = 'No argument provided'
    return {'retcode': 0, 'comments': msg}

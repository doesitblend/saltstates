import salt
import salt.config


__virtualname__ = 'testmod'

def __virtual__():
    '''
    Test loading this module
    '''
    return __virtualname__


def mytestfunc():
    '''
    This is loaded from the master branch
    '''
    msg = 'This is loaded from the master branch'
    return {'retcode': 0, 'comments': msg}

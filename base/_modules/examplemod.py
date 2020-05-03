import salt
import salt.config


__virtualname__ = 'funky'

def funky():
    '''
    An example function that is basically the same as test.ping
    '''
    return True

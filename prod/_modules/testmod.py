import salt
import salt.config


def mytestfunc():
    '''
    This is loaded from the master branch
    '''
    msg = 'This is loaded from the prod environment'
    return {'retcode': 0, 'comments': msg}

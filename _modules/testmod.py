import salt
import salt.config


def mytestfunc():
    '''
    This is loaded from prod
    '''
    msg = "Some valid changes to production environment"
    return {'retcode': 0, 'comments': msg}

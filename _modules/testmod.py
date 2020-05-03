import salt
import salt.config


__virtualname__ = "mytestmod"


def mytestfunc():
    '''
    This is loaded from prod
    '''
    msg = "Some valid changes to production environment"
    return {'retcode': 0, 'comments': msg}

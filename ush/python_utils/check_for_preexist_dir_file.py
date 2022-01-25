#!/usr/bin/env python3

import os
from datetime import datetime
from python_utils.print_msg import print_info_msg, print_err_msg_exit
from python_utils.check_var_valid_value import check_var_valid_value
from python_utils.filesys_cmds_vrfy import rm_vrfy, mv_vrfy

def check_for_preexist_dir_file(path, method):
    """ Check for preexisting directory and, if present, deal with it
    according to the specified method

    Args:
        path: path to directory
        method: could be any of [ 'delete', 'rename', 'quit' ]
    Returns:
        None
    """

    check_var_valid_value(method, ['delete', 'rename', 'quit'])

    if os.path.exists(path):
        if method == 'delete':
            rm_vrfy(' -rf ', path)
        elif method == 'rename':
            now = datetime.now()
            d = now.strftime("_%Y%m%d_%H%M%S")
            new_path = path + d
            print_info_msg(f'''
Specified directory or file already exists:
    {path}
Moving (renaming) preexisting directory or file to:
    {new_path}''')
            mv_vrfy(path, new_path) 
        else:
            print_err_msg_exit(f'''
Specified directory or file already exists
    {path}''')
    

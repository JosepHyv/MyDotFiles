#!/usr/bin/python

import os 

lista = [str(x) for x in os.listdir() if x[0] != '.' and not x == 'extensions.py' and not x == 'extensions_used.txt']

def get_owner(line):
    separations = line.partition('.')
    return separations[0]
def get_package(line):
    separations = line.partition('.')
    return separations[2]

def spaces(number):
    return ' ' * number

owners = [get_owner(x) for x in lista]
max_owner = max(len(x) for x in owners)
package = [get_package(x) for x in lista]

MAX_SPACES = 10 




with open("extensions_used.txt", 'w') as file:
    for c in range(len(owners)) :
        line_to_write = owners[c]
        line_to_write += spaces(max_owner - len(owners[c])) + spaces(MAX_SPACES)
        line_to_write += package[c]
        
        file.write(line_to_write +  '\n')
        print(line_to_write)
    file.close()

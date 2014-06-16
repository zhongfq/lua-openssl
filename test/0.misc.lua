local openssl = require('openssl')
local print_r = require('function.print_r')
require 'l-io'

print('load openssl.cnf', string.rep('-',40))
data = io.loaddata('.\\openssl.cnf')
conf = openssl.conf.load(data)
print(conf)
print(conf:parse(false))
print('parse openssl.cnf as table', string.rep('-',40))
dump(conf:parse(),0)
print('parse openssl.cnf as table', string.rep('-',40))

print(conf:get_string('ca','default_ca'))

print(conf:get_string('CA_default','default_days'))

print('�ӱ�����������', string.rep('-',40))
io.read('*l')
c1 = openssl.conf_load(conf:parse())
print(c1)
dump(c1:parse(),0)
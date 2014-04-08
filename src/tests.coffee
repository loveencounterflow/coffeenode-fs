
############################################################################################################
FS                        = require './main'
TYPES                     = require 'coffeenode-types'
TRM                       = require 'coffeenode-trm'
log                       = TRM.log.bind TRM
#...........................................................................................................
assert                    = require 'assert'


#-----------------------------------------------------------------------------------------------------------
@test_argument_parsing = ->
  f = -> return FS._get_route_options_handler arguments
  callback = ->
  #.........................................................................................................
  assert.throws ( -> f() ), /^Error: expected between one and three arguments, got 0$/
  assert.throws ( -> f 1, 2, 3, 4, 5 ), /^Error: expected between one and three arguments, got 5$/
  assert.throws ( -> f null ), /^Error: expected a text, got a null$/
  assert.throws ( -> f '' ), /^Error: route must not be empty$/
  assert.throws ( -> f 'some/file', 42 ), /^Error: expected second argument to be a POD or a function, got a number$/
  assert.throws ( -> f 'some/file', foo: 'bar', 42 ), /^Error: expected a function, got a number$/
  assert.deepEqual ( f 'some/file'                               ), [ 'some/file', { encoding: 'utf-8', mode: null }, null ]
  assert.deepEqual ( f 'some/file', callback                     ), [ 'some/file', { encoding: 'utf-8', mode: null }, callback ]
  assert.deepEqual ( f 'some/file', encoding: 'utf-8'            ), [ 'some/file', { encoding: 'utf-8', mode: null }, null ]
  assert.deepEqual ( f 'some/file', encoding: 'utf-8', callback  ), [ 'some/file', { encoding: 'utf-8', mode: null }, callback ]
  assert.deepEqual ( f 'some/file', encoding: 'cp1252', callback ), [ 'some/file', { encoding: 'cp1252', mode: null }, callback ]



############################################################################################################
do @test_argument_parsing


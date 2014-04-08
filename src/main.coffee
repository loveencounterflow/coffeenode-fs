

############################################################################################################
TYPES                     = require 'coffeenode-types'
TRM                       = require 'coffeenode-trm'
TEXT                      = require 'coffeenode-text'
rpr                       = TRM.rpr.bind TRM
#...........................................................................................................
njs_fs                    = require 'fs'
lineReader                = require 'line-reader'


#-----------------------------------------------------------------------------------------------------------
@lines_of = ( route, handler ) ->
  line_nr = 0
  #.........................................................................................................
  lineReader.eachLine route, ( line, is_last_line ) =>
    line_nr += 1
    handler null, line, line_nr
    handler null, null if is_last_line




    # #.......................................................................................................
    # parts = data.split /// ( \r\n | \n | \r ) ///g
    # #.......................................................................................................
    # for part in parts
    #   continue if part.length == 0
    #   #.....................................................................................................
    #   if ( part.match /// ^ [ \n \r ]+ $ /// )?



# fs.Stats.prototype._checkModeProperty = function(property) {
#   return ((this.mode & constants.S_IFMT) === property);
# };

# fs.Stats.prototype.isDirectory = function() {
#   return this._checkModeProperty(constants.S_IFDIR);
# };

# fs.Stats.prototype.isFile = function() {
#   return this._checkModeProperty(constants.S_IFREG);
# };

# fs.Stats.prototype.isBlockDevice = function() {
#   return this._checkModeProperty(constants.S_IFBLK);
# };

# fs.Stats.prototype.isCharacterDevice = function() {
#   return this._checkModeProperty(constants.S_IFCHR);
# };

# fs.Stats.prototype.isSymbolicLink = function() {
#   return this._checkModeProperty(constants.S_IFLNK);
# };

# fs.Stats.prototype.isFIFO = function() {
#   return this._checkModeProperty(constants.S_IFIFO);
# };

# fs.Stats.prototype.isSocket = function() {
#   return this._checkModeProperty(constants.S_IFSOCK);
# };


# S_IFDIR S_IFREG S_IFBLK S_IFCHR

#   S_IFMT: 61440,
#   S_IFREG: 32768,
#   S_IFDIR: 16384,
#   S_IFCHR: 8192,
#   S_IFBLK: 24576,
#   S_IFIFO: 4096,
#   S_IFLNK: 40960,
#   S_IFSOCK: 49152,



// This GP file is run after the GP library has been loaded.
// By default, it just prints a welcome message defines a
// startup function that is run when GP starts up. You can
// replace the startup function with one that starts your own
// application.

print
print 'Welcome to GP!'
print
print 'This the GP terminal window, used for bootstrapping GP. The GP user'
print 'interface (UI) runs in its own window, but if the UI loop encounters'
print 'an error it cannot handle, it stops and this window takes over.'
print
print 'If you start GP from the command line using the "-" switch, you can type ctrl-C'
print 'in this terminal window to manually halt the UI.'
print '(Unfortunately, this trick does not work on Windows.)'
print
print 'When the UI is stopped, you can run commands in this terminal window, such as:'
print
print '  exit - quit GP'
print '  help - print a list of primitive operations built into GP'
print '  print (3 + 4) - print the result of an expression'
print '  inspect (list 1 2 3) - inspect an object'
print '  go - restart the user interface'
print
print

to startup {

  for f (listFiles 'runtime/additional libraries/') { // List all the libraries in the specified folder
    lib = (readFile (joinStringArray (array 'runtime/additional libraries/' f))) // Read library file from 'runtime/additional libraries/''
	loadModuleFromString (topLevelModule) lib // Load module from file
  }
  
  setGlobal 'vectorTrails' false
  openProjectEditor true false
}

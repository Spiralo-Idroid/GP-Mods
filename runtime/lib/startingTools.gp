// Functions used to load library at start


to startuper {

  for f (listFiles 'runtime/lib - Copie/') {
    tmpModule = (readFile (joinStringArray (array 'runtime/lib - Copie/' f))) //Read library file
	loadModuleFromString (topLevelModule) tmpModule	
  }
}

to sturtapper {
  setGlobal 'vectorTrails' false
  openProjectEditor true false
}
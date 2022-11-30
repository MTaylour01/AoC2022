type Path = String

type Transform = (String -> String)

-- Takes a file, performs an arbitrary rewrite (e.g. replace commas with newlines) and rewrites that to a new file
converter :: Path -> Transform -> IO ()
converter path transform = do
    file <- readFile path
    let reformatted = transform file
    writeFile ( path ++ "_Reformatted") reformatted

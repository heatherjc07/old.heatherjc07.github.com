//enhanced to indent tags

Builder := Object clone

curlyBrackets := method(
  r := List clone;  
  call message arguments foreach(arg,    
    r append(arg)) 
)

indent := ""
Builder forward := method(
  writeln(indent,"<", call message name, ">")
  indent = indent .. "  "
  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(indent,content)))
    indent = indent exclusiveSlice(2)
  writeln(indent,"</", call message name, ">"))
Builder ul(
  li("Io"),
  li("Lua"),
  li("JavaScript"))
  
  days := {"Monday","Tuesday","Wednesday"};
  days println();
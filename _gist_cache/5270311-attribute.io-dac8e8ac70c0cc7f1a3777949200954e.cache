//enhanced to print attributes

curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg,
   r doMessage(arg)
  )
 r
)

OperatorTable addAssignOperator(":", "atPutAttr")

Map atPutAttr := method(
  self atPut(
  call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
  call evalArgAt(1))
)

Map buildAttributes := method(  
 attr_str := ""
 self foreach(attr, val,  attr_str = attr_str .. " " .. attr .. "=\"" .. val .. "\""    )
 return attr_str
)

Builder := Object clone

indent := ""

Builder forward := method(
  arguments := call message arguments
  attrs := ""        
  if(arguments size > 0 and arguments first name == "curlyBrackets",      attrs = doMessage(arguments first) buildAttributes)
  
  writeln(indent,"<", call message name, attrs, ">")
  indent = indent .. "  "
  arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(indent,content)))
    indent = indent exclusiveSlice(2)
  writeln(indent,"</", call message name, ">"))

doFile("BuilderNewTest.io")

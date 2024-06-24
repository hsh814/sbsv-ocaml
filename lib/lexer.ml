

let tokenize line = 
  let result = ref [] in
  let level = ref 0 in
  let current = ref "" in
  let escape = ref false in
  let should_replace = ref false in
  String.iter (fun char ->
    if !escape then
      current := !current ^ (String.make 1 char)
      escape := false
    else
      escape := false
    if char = '\\' then
      escape := true
      should_replace := true
    else
      escape := false
    
    )
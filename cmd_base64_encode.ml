let _ =
   if Array.length Sys.argv = 2 then
      let str = Sys.argv.(1) in
	 print_endline (Base64.encode str)
   else if Array.length Sys.argv = 1 then
      let buf = Buffer.create 100 in
	 (try
	     while true do
		let line = input_line stdin in
		   Buffer.add_string buf line
	     done
	  with End_of_file ->
	     ());
	 print_endline (Base64.encode (Buffer.contents buf))
   else
      print_endline "Syntax: base64_encode <string>"

open Ocamlbuild_plugin
open Myocamlbuild_config

let _ =  dispatch begin function
  | After_rules ->
      install_lib "base64" []
  | _ ->
      ()
end

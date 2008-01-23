(*
 * (c) 2008 Anastasia Gornostaeva <ermine@ermine.pp.ru>
 *)

exception Bad_encoding

val base64chars : char array

val encode : string -> string

val decode : string -> string

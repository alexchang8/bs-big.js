(**The abstract type representing a big number *)
type t

exception Unknown_error

exception Div_by_zero

exception Invalid_number

exception Invalid_decimal_places

exception Invalid_rounding_mode

exception No_square_root

exception Invalid_precision

(**[fromString x] Returns a big number with [x] interpreted as a decimal.

   Throws if the string is not a valid number
*)
val fromString: string -> t

(**[fromFloat x] Returns a big number with value [x] *)
val fromFloat: float -> t

(**[fromInt x] Returns a big number with value [x] *)
val fromInt: int -> t

(**[setDP x] Sets the maximum number of decimal places of the results of
   operations involving division to [x]. It is only used by [div], [sqrt], and
   [pow]

   Throws if [x] is negative when one of the methods is called*)
val setDP: int -> unit

(**[setRM x] Sets the rounding mode used in the above operations and by [round],
   [toExponential], [toFixed] and [toPrecision] to [x]. 0 rounds down, 1 rounds
   half up, 2 rounds half even, and 3 rounds away from 0

   Throws if [x] is not one of 0,1,2 or 3 when one of the methods is called
   *)
val setRM: int -> unit

(**[setRM x] Sets the negative exponent value at and below which toString returns exponential
   notation to [x]. *)
val setNE: int -> unit

val setPE: int -> unit

(**Returns the current value of DP. Default: 20*)
val getDP: unit -> int

(**Returns the current value of RM. Default: 1*)
val getRM: unit -> int

(**Returns the current value of NE. Default: -7*)
val getNE: unit -> int

val getPE: unit -> int

(**[abs x] Returns the absolute value of [x] as a Big number*)
val abs: t -> t

(**[cmp x y] Returns 1 if [x] > [y], -1 if [x] < [y], and 0 if [x] = [y]*)
val cmp: t -> t -> int

(**[div x y] Returns the Big number represented by x/y.

Throws if [y] is 0
*)
val div: t -> t -> t

val eq: t -> t -> bool

val gt: t -> t -> bool

val gte: t -> t -> bool

val lt: t -> t -> bool

val lte: t -> t -> bool

val minus: t -> t -> t

val mod_: t -> t -> t

val plus: t -> t -> t

val pow: t -> int -> t

val round: t -> ?dp:int -> ?rm:int -> unit -> t

val sqrt: t -> t

val times: t -> t -> t

val toExponential: t -> ?dp:int -> unit -> string

val toFixed: t -> ?dp:int -> unit -> string

val toPrecision: t -> ?dp:int -> unit -> string

val toString: t -> string

val valueOf: t-> string

val toJson: t -> string

val c: t -> int array

val e: t -> int

val s: t -> int

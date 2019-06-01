# bs-big.js
Bucklescript bindings to [big.js](https://github.com/MikeMcl/big.js/), a library for arbitrary-precision decimal arithmetic. All methods are supported.

## Installation
1. Make sure big.js is installed: `npm install big.js`
2. Install the bindings: `npm install bs-big.js`
3. Add the bindings to bs-config.json:
```
{
  "bs-dependencies": [
      "bs-big.js"
  ]
}
```

## Usage


## Documentation
See [Big.mli](https://github.com/alexchang8/bs-big.js/blob/master/src/Big.mli) and the [big.js documentation](http://mikemcl.github.io/big.js/)


## Testing
Very extensive testing was done by porting most of the tests from big.js. To run the tests:
```
npm test
```
## Things to note

 - The method`Big.mod_` has an underscore because `mod` is a reserved keyword in OCaml/Reason
 - The last parameter of all methods with optional parameters is `unit`. This is because the last parameter would be optional, [which don't work properly in OCaml](https://ocaml.org/learn/tutorials/labels.html#quot-Warning-This-optional-argument-cannot-be-erased-quot). Keeping the parameter order allows consistent use of the pipe-first syntax `|.`, so it is better to end with `unit` than swap order.
 - OCaml does not have `-0` but Javascript does

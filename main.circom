// Inputs:
// * `in` is a fixed-length array of 100 tuples
// * `match` is an arbitrary input value
// Outputs:
// * `num_match` is the number of elements of `in` whose first entry 
//   matches `match`
// * the first `num_match` entries of `out` are the tuples in `in` 
//   whose first entry agrees with `match`.  the remaining entries
//   in `out` are 0-padded.
template Filter() {
    signal input in[100][2];
    signal input match;
    
    // Fill in your solution here
    
    signal output num_match;
    signal output out[100][2];
}

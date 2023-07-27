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

    // Counter initialisation for the number of matches
    var count = 0;

    // Creating a component to check for equality
    component isEqual[100];

    // Looping over the input array
    for (var i = 0; i < 100; i++) {
        // Equality check
        isEqual[i] = IsEqual();     
        isEqual[i].in[0] <== in[i][0];
        isEqual[i].in[1] <== match;

        // Increment the counter
        count += isEqual[i].out;

        // Adding to the output
        out[i][0] <== in[i][0] * isEqual[i].out;
        out[i][1] <== in[i][1] * isEqual[i].out;     
    }
}

/* INPUT = {
    "in": [
        [
            6,
            8
        ],
        [
            7,
            6
        ],
        [
            10,
            7
        ],
        [
            7,
            5
        ],
        [
            2,
            9
        ],
        [
            8,
            6
        ],
        [
            9,
            4
        ],
        [
            2,
            7
        ],
        [
            7,
            6
        ],
        [
            8,
            1
        ],
        [
            5,
            5
        ],
        [
            3,
            9
        ],
        [
            4,
            9
        ],
        [
            3,
            4
        ],
        [
            10,
            5
        ],
        [
            1,
            10
        ],
        [
            2,
            10
        ],
        [
            7,
            3
        ],
        [
            10,
            4
        ],
        [
            9,
            5
        ],
        [
            6,
            9
        ],
        [
            7,
            8
        ],
        [
            10,
            5
        ],
        [
            1,
            7
        ],
        [
            9,
            7
        ],
        [
            9,
            8
        ],
        [
            5,
            4
        ],
        [
            9,
            8
        ],
        [
            2,
            2
        ],
        [
            5,
            3
        ],
        [
            1,
            5
        ],
        [
            1,
            9
        ],
        [
            1,
            3
        ],
        [
            6,
            6
        ],
        [
            10,
            1
        ],
        [
            1,
            7
        ],
        [
            6,
            9
        ],
        [
            4,
            3
        ],
        [
            9,
            8
        ],
        [
            7,
            9
        ],
        [
            2,
            10
        ],
        [
            3,
            6
        ],
        [
            5,
            6
        ],
        [
            8,
            5
        ],
        [
            9,
            2
        ],
        [
            3,
            1
        ],
        [
            5,
            4
        ],
        [
            2,
            4
        ],
        [
            5,
            7
        ],
        [
            2,
            4
        ],
        [
            7,
            7
        ],
        [
            4,
            10
        ],
        [
            7,
            9
        ],
        [
            8,
            10
        ],
        [
            2,
            2
        ],
        [
            6,
            8
        ],
        [
            10,
            10
        ],
        [
            5,
            2
        ],
        [
            4,
            4
        ],
        [
            3,
            3
        ],
        [
            4,
            4
        ],
        [
            3,
            7
        ],
        [
            1,
            5
        ],
        [
            10,
            1
        ],
        [
            7,
            10
        ],
        [
            8,
            9
        ],
        [
            8,
            3
        ],
        [
            9,
            1
        ],
        [
            7,
            4
        ],
        [
            2,
            4
        ],
        [
            8,
            7
        ],
        [
            2,
            5
        ],
        [
            1,
            8
        ],
        [
            5,
            6
        ],
        [
            2,
            3
        ],
        [
            3,
            8
        ],
        [
            10,
            5
        ],
        [
            8,
            9
        ],
        [
            8,
            1
        ],
        [
            3,
            8
        ],
        [
            5,
            10
        ],
        [
            7,
            4
        ],
        [
            7,
            1
        ],
        [
            4,
            9
        ],
        [
            6,
            1
        ],
        [
            7,
            6
        ],
        [
            6,
            2
        ],
        [
            7,
            10
        ],
        [
            3,
            7
        ],
        [
            4,
            3
        ],
        [
            4,
            6
        ],
        [
            4,
            1
        ],
        [
            3,
            7
        ],
        [
            7,
            8
        ],
        [
            3,
            10
        ],
        [
            2,
            8
        ],
        [
            4,
            9
        ],
        [
            2,
            10
        ],
        [
            7,
            5
        ],
        [
            9,
            1
        ]
    ],
    "match": "5"
} */

// result should be num_match 9

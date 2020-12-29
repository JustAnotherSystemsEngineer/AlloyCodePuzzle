enum Digit {N0,N1,N2,N3,N4,N5,N6,N7,N8,N9}

let sequence[a,b,c] = 0->a + 1->b + 2->c

one sig Code {c1, c2, c3: Digit}

fun match[code: Code, d: Digit]: Int { #((code.c1 + code.c2 + code.c3) & d) }

pred hint(code: Code, d1,d2,d3: Digit, correct, wellPlaced:Int) {	
	// The intersection of each guessed digit with the code (unordered) tells us whether any of the digits match each other and how many
	correct = match[code,d1].plus[match[code,d2]].plus[match[code,d3]]
	// The intersection of the sequences of digits (ordered) tells us whether any of the digits are correct AND in the right place in the sequence
	wellPlaced = #(sequence[code.c1,code.c2,code.c3] & sequence[d1, d2, d3])
}

pred originalLock {
    some code: Code | 
    hint[code, N6,N8,N2, 1,1] and
    hint[code, N6,N1,N4, 1,0] and
    hint[code, N2,N0,N6, 2,0] and
    hint[code, N7,N3,N8, 0,0] and
    hint[code, N7,N8,N0, 1,0]
}

pred newLock {
	some code: Code | 
	hint[code, N1,N2,N3, 0,0] and 
	hint[code, N4,N5,N6, 0,0] and
	hint[code, N7,N8,N9, 1,0] and
	hint[code, N9,N0,N0, 3,1]
}

run originalLock
run newLock
run test {some code: Code | hint[code, N9,N0,N0, 3,1]}

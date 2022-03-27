⎕ML ← 1

twoSum ← { ⊃⍸⍵=(∘.≠⍨∘⍳∘≢×∘.+⍨)⍺ } ⍝ P1
addTwoNumbers ← {⌽ ⍎¨⍕ (10⊥⍺) + 10⊥⍵} ⍝ P2
convert ← {⊃,/(↑∨⌿¨↓↓((⍳⍺),[0.5]⌽(⍺-1)↓⍳1+r)∘.(∘.=)(r←2-⍨2×⍺)|⍳≢⍵)∘./↓⍵} ⍝ P6
reverse ← { range ← (¯2*31) (1-⍨2*31) ⋄ inRange ← {⍵×≠/range<⍵} ⋄ (×⍵) × inRange 10⊥ ⍎¨⍕ |⍵ } ⍝ P7
isPalindrome ← {(¯1≠×⍵)×(⌽≡⊢)(⍎¨⍕)|⍵} ⍝ P9
rotate ← {↓⌽⍉↑⍵} ⍝ P48
rotateRight ← {⍵⌽⍨⍺-⍨≢⍵} ⍝ P61
countBits ← 0,∘∊{ +⌿⍵⊤⍨⍵ 1⍴2 }¨∘⍳ ⍝ P338
findComplement ← { 2⊥ ~ 2∘⊥⍣¯1⊢ ⍵ } ⍝ 476
flipAndInvertImage ← ~⌽¨ ⍝ P832
checkStraightLine ← { ∧/(1∘⌷=⊢)×-/↑2,/(⊣+¯11○⊢)/↑⍵ } ⍝ P1232
maximum69Number ← { 10⊥ 9@(⊃⍸6=⍎¨⍕⍵)⊢ ⍎¨⍕⍵ } ⍝ P1323
diagonalSum ← {+/+/{⍵×(⌽∨⊢)∘.=⍨⍳≢⍵}↑⍵} ⍝ P1572
findRotation ← { target ← ⍵ ⋄ mat ← ⍺ ⋄ ∨/ {∧/⊃∧/ target = (rotate ⍣ ⍵) mat }¨⍳4 } ⍝ P1886
checkValid ← {∧/⊃∧/∨/(⍳≢⍵)∘.=⍵} ⍝ P2133
]dinput
replaceNonCoprimes ← { ⍝ P2197
	nums ← ⍵
	⍝ get every non-coprimes pair
	nonCoPrimes ← { ( 2,/⍵ ) /⍨ ∧/¨0≠2{ (⍺ ⍵)×1≠∨/⍵ ⍺ }/⍵ }nums
	⍝ if there are non, return the input
	0=⍴nonCoPrimes:nums
	⍝ create array with the pairs' first element's location
	arr ← ⊃,/{ ⍸nums⍷⍨⍵ }¨nonCoPrimes
	⍝ replace the pairs' second element with the value of the LCM
	nums[1+arr] ← ∧/¨nonCoPrimes
	⍝ remove the first element from the array
	nums ← nums[(⍳≢nums)~arr]
	⍝ loop until the size of the array remains the same
	(∇⍣{(≢⍵)=≢⍺}) nums
}
findKDistantIndices ← { ⎕IO ← 0 ⋄ (d k) ← (0⊃⍵) (1⊃⍵) ⋄ ⍸⊃∨/k=((1↓-⍳1+d),⍳1+d)∘.⌽⊂⍺ } ⍝ P2200

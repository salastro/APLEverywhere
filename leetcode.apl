( ⎕IO ⎕ML ) ← 1 1

twoSum ← { ⊃⍸⍵=(∘.≠⍨∘⍳∘≢×∘.+⍨)⍺ } ⍝ P1
addTwoNumbers ← {⌽ ⍎¨⍕ (10⊥⍺) + 10⊥⍵} ⍝ P2
convert ← {⊃,/(↑∨⌿¨↓↓((⍳⍺),[0.5]⌽(⍺-1)↓⍳1+r)∘.(∘.=)(r←2-⍨2×⍺)|⍳≢⍵)∘./↓⍵} ⍝ P6
reverse ← { (×⍵) × {⍵×≠/(¯2*31) (1-⍨2*31)<⍵} 10⊥ ⍎¨⍕ |⍵ } ⍝ P7
isPalindrome ← {(¯1≠×⍵)×(⌽≡⊢)(⍎¨⍕)|⍵} ⍝ P9
rotate ← {↓⌽⍉↑⍵} ⍝ P48
rotateRight ← {⍵⌽⍨⍺-⍨≢⍵} ⍝ P61
rob ← { ⌈/+/¨(⊂⍵)/¨⍨(~,⊢)⊂2|⍳≢⍵ } ⍝ P198
isPowerOfTwo ← { ⍵≤1:0 ⋄ (⌈=⊢)2⍟⍵ } ⍝ P231
countBits ← 0,∘∊{ +⌿⍵⊤⍨⍵ 1⍴2 }¨∘⍳ ⍝ P338
findComplement ← { 2⊥ ~ 2∘⊥⍣¯1⊢ ⍵ } ⍝ 476
flipAndInvertImage ← ~⌽¨ ⍝ P832
threeSumMulti ← {≢{⍵/⍨{(⍵[1]<⍵[2])∧⍵[2]<⍵[3]}¨⍵}⍸⍵=(∘.<⍨⍳≢⍺)×⍤2⊢(⍺∘(∘.+)⍣2)⍺} ⍝ P923
lastStoneWeight ← { 1=≢⍵:⍵ ⋄ ∇ (sorted[1]-sorted[2]),2↓sorted ← ⍵[⌽⍋⍵] } ⍝ P1046
balancedStringSplit ← {+/0=+\(~-⊢)'R'=⍵} ⍝ P1221
checkStraightLine ← { ∧/(1∘⌷=⊢)×-/↑2,/(⊣+¯11○⊢)/↑⍵ } ⍝ P1232
shiftGrid ← { { shifted ← (¯1)⌽↑⍵ ⋄ shifted[;1] ← (¯1)⌽shifted[;1] ⋄ shifted }⍣⍺⊢⍵ } ⍝ P1260
subtractProductAndSum ← {(×/-+/)⍎¨⍕⍵} ⍝ P1281
maximum69Number ← { 10⊥ 9@(⊃⍸6=⍎¨⍕⍵)⊢ ⍎¨⍕⍵ } ⍝ P1323
diagonalSum ← {+/+/{⍵×(⌽∨⊢)∘.=⍨⍳≢⍵}↑⍵} ⍝ P1572
swapNodes ← { ( arr a b ) ← ⍺ ( ⍵⌷⌽⍺ ) ( ⍵⌷⍺ ) ⋄ arr[a b] ← b a ⋄ arr } ⍝ P1721
countPoints ← { (⍳≢⍵)⌷¨+⌿¨(2↓¨⍵)≥¨⊂|(⊣+¯11○⊢)/↑⍺∘.-2↑¨⍵ } ⍝ P1828
findGCD ← ⌈/∨⌊/ ⍝ 1979
findRotation ← { (target mat) ← ⍵ ⍺ ⋄ ∨/ {∧/⊃∧/ target = (rotate ⍣ ⍵) mat }¨⍳4 } ⍝ P1886
checkValid ← {∧/⊃∧/∨/(⍳≢⍵)∘.=⍵} ⍝ P2133
]dinput
replaceNonCoprimes ← { ⍝ P2197
	⍝ get every non-coprimes pair
	nonCoPrimes ← { ( 2,/⍵ ) /⍨ ∧/¨0≠2{ (⍺ ⍵)×1≠∨/⍵ ⍺ }/⍵ } nums ← ⍵
	⍝ if there are non, return the input
	0=⍴nonCoPrimes:nums
	⍝ create array with the pairs' first element's location
	arr ← ⊃,/{ ⍸nums⍷⍨⍵ }¨nonCoPrimes
	⍝ replace the pairs' second element with the value of the LCM
	nums[1+arr] ← ∧/¨nonCoPrimes
	⍝ remove the first element from the array
	nums ← nums[(⍳≢nums)~arr]
	⍝ loop until the size of the array remains the same
	(∇⍣{(≢⍵)=≢⍺}) nums ⋄
}
findKDistantIndices ← { ⎕IO ← 0 ⋄ (d k) ← (0⊃⍵) (1⊃⍵) ⋄ ⍸⊃∨/k=((1↓-⍳1+d),⍳1+d)∘.⌽⊂⍺ } ⍝ P2200

⎕ML ← 1

SonarSweep ← +/2</⊢
Dive ← { (f d u)←⍵∘{((⍎∘⊃¨⌽¨)×⍵⍷1∘⌷¨)⍺}¨ 'f' 'd' 'u' ⋄ ⍺←1 ⋄ ⍺=1:(+/f)×+/d-u ⋄ ⍺=2:(+/f)×+/f×+\d-u }
BinaryDiagnostic1 ← (2∘⊥×2⊥~)≢<2∘×∘(+⌿'1'=↑)
BinaryDiagnostic2 ← { R ← {1=≢⍵:2⊥⍎¨⊃⍵ ⋄ ⍺←1 ⋄ (1+⍺)∇⍵/⍨⍺⌷⍉((≢⍵)⍺⍺2×⍺⌷+⌿'1'=↑⍵)='1'=↑⍵} ⋄ ((≤R⍵)×>R⍵) }
]dinput
GiantSquid ← {
	⍝ ⍺ ← ⍎¨','(≠⊆⊢)⊃data
	⍝ ⍵ ← {⍎¨5 5⍴⍵}¨,/(6÷⍨≢1↓data) 6⍴' '∘(≠⊆⊢)¨ 1↓data
	res ← ⍺∘{ p←,\⍺ ⋄ i←⊃⍸(∨/5=+/,+⌿)¨⍵∘∊¨p ⋄ i,(⊃⌽i⊃p)×+/,⍵×~⍵∊i⊃p }¨⍵ ⋄ {(1↓⊃⍵),1↓⊃⌽⍵}(⊂⍤⍋⌷⊢)res ⋄
}

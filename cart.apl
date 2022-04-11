)load buildse
BUILD_SESSION 'uk'
]boxing on -trains=tree
⍝ ⎕CY'dfns'
( ⎕IO ⎕ML ⎕DIV ) ← 1 1 0

⍝ X, Y, Z: any type array  M, N: numeric array  I, J: integer array  A,
⍝ B: Boolean array  C, D: character array  f, g, h: function  ax: bracket axis
⍝ s: scalar  v: vector  m: matrix

SYNTAX	DESCRIPTION
⍬	Empty Numeric Vector
⊢Y	Same: Y
X dop Y⊢Z	Separate dyadic operator's right operand from its right argument (same as (X dop Y)Z )
X⊢Y	Right: Y
X⊢Y	Church Boolean false (X if false, else Y)
⊣Y	Same: Y
X⊣Y	Left: X
X⊣Y	Church Boolean true (X if true, else Y)
+Y	Conjugate ('Identity' if Y not complex)
+N	Mirror complex N across x-axis
M+N	Adding N to M
-N	Negate: 0-N
M-N	Subtracting N from M
×N	Direction ('Signum' if N is real)
M×N	Multiplying M and N
M×N	Probabilistic AND
A×N	Selecting elements satisfying condition A, others to 0
M∨N	Greatest Common Divisor of M and N
A∨B	Logical OR
M∧N	Lowest Common Multiple of M and N
A∧B	Logical AND
⌈N	Rounding up to integer
M⌈N	Maximum of M and N
⌊N	Rounding down to integer
M⌊N	Minimum of M and N
⌽Y	Reverse last axis of Y
⌽Ym	Reflect vertically
I⌽Y	Rotate vectors along last axis of Y
⊖Y	Reverse leading axis of Y
⊖Ym	Reflect horizontally
I⊖Y	Rotate vectors along leading axis of Y
÷N	Reciprocal: 1÷N
M÷N	Dividing M by N
|N	Magnitude (absolute value)
M|N	Residue after dividing N by M
!N	Factorial (Gamma function of N+1)
M!N	Number of selections of size M from N (using Beta function): C(N,M)
A!N	Selecting elements satisfying condition A, others to 1
?J	Random number selected from ⍳J
?B	Random real number between (0,1) if B=0 or ⎕IO if B=1
Is?Js	Deal: Is random items from ⍳Js (without replacement)
M<N	Less Than
A<B	Logical converse nonimplication
M≤N	Less Than Or Equal To
A≤B	Logical implication
X=Y	Equal To
A=B	Logical XNOR
M≥N	Greater Than Or Equal To
A≥B	Logical converse implication
M>N	Greater Than
A>B	Logical nonimplication
≠Y	Nub sieve: mask for major cells to leave the distinct (∪Y)
X≠Y	Not Equal To
A≠B	Logical XOR
≡Y	Depth: Maximum level of nesting in Y (negative if uneven)
X≡Y	Match: 1 if X is identical to Y, else 0
≢Xm	Number of rows in matrix Xm
≢Y	Tally: Number of items in leading axis
X≢Y	Not Match: ~X≡Y
↓Y	Split: Nest sub-arrays (from last axis)
↓Ym	Matrix to vector of row vectors
Is↓Ym	Drop Is rows from matrix Ym
Iv↓Y	Drop Iv items along leading axes of Y
↑Y	Mix: Remove nesting (adding trailing axes)
↑Yv	Vector of row vectors to matrix
Is↑Yv	Padding Yv on the right to width Is
Is↑Ym	Take Is rows from matrix Ym
Iv↑Y	Take Iv items along leading axes of Y
Iv↑Ys	Padding Ys to shape Iv
⍴Y	Shape: Length of each axis of Y
Iv⍴Y	Reshape Y to have shape Iv
*N	e raised to the power N
M*N	M raised to the power N
⍟N	Natural logarithm of N
M⍟N	Base-M logarithm of N
○N	pi times N
I○N	Circular functions
~B	Logical inverse (NOT): 0=B
Xv~Y	Without: (~Xv∊Y)/Xv
X Y⍨Z	Constant: ignore arguments and return Y
X f⍨Y	Commute: same as Y f X
X f⍨Y	Church Boolean Logical Inverse
Y⍨Z	Constant: ignore argument and return Y
f⍨Y	Selfie: same as Y f Y
X f∘g Y	Beside: X∘f on the result of g on Y, that is, X f g Y
X∘g Y	Curry: g between X and Y, that is, XgY
f∘g Y	Beside: f on the result of g on Y, that is, f g Y
X f¨Y	Each: f between items of X and Y
f¨Y	Each: f on items of Y
X f⍥g Y	Over: preprocess (g) arguments before applying main function (f)
f⍥g Y	Over: f on the result of g on Y, that is, f g Y
Is f/Y	N-wise Reduce: f between all items of Y in groups of Is on last axis
Iv/Y	Replicate along last axis of Y
Av/Y	Filtering columns of Y according to mask Av
f/Y	Reduce: f between all items of Y on last axis
Is f⌿Y	N-wise Reduce First: f between all items of Y in groups of Is on first axis
Iv⌿Y	Replicate along leading axis of Y
Av⌿Y	Filtering major cells of Y according to mask Av
f⌿Y	Reduce First: f between all items of Y on first axis
X f⍤g Y	Atop: f on the result of X g Y, that is, f X g Y
f⍤g Y	Atop: f on the result of g on Y, that is, f g Y
A⍱B	Logical NOR
A⍲B	Logical NAND
,Y	Ravel: Reshape into a vector
X,Y	Catenate: Join along last axis
Xm,Ys	Append scalar to each row of matrix
Xm,Yv	Append elements of vector to respective rows of matrix
⍪Y	Table: Reshape into 2-dimensional array
⍪Y	Ravel planes of rank 3 array Y to form rows of a matrix
⍪Yv	Reshaping vector Yv into a one-column matrix
X⍪Y	Catenate First: Join along leading axis
Xm⍪Ys	Append scalar to each column of matrix
Xm⍪Yv	Append elements of vector to respective columns of matrix
⊃Y	First item of Y
Iv⊃Y	Reach into Y along path given by Iv
⊂Y	Enclose: Scalar containing Y
Av⊂Y	Partitioned enclose of Y according to Av (along last axis) beginning enclosures on 1s
⊆Y	Nest: Y if already nested, else scalar containing Y
Mv⊆Y	Partition Y according to Mv (along last axis) beginning partitions on increases
⌷Y	Materialise items of Y in workspace
Iv⌷Y	Index Y using indices Iv
⍳Js	Integers from 1 to Js
⍳Jv	Indices of all items of array of shape Jv
X⍳Y	Index of: First indices in X of major cells Y
Xv⍳Y	Index of keys Y in key vector Xv
∊Y	Enlist: Simple vector from elements of Y
X∊Y	For each item of X, 1 if found in Y, else 0
⍸B	Indices of all 1s in B
⍸Bm	List of arcs from adjacency matrix Bm
X⍸Y	Indices of major cells of Y in left-inclusive intervals with cut-offs X
∪Y	Unique: Distinct major cells of Y
Xv∪Yv	Union: Xv,Yv~Xv
Xv∩Yv	Intersection: (Xv∊Yv)/Xv
X f⍣g Y	Power: iterating X∘f on Y until condition (f Y) g Y is true
f⍣g Y	Power: iterating f on Y until condition (f Y) g Y is true
⍋Y	Ascending grade: Indices to reorder Y into ascending order
⍋Jv	Invert permutation
C⍋D	Ascending grade using collation sequence C
⍒Y	Descending grade: Indices to reorder Y into descending order
C⍒D	Descending grade using collation sequence C
Iv\Y	Expand last axis of Y
f\Y	Scan: f between items of Y in progressively longer vectors along last axis
Iv⍀Y	Expand leading axis of Y
f⍀Y	Scan First: f between items of Y in progressively longer vectors along first axis
⍉Y	Transpose: Reverse order of axes of Y
⍉Ym	Reflect diagonally
Iv⍉Y	Reorder the axes of Y
X f⌸Y	Key: f between unique X values and their corresponding items of Y
f⌸Y	Key: f between unique Y values and their first-axis indices
X⍷Y	Boolean indication of top left corner of occurrences of entire array X within Y
X f.g Y	Inner Product: f / g between trailing vectors of X and leading vectors of Y
M⊥N	Decode: Evaluate N in number system M
Ns⊥N	Value of polynomial with descending coefficients N at point Ns
M⊤N	Encoding value N in number system M
⌹Nm	Matrix inverse of Nm (square Nm)
⌹Nm	Matrix pseudo-inverse of Nm (over-determined Nm)
Mv⌹Nm	Solve equation system with variable coefficients Nm and values Mv
Mm⌹Nm	Multiplying Mm with inversed Nm
⍎Dv	Execute: Result of expression Dv
X⍎Dv	Execute Dv within namespace X (name or reference)
⍕Y	Format: Character representation of Y
Iv⍕Y	Format Y using ({width}, decimals) pairs Iv (negative decimals for scaled notation)
X f&Y	Spawn: f between X and Y in a new thread
f&Y	Spawn: f on Y in a new thread
Ns⌶Y	I-beam: Call experimental system-related monadic function Ns
name f←Y	Modified Assignment (tradfns/tradops only)
name←Y	Assignment
∇	Dfn Self
→	Abort (cut stack back one frame)
→0	Return: Leave function and return to caller
→Jv	Branch to first line or label in Jv (does nothing if Jv is empty)
⍵	Dfn/dop Right Argument
⍺	Dfn/dop Left Argument
Z f⍨X,Y	Avoiding parentheses by swapping arguments in (X,Y) f Z
X∘.g Y	Outer Product: g between each item of X and every item of Y
expr⊣name←Y	Combining two lines into one
∇∇	Dop Self
↑Xv Yv …	N-row matrix from N vectors
⍵⍵	Dop Right Operand
⍺⍺	Dop Left Operand
⌽[ax]Y	Reverse axis ax of Y
I⌽[ax]Y	Rotate vectors along axis ax of Y
↓[ax]Y	Split: Nest sub-arrays (from axis ax)
Iv↓[ax]Y	Drop Iv items along axes ax of Y
↑[ax]Y	Mix: Remove nesting (adding axes between ⌊ax and ⌈ax)
Iv↑[ax]Y	Take Iv items along axes ax of Y
Is f/[ax]Y	N-wise Reduce: f between all items of Y in groups of Is on axis ax
Iv/[ax]Y	Replicate along axis ax
f/[ax]Y	Reduce: f between all items of Y on axis ax
,[ax]Y	Ravel with Axis: insert new axis between ⌊ax and ⌈ax
,[ax]Y	Ravel with Axes: combine axes
X,[ax]Y	Laminate: Join along new axis
⊂[ax]Y	Enclose: Contain axes ax inside scalars
Av⊂[ax]Y	Partitioned enclose of Y according to Av (along axis ax)
Mv⊆[ax]Y	Partition Y according to Mv (along axis ax)
Iv⌷[ax]Y	Index Y using indices Iv along axes ax
Iv\[ax]Y	Expand axis ax of Y
f\[ax]Y	Scan: f between items of Y in progressively longer vectors along axis ax
name[I]←Y	Indexed Assignment
name[I]f←Y	Modified Indexed Assignment (tradfns/tradops only)
X(Y⍨)Z	Constant: ignore arguments and return Y
(f∘Y)Z	Curry: f between Z and Y, that is, Z f Y
X(f⍤Is Js)Y	Rank: f between every trailing rank-Is subarray of X and every trailing rank-Js subarray of Y
(f⍤Js)Y	Rank: f on every trailing rank-Js subarray of Y
X@{B}Y	Unpack a vector X into an array based on mask B
X(f@N)Y	At: apply X∘f to modify positions N in Y
X(f@g)Y	At: apply X∘f to modify positions identified by Boolean mask (g Y) in Y
(X@N)Y	At: use values in X to replace positions N in Y
(X@g)Y	At: use values in X to replace positions identified by Boolean mask (g Y) in Y
(Xv@Js)Ym	Amend row Is of matrix Ym
(f@N)Y	At: apply f to modify positions N in Y
(f@g)Y	At: apply f to modify positions identified by Boolean mask (g Y) in Y
X(f⍣Js)Y	Power: apply X∘f on Y Js times
(f⍣Js)Y	Power: apply f on Y Js times
(f⌺Jm)Y	Stencil: f on padding-size and (possibly overlapping) rectangles of Y of size and (optionally step) Jm
X(Ns⌶)Y	I-beam: Call experimental system-related dyadic function Ns
X(f⍠Zv)Y	Variant: f qualified by Zv between X and Y
(f⍠Zv)Y	Variant: f qualified by Zv on Y
(exp name)←Y	Selective Assignment: exp is an expression that selects elements of "name"
(exp name)f←Y	Modified Selective Assignment: exp is an expression that selects elements of "name" (tradfns/tradops only)
name[I]f∘⊢←Y	Modified Indexed Assignment (tradfns/tradops only)
(exp name)f∘⊢←Y	Modified Selective Assignment: exp is an expression that selects elements of "name" (tradfns/tradops only)
⎕NULL	The null item
⎕A	The letters from A to Z
⎕C Y	Casefold
⎕CLEAR	Clear the active workspace
⎕D	The digits from 0 to 9
⎕DMX	Namespace containing details of most recent error in current thread
⎕EXCEPTION	Details of most recent .NET exception
⎕LOAD file	Load saved workspace
⎕OFF	Terminate the APL session
⎕OFF J	Terminate the APL session with exit code Y
⎕SE	Session object
1∘⎕C Y	Uppercase
¯1∘⎕C Y	Lowercase
⎕LX←expression	Expression to be executed when workspace is loaded
⎕PATH ←nss	Set search path (blank-separated list of namespace names) for functions and operators
⎕RL←⍬ 1	Seed and Random Number Generator used by Roll/Deal
⎕SM←fields	Define character-based user interface
⎕TRAP←trap_spec	Define error handling
⎕USING ←ns_specs	Set search path for .NET Namespace(s)
⎕WSID←name	The name of the active workspace
file←⎕NNAMES	Names of tied files in same order as ⎕NNUMS
script←⎕SRC ref	The source code of an object
space_names←⎕NSI	Names of spaces from which functions on stack were called
space_references←⎕RSI	References to spaces from which functions on stack were called
messages←⎕EM codes	Event messages corresponding to error/interrupt codes
bytes←⎕NSIZE tn	Current size of file tied with number tn
bytes←⎕SIZE names	Space consumed by code/data attached to names
bytes←⎕WA	Workspace available (unused)
captured_output←⎕CMD cmd	Execute Microsoft Windows cmd (synonym of ⎕SH)
captured_output←⎕SH cmd	Execute UNIX shell cmd (synonym of ⎕CMD)
class_hierarchy←⎕CLASS ref	Class hierarchy for a class/instance
errno←⎕EN	Error number for last reported APL error
names←⎕XSI	Full names of functions on the stack
names←⎕FLIB folder	List component files in the specified folder
names←⎕REFS name	List the names referenced by a function
names←⎕SI	Vector of names of functions on the stack
numvec←⎕NC names	Class of each name (fractional if names is nested)
numvec←⎕LC	Lines at which each function on stack is suspended
numvec←⎕TS	Current time (y m d h m s ms)
old_df←⎕DF char_array	Set the display form of the current space
r←⎕NEXISTS files	Return 1 if files exist, else 0
r←⎕NR name	Source of function or operator as a nested vector
r←⎕AI	User number, compute, connect, keying time (ms)
r←⎕CR name	Source of function or operator as a character matrix
r←⎕CSV data	Convert CSV data to APL matrix
r←⎕FAVAIL	1 if file system is available, else 0
r←⎕OR name	Object representation (variable) of function, operator, or namespace
r←⎕STACK	Definition of each function on the stack
r←⎕STATE name	Details of the usage of name at each level of the stack
r←⎕VR name	Source of function or operator as a simple vector
r←0 ⎕JSON data	Convert JSON text to APL array
r←0 ⎕DT dates	Validate (⎕TS or Dyalog date number) date-times
r←1 ⎕JSON data	Convert APL array to JSON text
r←type ⎕DR x	Interpret internal representation as array of type 'type'
r←type ⎕DT dates	Convert (⎕TS or Dyalog date number) date-times to type 'type'
r←type 0 ⎕DT dates	Validate type 'type' date-times
r←type1 type2 ⎕DT dates	Convert type 'type1' date-times to type 'type2'
ref←⎕THIS	Reference to the current namespace
refs←⎕INSTANCES class	Current instances of class
tdno←⎕TNUMS	Report the numbers of all current threads
tdno←⎕TID	The number of the current thread
tdno←⎕TCNUMS tdno	The child thread numbers of the given thread numbers
tdres←⎕TSYNC tdno	Wait for threads tdno to terminate and return results
tktype←⎕TPOOL	Type of each token in the token pool
tktype←⎕TREQ tdno	List token types that threads tdno are have requested and are waiting for
tns←⎕NNUMS	Tie numbers of tied files
tns←⎕FNUMS	Vector containing tie numbers of tied files
type←⎕DR x	Return internal data type of x
user_name←⎕AN	User (login) name
⎕CS #	Switch to workspace root namespace
t←0 ⎕NINFO tns/files	Return names for tns/files
t←1 ⎕NINFO tns/files	Return types (0:unknown, 1:directory, 2:file, 3:char-device, 4:sym-link, 5:block-dev, 6:FIFO. 7:socket) for tns/files
t←10 ⎕NINFO tns/files	Return create time (⎕TS-style) for tns/files
t←11 ⎕NINFO tns/files	Return whether readable (1:yes, 0:no, ¯1:unknown) for tns/files
t←12 ⎕NINFO tns/files	Return whether writeable (1:yes, 0:no, ¯1:unknown) for tns/files
t←2 ⎕NINFO tns/files	Return size (in bytes) for tns/files
t←3 ⎕NINFO tns/files	Return last modification time (⎕TS-style) for tns/files
t←4 ⎕NINFO tns/files	Return owner user ID for tns/files
t←5 ⎕NINFO tns/files	Return owner name for tns/files
t←6 ⎕NINFO tns/files	Return hidden attribute for tns/files
t←7 ⎕NINFO tns/files	Return symbolic link target for tns/files
t←8 ⎕NINFO tns/files	Return current file position for tns/files
t←9 ⎕NINFO tns/files	Return last access time (⎕TS-style) for tns/files
⎕names←⎕FNAMES	Names of tied files in same order as ⎕FNUMS
old_df←⎕DF ⎕NULL	Reset the display form of the current space to the default
⎕CS ##	Switch to parent namespace
⎕TNAME←{tdname}	Report/set the name (tdname) of the current thread
ax_mx←⎕FRDAC tn {pn}	Read access matrix of file tied with number tn (pn is optional passnumber)
valid nums←{seps} ⎕VFI text	Validate numeric input: returns Boolean validity mask and numeric vector of converted input
vec←⎕NREAD tn type n {offset}	Read n items of specified type from file tied with number tn
children←{class} ⎕WN parent	Child objects (of class) of parent
cn←x ⎕FAPPEND tn {pn}	Append x to end of file tied with number tn (pn is optional passnumber)
cns←{fchk_opts} ⎕FCHK file	Inspect and optionally repair file
instance←⎕NEW class {conargs}	Create an instance of class
keystrokes←{keystrokes} ⎕PFKEY pfkey	Set/report programmable function key (F-key)
names←{init_chars} ⎕NL nums	List names of existing specified class(es), optionally filtered (negative for nested result)
names←{init_chars} ⎕NL ¯1	List names of existing line labels, optionally filtered
names←{init_chars} ⎕NL ¯2	List names of existing arrays, optionally filtered
names←{init_chars} ⎕NL ¯3	List names of existing functions, optionally filtered
names←{init_chars} ⎕NL ¯4	List names of existing operators, optionally filtered
names←{init_chars} ⎕NL ¯9	List names of existing objects, optionally filtered
r←⎕FHIST tn {pn}	Return history (user/time of last operations) of file tied with number tn (pn is optional passnumber)
r←⎕FRDCI tn cn {pn}	Size in bytes, user and timestamp of last update to component cn in file tied with number tn (pn is optional passnumber)
r←⎕FREAD tn cn {pn}	The array stored in component(s) cn in file tied with number tn (pn is optional passnumber)
r←⎕FSIZE tn {pn}	First and next-free component number, used and max size in bytes of file tied with number tn
r←data {header} ⎕CSV format_spec	Convert CSV data from APL matrix
r←nvpairs ⎕FPROPS tn {pn}	Set properties of file tied with number tn using name-value pairs (pn is optional passnumber)
r←pnames ⎕FPROPS tn {pn}	Current values of the named properties of file tied with number tn (pn is optional passnumber)
r←{flags} ⎕NPARTS files	Splits files into paths, base names and extensions (normalising files if flags=1)
r←{format_spec} ⎕FMT x	Convert x into character matrix according to spec
r←{selector} ⎕AT names	Syntactical attributes of named functions or operators
r←{encoding} ⎕UCS vec	Map characters to/from Unicode code points
r←{xml_options} ⎕XML data	XML string to/from APL array
{⍬}←output ⎕ARBOUT codes	Transmit 8-bit codes to output device
{0}←⎕SIGNAL 0	Reset error-related system constants
{1}←0 ⎕SAVE file	Save active ws without stack, ignoring any open edit or trace windows
(message code position)←⎕DM	Diagnostic message for last reported APL error
{boolvec}←⎕EX names	Delete named objects from the active workspace (1 if each name is now free for use, else 0)
{counts}←destination ⎕NMOVE sources	Move files/directories from 'sources' to 'destination'
{counts}←destination ⎕NCOPY sources	Copy files/directories from 'sources' to 'destination'
{num}←⎕DL num	Delay and return seconds actually delayed
{offset}←x ⎕NAPPEND tn type	Append x using internal representation type to file tied with number tn
(rows columns)←⎕SD	Screen dimensions of terminal or ⎕SM window
{r}←⎕DQ object	Process events generated by object(s)
{r}←⎕SAVE file	Save active ws with stack; r←1 now, and 0 when reloaded
{r}←⎕SHADOW names	Make names local to most recently invoked defined fn
{tns}←⎕NUNTIE tns	Untie one or more files
{tns}←⎕FUNTIE tns	Untie one or more component files
{tn}←file ⎕NCREATE tn	Create file tied with number tn (tn 0 to generate tn)
{tn}←file ⎕NERASE tn	Erase tied file tied with number tn
{tn}←file ⎕NRENAME tn	Rename tied file to have name file
state|data←{settings} ⎕PROFILE action	“Profile” CPU or elapsed time consumption of code
ref←{class/interface} ⎕CLASS instance	Extract specific interface to an instance
t←{properties} ⎕NINFO tns/files	Return values of properties for tns/files
⎕IO←(1,0)	Specifies whether array indices are counted from 0 or 1
⎕DIV←(0,1)	0: 1=0÷0, all other÷0 error; 1: 0=all÷0
⎕FR←(645,1287)	Specifies the result type of floating-point computations
names←{init_chars} ⎕NL ¯2.1	List names of existing variables, optionally filtered
names←{init_chars} ⎕NL ¯2.2	List names of existing fields, optionally filtered
names←{init_chars} ⎕NL ¯2.3	List names of existing properties, optionally filtered
names←{init_chars} ⎕NL ¯2.6	List names of existing external variables and properties, optionally filtered
names←{init_chars} ⎕NL ¯3.1	List names of existing tradfns, optionally filtered
names←{init_chars} ⎕NL ¯3.2	List names of existing dfns, optionally filtered
names←{init_chars} ⎕NL ¯3.3	List names of existing derived and primitive functions and trains, optionally filtered
names←{init_chars} ⎕NL ¯3.6	List names of existing methods and external functions, optionally filtered
names←{init_chars} ⎕NL ¯4.1	List names of existing tradops, optionally filtered
names←{init_chars} ⎕NL ¯4.2	List names of existing dops, optionally filtered
names←{init_chars} ⎕NL ¯4.3	List names of existing derived and primitive operators optionally filtered
names←{init_chars} ⎕NL ¯8.6	List names of existing external events, optionally filtered
names←{init_chars} ⎕NL ¯9.1	List names of existing namespaces, optionally filtered
names←{init_chars} ⎕NL ¯9.2	List names of existing instances, optionally filtered
names←{init_chars} ⎕NL ¯9.4	List names of existing classes, optionally filtered
names←{init_chars} ⎕NL ¯9.5	List names of existing interfaces, optionally filtered
names←{init_chars} ⎕NL ¯9.6	List names of existing external classes, optionally filtered
names←{init_chars} ⎕NL ¯9.7	List names of existing external interfaces, optionally filtered
r←(⎕NEXISTS⍠1)files	Return 1 if files (with ? and * globbing) exist, else 0
r←(⎕CSV⍠1)data	Convert CSV data to APL inverted table (character data as matrices)
r←(⎕CSV⍠2)data	Convert CSV data to APL inverted table (character data as vectors of vectors)
r←{object} ⎕WG props…	The values of the properties of an object
⎕ML←(0≤1≤3)	Degree of compatibility with IBM APL2 (from 0=low to 3=high)
⎕PP←(1≤10≤34)	Number of significant digits in the display of numeric output
⎕RTL←(0≤0≤32767)	Response time limit (seconds, 0:none) for ⍞, ⎕ARBIN, and ⎕SR input (signals 1006 if exceeded)
codes←terminate (input {output}) ⎕ARBIN codes	Read from input device, optionally after transmitting 8-bit codes to output device
r←{tn} (regex ⎕R trans) text	Replace text selected by regex using trans (optional tn to spool output to native file tied with number tn)
r←{tn} (regex ⎕S trans) text	Search text for PCRE regex returning trans (optional tn to spool output to native file tied with number tn)
{file}←{file} ⎕XT name	Set/report external variable association
(vector encoding newline)←{encoding} ⎕NGET file	Read Unicode text file simple content, encoding, and linebreaks
(vector_of_vectors encoding newline)←{encoding} ⎕NGET file 1	Read Unicode text file nested content, encoding, and linebreaks
{cn}←⎕FDROP tn n {pn}	Drop n components from start (n>0) or end (n<0) of file tied with number tn (pn is optional passnumber)
{cn}←x ⎕FREPLACE tn cn {pn}	Store array x in component number cn of file tied with number tn (pn is optional passnumber)
{counts}←{flags} ⎕NDELETE files	Delete files (if flags 1, tolerate 'file not found')
{created}←{flags} ⎕MKDIR dir	Create or ensure existence of directory dir
{end_offset}←x ⎕NREPLACE tn offset {type}	Write x to file tied with number tn at offset as type
{linenos}←{linenos} ⎕MONITOR name	Set/report the current state of performance monitoring for a function
{linenos}←{linenos} ⎕STOP name	Set/report the current state of stops for a function
{linenos}←{linenos} ⎕TRACE name	Set/report the current state of tracing for a function
{names}←{etypes} ⎕ED names	Open one or more objects (names) of types etypes in the Editor
{name}←{name} ⎕NA fn_desc	Associate name with external DLL function
{old_ns}←{names} ⎕CS ns	Switch to a ns, optionally exporting names
{ref}←{flags} ⎕FIX source	Define objects from source (vector of vectors or file name starting with 'file://')
{tdno}←{tkval} ⎕TPUT tktype	Add tokens to pool and return any tdno this unblocks
{tkval}←{timeout} ⎕TGET tktype	Remove tokens of types tktype from the token pool
{tn}←⎕FHOLD tn {pn}	Hold tied file tied with number tn and optionally passnumber pn (can be a matrix of tn {pn})
{tn}←file ⎕NTIE tn {file_mode}	Tie a file with number tn in the specified mode (tn 0 to generate tn)
{tn}←file ⎕FCOPY tn {pn}	Create copy of named file tied to tn (pn is optional passnumber)
{tn}←file ⎕FCREATE tn {64}	Create new component in file tied with number tn
{tn}←file ⎕FERASE tn {pn}	Erase exclusively-tied file tied with number tn (pn is optional passnumber)
{tn}←file ⎕FRENAME tn {pn}	Rename exclusively-tied file tied with number tn (pn is optional passnumber)
{tn}←file ⎕FSTIE tn {pn}	Share-tie component in file tied with number tn (pn is optional passnumber)
{tn}←file ⎕FTIE tn {pn}	Exclusively tie component file with number tn (tn 0 to generate tn, pn is optional passnumber)
{tn}←ax_mx ⎕FSTAC tn {pn}	Set access matrix for file tied with number tn (pn is optional passnumber)
{tn}←{bytes} ⎕NRESIZE tn	Resize file tied with number tn to have specified size
{types}←{types} ⎕EXPORT names	Set/report the export type of names referenced by ⎕PATH
(↑⍣≡0∘⎕JSON)Y	Convert JSON to high rank APL array
⎕CT←(0≤1E¯14≤2*¯32)	Max ratio between numbers considered equal when ⎕FR←645
⎕DCT←(0≤1E¯28≤2*¯32)	Max ratio between numbers considered equal when ⎕FR←1287
{r}←⎕FX cr/nr/vr/or	Name of fn or op defined from its matrix, nested, vector or object representation (or failing line no)
{names}←'-' ⎕ED names	Create one or more character matrices (names) in the Editor
{tdno}←{0|1} ⎕TKILL tdno	Kill threads tdno and (default 1 is true) descendants
{names}←'⍟' ⎕ED names	Create one or more namespaces (names) in the Editor
{names}←'○' ⎕ED names	Create one or more classes (names) in the Editor
{names}←'∘' ⎕ED names	Create one or more interfaces (names) in the Editor
{level}←{level} ⎕LOCK name/ref	Hide source and optionally disallow suspension
{name/ref}←{name} ⎕NS names	Create (optionally named) namespace copying names into it
{name/ref}←{name} ⎕NS ref	Create (optionally named) namespace copying contents of ref into it
{names}←'∊' ⎕ED names	Create one or more vectors of character vectors (names) in the Editor
r←0(⎕JSON⍠'M')data	Convert JSON text to APL matrix
r←1(⎕JSON⍠'M')data	Convert APL matrix to JSON text
r←data {header}(⎕CSV⍠1)format_spec	Convert CSV data from APL inverted table (character data as matrices)
r←data {header}(⎕CSV⍠2)format_spec	Convert CSV data from APL inverted table (character data as vectors of vectors)
r←{tn} (regex ⎕R trans⍠1) text	Replace text selected by case-insensitive regex using trans (optional tn to spool output to native file tied with number tn)
r←{tn} (regex ⎕S trans⍠1) text	Search text for case-insensitive PCRE regex returning trans (optional tn to spool output to native file tied with number tn)
{counts}←destination(⎕NMOVE⍠1)sources	Move files/directories from 'sources' (with ? and * globbing) to 'destination'
{counts}←destination(⎕NCOPY⍠1)sources	Copy files/directories from 'sources' (with ? and * globbing) to 'destination'
{names}←'∇' ⎕ED names	Create one or more functions (names) in the Editor
{names}←'→' ⎕ED names	Create one or more character vectors (names) in the Editor
{old_values}←{object} ⎕WS nvpairs…	Set the values of one or more specified properties of object
t←{properties}1(⎕NINFO⍠1)tns/files	Return values of properties 1 for tns/files (with ? and * globbing)
{r}←{action} ⎕NQ object event {params}	Enqueue an event for processing
{tn}←{bytes} ⎕FRESIZE tn {pn}	Compact exclusively-tied file tied with number tn and set its max size (pn is optional passnumber)
{counts}←{flags}(⎕NDELETE⍠1)files	Delete files (with ? and * globbing, if flags 1, tolerate 'file not found')
{0⍴⊂''}←{names} ⎕CY file	Copy (optionally selected) names from saved ws
{r}←{msg} ⎕SIGNAL errno/{nvpairs}…	Signal an error; nvpairs set ⎕DMX properties
name←{type}{shape} ⎕MAP file {rw} {offset}	Associate name with mapped file (from offset)
{bytes}←text {encoding {newline}}⎕NPUT file {flags}	Write (overwrite if flags is 1, append if flags is 2) text (vector or vector of vectors) to Unicode file
{exit_context}←{exit_keys {initial_context}} ⎕SR {fields}	Allows user to edit/interact with form defined by ⎕SM
{rarg}←lock {secs} ⎕NLOCK tn {offset} {bytes}	Change region lock status (0:unlock, 1:read, 2:write, optional timeout in seconds) of file tied with number tn
{name}←{name} ⎕WC type {ordered_props} {nvpairs} …	Create an instance of a built-in type and set property values
+⍨N	Double: 2×N
×⍨N	Square: N*2
?⍨Js	Random Permutation of length Js
=⍨Y	Ones, same shape and structure
≠⍨Y	Zeros, same shape and structure
1∘+N	Increment: N+1
¯1∘-J	2's-complement bit-wise NOT
0∘×N	Zero array of shape, size, and structure of N
100∘×N	Percentage corresponding to rate N
3∘×N	Triple: 3×N
0∘⌈N	Ensure that N is non-negative (negatives become zero)
0∘⌊N	Ensure that N is non-positive (positives become zero)
1∘⌽Y	Rightmost neighbouring elements (cyclically)
¯1∘⌽Y	Leftmost neighbouring elements (cyclically)
1∘|N	Fractional part of number
1000∘|IA	Last part of packed numeric code ABBB
2∘|J	Parity of J (is J odd?)
256∘|J	Convert from signed short integers to unsigned short integers
0∘<N	Strictly positive?
0∘≤N	Non-negative?
0∘=N	Zero?
0∘≥N	Non-positive?
0∘>N	Strictly negative?
0∘≠N	Non-zero?
1∘↓Y	Behead: Remove first major cell
¯1∘↓Y	Curtail: Remove last major cell
⍬∘⍴Y	First element of Y as a scalar
10∘*N	Common anti-logarithm
10∘⍟N	Common logarithm
0∘○N	cos ↔ sin: (1-N*2)*.5 (more precise cos arcsin N or sin arccos N)
0∘○N	Triangle side as function of side (hypotenuse≤1)
1∘○N	Sine N
10∘○N	Magnitude of N
11∘○N	Imaginary part of N
12∘○N	Phase of N
2∘○N	Cosine N
3∘○N	Tangent N
4∘○N	sinh → cosh: (1+N*2)*.5 (more precise cosh arsinh N or sec arctan N)
4∘○N	Triangle hypotenuse as function of side ratio
5∘○N	Hyperbolic sine N
6∘○N	Hyperbolic cosine N
7∘○N	Hyperbolic tangent N
8∘○N	icos ↔ isin: (-1+N*2)*.5
9∘○N	Real part of N
¯1∘○N	Arcsine N
¯10∘○N	+N (complex conjugate)
¯11∘○N	N×0J1
¯12∘○N	*N×0J1
¯2∘○N	Arccosine N
¯3∘○N	Arctangent N
¯4∘○N	cosh → sinh: (N+1)×((N-1)÷N+1)*.5 (more precise sinh arcosh N or tan arcsec N)
¯4∘○N	Triangle side (≥1) as function of hypotenuse
¯5∘○N	Hyperbolic arsin N
¯6∘○N	Hyperbolic arcos N
¯7∘○N	Hyperbolic artan N
¯8∘○N	icos ↔ -isin: -(-1+N*2)*.5
¯9∘○N	N (identity)
f∘g⍨Y	Hook: apply f between Y and (g Y), that is Y f g Y
⊢/Y	Fast: The last sub-array along the last axis of Y
⊣/Y	Fast: The first sub-array along the last axis of Y
+/N	Sum of N (row-wise)
Is+/N	Running sum of Is consecutive elements of N
-/N	Row-wise alternating sum: ((N[1]-N[2])+N[3])-N[4]+…
×/N	Product of N (row-wise)
×/Nv	Area of rectangle with sides Nv
×/Nv	Volume of box with sides Nv
∨/B	Are any true? (row-wise)
∧/Bv	Are all true?
⌈/N	Maximum of N
⌊/N	Minimum of N
÷/N	Alternating product of N
≠/B	Boolean Parity (Even)
1∘/Y	Ensure minimum rank 1 (reshaping scalar into one-element vector)
⊢⌿Y	Fast: The last sub-array along the first axis of Y
⊣⌿Y	Fast: The first sub-array along the first axis of Y
+⌿N	Sum of N (column-wise)
-⌿N	Column-wise alternating sum: ((N[1]-N[2])+N[3])-N[4]+…
×⌿N	Product of N (column-wise)
0∘⌿Y	Empty array along first axis
X f⍤⊢Y	Ignore left argument (call f monadically on Y)
X f⍤⊣Y	Ignore right argument (call f monadically on X)
1∘,Y	Preface a column of 1s
,¨Y	Ensure that all elements are vectors
X,¨Y	Join corresponding items
,/Yv	Fast: The enclose of the items of Yv (which must be of depth 2) catenated along their last axes
Is,/Yv	All possible subvectors of length Is (Yv must be simple)
1∘⍪Y	Preface a row of 1s
⍪/Yv	Fast: The enclose of the items of Yv (which must be of depth 2) catenated along their first axes
1 1∘⊂Y	First element (as vector) and remaining elements
1∘⌷Y	Head: First major cell of Y
⍳⍨Nv	Assign ranking based on non-descending scores Nv (ties all get highest ranking of used slots)
0∘∊B	Not all true?
1∘∊B	Any true?
⍸⍨Nv	Assign ranking based on non-descending scores Nv (ties all get lowest ranking of used slots)
X f⍣≡Y	Limit: apply X∘f until stable
f⍣≡Y	Limit: apply f until stable
+\N	Cumulative sum
∨\B	Turn on all 1s after first 1 (indicate all elements except leading 0s)
∧\B	Turn off all 1s after first 0 (indicate all elements until the first 0)
⌈\N	Progressive maxima (row-wise)
⌊\N	Progressive minima (row-wise)
<\B	Turn off all 1s after first 1 (indicate only the first 1)
≤\B	Turn on all 0s after first 0 (indicate all elements except the first 0)
≠\B	Convert reflected Gray code to binary
≠\B	Parity: Connect odd and even ones
⌈⍀N	Progressive maxima (column-wise)
⌊⍀N	Progressive minima (column-wise)
1 1∘⍉Ym	Main diagonal of matrix
⊥⍨Bv	Count of trailing ones
0∘⊥N	Last major cell of numeric array
100∘⊥Jv	Joining  date YYYY M D to packed YYYYMMDD integer
2∘⊥Bv	Integer representation of logical vector Bv
0 1∘⊤N	Integral and fractional part of positive number
0 100 100∘⊤Js	Separating packed YYYYMMDD date integer date
20 ¯1∘⎕DT J	Convert UNIX times to ⎕TS-style timestamps
C f⍥⎕C D	Caseless operation
{0}Y	Fast: 0 irrespective of Y
+∘-N	Negate real part (“real conjugate”)
-∘+N	Mirror complex N across y-axis
⌽∘⊖Ym	Rotate 180°
M×∘÷N	Division: force DOMAIN ERROR for division by 0
f⍨∘g⍨Y	Reverse hook: apply f between (g Y) and Y, that is (g Y) f Y
Iv⊢⍤/Y	Replicate along last axis of Y (forces / to be a function even with a function on its left)
Av⊢⍤/Y	Filtering columns of Y according to mask Av (forces / to be a function even with a function on its left)
Iv⊢⍤⌿Y	Replicate along leading axis of Y (forces ⌿ to be a function even with a function on its left)
Av⊢⍤⌿Y	Filtering major cells of Y according to mask Av (forces ⌿ to be a function even with a function on its left)
Is/∘⍪Yv	Matrix with Is columns, each consisting of Yv
Iv⍴∘⊂Y	Array of shape Iv filled with copies of Y
⊂∘⊃Y	Corner element of a (non-empty) array Y[1;1;1…]
Ms×∘⍳Js	Arithmetic progression vector: Js steps of Ms
⍳∘≢Ym	All row indices of matrix Ym
,∘⍳Yv	All tuples of corresponding elements of ⍳¨Yv (for small Yv)
C⍳∘⊂Dv	Position of first occurrence of string Dv in list of strings C
Ms∊∘⍳Ns	Is Ms in range 1…Ns?
⍸@⊢B	Replace 1s in Boolean array B with their enumeration
X f⍣¯1⍣≡Y	Limit: apply inverse of X∘f until stable
f⍣¯1⍣≡Y	Limit: apply inverse of f until stable
⍋∘⍋Y	Permutation vector that sorts like Y
Iv⊢⍤\Y	Expand last axis of Y (forces \ to be a function even with a function on its left)
Iv⊢⍤⍀Y	Expand leading axis of Y (forces ⍀ to be a function even with a function on its left)
⊂[1]Ym	Enclose columns of a matrix
⊂[1]Ym	Convert table to inverted table (character data as vectors of vectors)
⍉∘+Nm	Conjugate Transpose
⌽∘⍉Ym	Rotate 90° clockwise
⍉∘⌽Ym	Rotate 90° counter-clockwise
⍉∘⍪Yv	Forming first row of a matrix for later expansion
⍉∘⍪Yv	Reshaping vector Yv into a one-row matrix
M+.×N	Dot/Vector/Cross/Matrix Product of M and N (¯1↑⍴M ↔ 1↑⍴N)
M-.×N	Alternating Matrix Product of M and N (¯1↑⍴M ↔ 1↑⍴N)
Am∨.∧Bm	Extending a transitive binary relation
Mv⌈.×Nv	Maximum of Nv with weights Mv
Mm⌊.+Nm	Extending a distance table to next leg
Mv⌊.×Nv	Minimum of Nv with weights Mv
Mv+.÷Nv	Sum of reciprocal series Mv÷Nv
Mv-.÷Nv	Sum of alternating reciprocal series Mv÷Nv
Xv+.=Yv	Counting pairwise matches (equal elements) in two vectors
X∧.=Yv	Comparing vector Yv with rows of array X
Xm∧.=Ys	Boolean rows of Xm all equal to scalar Ys
Nv×.*B	Products over subsets of Nv specified by B
Iv∘.+Jv	Addition Table for Iv down and Jv across
Iv∘.×Jv	Multiplication Table for Iv down and Jv across
M,.×N	Mid product of M and N
X∘.,Y	Cartesian product: all pairs of X and Y
Ms⊥∘⌽Nv	Ascendingly ordered Nv-coefficient polynomial at point Ms
⍎∘⍕Yv	Convert character or numeric data into numeric (unsafe)
name←~∘Y	Create a “without” function with a hashed principal argument (fast X⍳Y for subsequent values of X)
name←X∘⍳	Create an “index-in” function with a hashed principal argument (fast X⍳Y for subsequent values of Y)
name←∊∘Y	Create a “membership-in” function with a hashed principal argument (fast X⍳Y for subsequent values of X)
name←X∘∪	Create a “union-with” function with a hashed principal argument (fast X⍳Y for subsequent values of Y)
name←∩∘Y	Create an “intersection-with” function with a hashed principal argument (fast X⍳Y for subsequent values of X)
name←X∘⍋	Create a “grade-ascending-according-to” function with a hashed principal argument (fast X⍋Y for subsequent values of Y)
name←X∘⍒	Create a “grade decending according to” function with a hashed principal argument (fast X⍒Y for subsequent values of Y)
{0}¨Y	Fast: 0 corresponding to each item of Y
X(f⍤0)Y	Run f on scalars
Mv(f⍤0 1)Nm	Apply f between vector Mv and each column of Nm
Mv(f⍤1)Nm	Apply f between vector Mv and each row of Nm
Xs(@1)Y	Replacing first major cell of Y with Xs
X(f⍣¯1)Y	Inverse: find Z such that Y ≡ X f Z
(f⍣¯1)Y	Inverse: find Z such that Y ≡ f Z
Ms×∘×⍨Nv	Rotate figure Nv in direction of point Ms
×∘|⍨N	Square without changing sign
?⍨∘≢Y	Random Permutation vector for Y
Xm↑⍨∘≢Ym	Vertically lengthening matrix Xm to be compatible (for ,) with Ym
M*∘÷⍨N	M'th Root of N
A*∘~⍨N	Conditional change of elements of N to one according to A
X g⍨∘f⍨∘h Y	Split-Compose: apply g between (f X) and (h Y), that is (f X) g (h Y)
+∘÷/N	Continued fraction with terms N
A⊣@⊢⍨Yv	Using Boolean array A for expanding Yv (Yv's elements at 1s in A)
∨/∘,B	Are any true?
∧/∘,B	Are all true?
⊃∘⍴¨Y	Fast: The length of the first axis of each item in X
⊂⍤¯1∘↑Yv	Pad elements of vector of arrays Yv to equal shape
X⊃¨∘⊂Y	Selective picking from array
Iv⌷⍨∘⊂Jv	Generate consolidated left argument for successive transposes Iv⍉Jv⍉Y
C∊⍨∘⊂Dv	Is string Dv a member of list of strings C
I∊⍨∘⍳Js	Boolean vector of length Js with ones in locations I (inverse of ⍸Bv)
+∘÷\N	Continued fraction convergents with terms N
,[⍳2]Y	Merge the leading two axes of Y
⊢∘≢⌸Y	Count of occurrences of each unique major cell
+.×⍨Nv	Sum of squares of Nv
Av+.×⍨Nv	Summation over subsets of Nv specified by Av
Xs∨.≠⍨Y	Do rows of Y contain elements differing from Xs?
∘.⊢⍨Yv	Square matrix with Yv as rows
∘.⊣⍨Yv	Square matrix with Yv as columns
Xv,[0.5]Yv	Two-row matrix from two vectors (repeat scalars)
Mv⊥⍨∘⍪Nv	Evaluate polynomial with descending coefficients Mv for point(s) Nv
Cv⎕NPUT⍨∘⊂Dv	Write text (vector or vector of vectors) Dv to Unicode file Cv
⍉∘↑Xv Yv …	N-column matrix from N vectors
I(1+-)J	Inclusive integer difference
M(×-)N	Sign of difference (¯1:M is smaller, 0:M=N, 1:M is bigger)
M(1-×)N	Probabilistic NAND
M(0⌈⌊)N	Force numbers N to range 0≤N≤M
M(⌊÷)N	Floored division
I(1+|)J	Incrementing cyclic counter J with upper limit I
M(|-)N	Absolute distance between X and Y
(1||)N	Magnitude of fractional part of N
I(1=∨)J	Are I and J co-prime?
I(0=|)J	Does I divide J?
I(0≠|)J	Does I not divide J?
(0≤≡)Y	Does Y have Uniform Depth?
(0=≡)Y	Is Y a Simple Scalar?
(0>≡)Y	Does Y have Non-Uniform Depth?
Is(?⍴)Js	Choosing Is random elements of ⍳Js with replacement
(⍬≡⍴)Y	Is Y a Scalar?
(≢⍴)Y	Rank (number of dimensions) of Y
(1↓⍴)Y	Dimensions of major cells
(¯1↓⍴)Y	Lengths of leading axes
(¯11○+)N	Swap real and imaginary
M(○×)N	Area of cone with height M and radius N (excluding base)
(2×○)N	Circumference of circle with radius N
M(¯3○÷)N	Angle of right triangle with height M and width N
(¯1○÷)N	Arccosecant
(¯2○÷)N	Arcsecant
(¯3○÷)N	Arccotangent
(¯5○÷)N	Hyperbolic area cosecant
(¯6○÷)N	Hyperbolic area secant
(¯7○÷)N	Hyperbolic area cotangent
(¯1*~)B	Map 0/1 to ¯1/1
(-∘1)N	Decrement
(1∘-)N	Probabilistic inverse (NOT)
(÷∘100)N	Rate corresponding to percentage N
(÷∘2)N	Halve: N÷2
(1∘↑)Ym	First row as a row matrix (row vector)
(¯1∘↑)Ym	Last row as a row matrix (row vector)
(*∘3)N	Cube
(,∘1)Y	Append a column of 1s
Xv(,⍤0)Yv	Two-column matrix from two vectors (repeat scalars)
Xv(,⍤1)Ym	Prefix vector to each row of matrix
Xm(,⍤1)Yv	Postfix vector to each row of matrix
(,⍤0)Y	Increment rank by inserting a new dimension after the trailing one
(⍪∘1)Y	Append a row of 1s
Is(⊃⌽)Yv	Pick item of vector Yv at cyclic offset Is (like ⎕IO←0, default Is:¯1)
(⊃⌽)Yv	Pick last item of vector Yv
(1 ¯1×⊂)N	±N by juxtaposition
(¯1 1×⊂)N	∓N by juxtaposition
(10 12○⊂)N	Split complex array into two-element vector of magnitude array and angle array
(9 11○⊂)N	Split complex array into two-element vector of real array and imaginary array
(⊂⍤¯1)Y	Enclose each major cell for any rank Y
Is(1⌷⊖)Y	Select major cell of Y at cyclic offset Is (like ⎕IO←0, default Is:¯1)
(1⌷⊖)Y	Tail: Last major cell
Im(⌷⍤¯1 99)Y	Select: each major cell of Im selects a cell from Y
(¯1+⍳)Js	Integers from 0 to Js-1
(⍳≢)Y	Indices of Major Cells of Y
(⍳⍴)Y	All indices of array Y
(⍳∘1)N	Index of first 1 in N
X(⍳⍤1)Y	Indices of elements of X in corresponding rows of X (X[i;]⍳Y[i;])
Ms(⍳,)Ns	Catalogue of all pairs from ⍳Ms and ⍳Ns
(0∊≠)Y	Are any major cells identical?
(0∊⍴)Y	Is Y an Empty Array?
X(~∊)Y	Boolean items in X that are not in Y
(∊∘⍬)Y	Zeros, simple with same shape
X(∊⍤1)Y	Which elements of X belong to corresponding row of Y (≢X ↔ ≢Y)
X(1=⍸)Y	Is Y within the range [ 1⌷X , 2⌷X )
X(1≠⍸)Y	Is Y outside the range [ 1⌷X , 2⌷X )
(⊃⍸)B	Index of first satisfied condition in B
X(⍸∊)Y	Indices of all occurrences of elements of X in Y
(⊃⍋)Y	Index of Smallest
X(⍋⍳)Y	Grade up of Y according to key X
(⍋⍋)Y	Ascending cardinal numbers (ranking, all different)
(⊃⍒)Y	Index of Largest
X(⍒⍳)Y	Grade down of Y according to key X
(⍋⍒)Y	Descending cardinal numbers (ranking, all different)
(↓⍉)Ym	Matrix to vector of column vectors
(⍉↑)Yv	Convert inverted table to table (character data as vectors of vectors)
(⍉⍤2)Y	Transpose every submatrix of Y
X(⊃⍷)Y	If Y begins with X
X(⍸⍷)Y	Positions of starts of subarrays X in Y
(0J1⊥⊖)Nm	Parallel projection of 3D object in Nm
(0⊥⍴)Y	Number of columns in Y
M(⊥⍣¯1)N	N in Base M
(≢⍕)Js	Number of digit positions in Js (depends on ⎕PP)
Is(⍎⍕)N	Rounding N to Is decimal places
(⍎⍕)Nv	Reshaping only one-element numeric vector Nv into a scalar (leave longer vectors as-is)
(⍎⍕)Nv	Rounding to ⎕PP precision
(2|⎕DR)Y	Is Y numeric?
(⊃⎕NGET)Dv	Read Unicode text file Dv content as simple vector
(20⎕DT⊆)J	Convert ⎕TS-style timestamps to UNIX times
As↓⍨∘-⍨Y	Conditional drop of last element of Y
Is↑⍨∘-⍨Yv	Padding Yv on the left to width Is
X⍴⍨∘⍴⍨Y	Array with shape of X and content of Y
,∘⊆∘,Y	Normalise scalar/vector/vector of scalars/vectors to vector of vectors
Iv⌷⍨∘⊂⍨Y	Select major cells Iv from Y
Iv⌷⍨∘⊂⍨Y	Permute: Reorder major cells of Y according tot permutation vector Iv
X⍳⍨∘⊖⍨Y	Index of last occurrence of major cells Y in X, counted from the rear
⍳∘≢∘⍴Y	All axes of array Y
Iv∊∘⍳∘≢Y	Starting points for Y in indices pointed by Iv
+\⍣2∘⍳Js	First Js triangular pyramidal numbers
⌽∘⍉∘⌽Ym	Reflect counter-diagonally
Is⌿∘⍉∘⍪Yv	Matrix with Is rows, each consisting of Yv
Xs+.=∘,Y	Number of occurrences of scalar Xs in array Y
M(⊢-|)N	Largest whole multiple of M less than or equal to N (N rounded down to closest smaller multiple of M)
(×|⊢)N	Fractional part with sign
(⊢=+)N	Is N real?
(⌊=⊢)N	Is N integer?
(⊢≠+)N	Is N complex?
(⌽≡⊢)Dv	Is Dv a palindrome?
I(⌊1+⍟)J	Length to represent J in base I
(¯2○1○⊢)N	Complementary Angle
(1⍴⍨≢)Ym	Vector having as many ones as Ym has rows
(*×⍨)N	Limit of nominal rate N when continuously compounded
(180÷⍨○)N	N Degrees in Radians
(!-∘1)N	Gamma function of N
(÷1∘○)N	Cosecant
(÷2∘○)N	Secant
(÷3∘○)N	Cotangent
(÷5∘○)N	Hyperbolic cosecant
(÷6∘○)N	Hyperbolic secant
(÷7∘○)N	Hyperbolic cotangent
(○*∘2)N	Area of circle with radius N
(~2∘|)J	J is Even
{X} f∘g⍨⍨Y	J Hook: Y f g Y when monadic and X f g Y when dyadic
~∘' '¨D	Remove blanks in each string
(¯2-/⊢)N	Deltas: (N[2]-N[1])(N[3]-N[2])(N[4]-N[3])…
(¯2÷/⊢)N	Ratio of each number in a list to its predecessor: (N[2]÷N[1])(N[3]÷N[2])(N[4]÷N[3])…
(⌈/|)N	Largest row-wise magnitude found in N
(⌊/|)N	Smallest row-wise magnitude found in N
(0=/⊢)Yv	Ones, same shape plus one
(0≠/⊢)Yv	Zeros, same shape plus one
Xv(+/≠)Yv	Hamming distance
(×/⍴)Y	Count the number of elements in an array
(=/⍴)Ym	Is Ym a square matrix?
(+⌿|)N	Sum of magnitude of N
(⌈⌿|)N	Largest column-wise magnitude found in N
(⌈⌿|)N	Infinity-norm
(⌊⌿|)N	Smallest column-wise magnitude found in N
(1∘↑⍤1)Ym	First column as a column matrix (column vector)
(¯1∘↑⍤1)Ym	Last column as a column matrix (column vector)
Xs@(Ys∘=)Y	Replacing all values Ys in Y with Xs
Ms(+,-)Ns	Ms±Ns
Ms(-,+)Ns	Ms∓Ns
(+/,)N	Sum all elements in an array
(+/,)B	Number of trues
Xs(,,⍤0)Yv	Inserting Xs before each element of Yv
Xv(,,⍤0)Yv	Merging equal-length vectors Xv and Yv alternately
Xv(,,⍤1 0)Yv	Inserting Xv before every element of Yv
(⊃0∘⍴)Y	Fill element (converts characters to spaces, numbers to zeros)
(⊃,/)Yv	Join array of arrays horizontally
(⊃⍪⌿)Y	Join array of arrays vertically
(,⊂⍤¯1)Y	Vector of major cells for any rank Y
(⊃0⍴⊂)Y	Type: 'a' 1 ⎕NULL → ' ' 0 ⎕NULL (∊ with ⎕ML←0)
Xs(≠⊆⊢)Yv	Split Yv at occurrences of Xs (removes separators and empty segments)
(⊂≡⊆)Y	Is Y a Simple Array?
(⊂≢⊆)Y	Is Y a Nested Array?
(¯1+2×⍳)Js	Odd integers from 1 to 2×Js
(⍳¯1↑⍴)Y	Indices of trailing axis of Y
X(⌈/⍳)Y	Index of last occurrence in X of any major cell of Y
X(⌊/⍳)Y	Index of first occurrence in X of any major cell of Y
(⍳∘1⍤1)B	Convert permutation matrices in B to permutation vectors
(0,2×⍳)Js	Even integers from 0 to 2×Js
(~0∘∊)B	All
(~1∘∊)B	Not Any
(+/∊)N	Sum of all atoms in N
Xv(∨/∊)Yv	Do Xv and Yv have any elements in common?
Xv(∧/∊)Yv	Is Xv a Subset of Yv?
X@(∊∘Y)Z	Replace all occurrences of elements from Y in array Z with X
X(1⍳⍨∊)Y	Index of first occurrence in X of any item of Y
(⊢≡∪)Y	Are all major cells distinct?
(∪⍳⊢)Y	Consecutive ids (indices with equal major cells mapping to same index)
Is(⊢∩∧)Jv	Elements of Jv divisible by Is
Xv(~,∩)Yv	Move elements Yv (which are members of Xv) to the rear of Xv
Xv(∩,~)Yv	Move elements Yv (which are members of Xv) to the front of Xv
Xv(∪~∩)Yv	Symmetric Set Difference
(⊢/⍋)Y	Index of last maximum element of Y
(⊢/⍒)Y	Index of last minimum element of Y
X(∧\=)Y	Indicate leading elements that are equal
X(∧\≠)Y	Indicate leading elements that are unequal
(+\⍳)Js	First Js triangular numbers
(-\⍳)Js	Alternating series (1,-1,2,-2, …) of length Js
(+\⍣¯1)N	Difference of adjacent pairs with seed value
(≠\⍣¯1)B	Convert binary to reflected Gray code
(⍉≡⊢)Ym	Is Ym symmetric?
(⍉≡+)Nm	Is Nm a Hermitian matrix?
(-≡⍉)Ym	Is Ym anti-symmetric?
(⍉0/⍪)Yv	Using sample row Yv to form an initially empty matrix for later expansion
Xv(⊣/⍷)Ym	Boolean rows of Ym starting with X
Cv(1⍳⍨⍷)Dv	First occurrence of string Cv in string Dv
(*∘0.5)N	Square Root
(÷1⊥÷)Nv	Ohm's Law: resistance of parallel resistors/capacitance of serial capacitors
(⊥⍨⌽)Bv	Count of leading ones
(⊥⍨~)Bv	Count of trailing zeros
(⍳0⊥⍴)Ym	All column indices of array Ym
(10∘⊥⍣¯1)N	Digits of N
(2∘⊥⍣¯1)J	Binary representation of J
(⍉≡⌹)Nm	Is Nm an Orthogonal matrix?
(⍕≡⊢)Y	Is Y a simple character array?
(1↓0∘⍕)Js	Show all digits of integer Js (unknown digits as “_”)
(1 0⍕10 10⊤⍳)Js	Vertically stack digits of ⍳Is (helps locating column positions)
(2|⎕DR⍤1)Y	Which rows of Y are all numeric?
(7|1⎕DT⊆)J	Day of week (Sunday:0)
(∊1⎕NPARTS⊢)Dv	Absolute path name
{≢⍵}⌸Y	Frequencies of major cells
+∘÷/∘⍳Js	Continued fraction: 1+÷2+÷3+÷4+÷5+÷6+÷…Js
Is,/∘⍳∘≢Y	Moving width-Is window of indices for array Y
∘.+⍨∘⍳Js	Addition Table for Numbers up to Js
∘.×⍨∘⍳Js	Multiplication Table for Numbers up to Js
∘.⌈⍨∘⍳Js	Maximum table of 1…Js
∘.<⍨∘⍳Js	Upper triangular matrix without diagonal: Js by Js
∘.≤⍨∘⍳Js	Upper triangular matrix with diagonal: Js by Js
∘.≥⍨∘⍳Js	Lower triangular matrix with diagonal: Js by Js
∘.>⍨∘⍳Js	Lower triangular matrix without diagonal: Js by Js
M(⊢×1-⊣)N	Probabilistic converse nonimplication
M(⊣×1-⊢)N	Probabilistic nonimplication
A(⊢×¯1*⊣)N	Conditional elementwise change of sign
M(⊣+¯11○⊢)N	Join real part M and imaginary part N to form complex
M(⊣×¯12○⊢)N	Join magnitude M and radians N to form complex
(¯128+256|128∘+)J	Convert from unsigned short integers to signed short integers
(1=≢∘⍴)Y	Is Y a vector?
(⌊1+10∘⍟)J	Number of digits in strictly positive integers in J
(180÷○∘÷)N	N Radians in Degrees
(○4×*∘2)N	Area of sphere with radius N
(*∘÷∘3)N	Cube Root
M×⍥(1∘-)N	Probabilistic NOR
(×/1↓⍴)Y	Number of elements in major cells
(×/¯1↓⍴)Y	Number of rows in array Y (also of vector)
(3÷⍨×/)Nv	Volume of pyramid with height, width, length Nv
(⊢-⌊⌿)N	Normalise N so that minimum item is 0
(⊢÷+⌿)N	Normalise N so that sum is 1
Is(+⌿÷⊣)N	Is-wise rolling average
(⊢=⌈⌿)N	Locate all instances of maximum of N
(+⌿÷≢)N	Arithmetic mean of N
(1↑⍨⍤0-)I	Convert permutation vectors in I to permutation matrices
X f@(1⍴⍨⍴)Y	Handling array Y temporarily as a vector (optionally with left argument X)
Xs@(1⍴⍨⍴)Y	Fill array Y with Xs
(⍴⍨0∘,)Js	Initialise a matrix with Js columns and no rows
(⌈/,∘0)N	Positive maximum, at least zero (also for empty N)
(2</0∘,)B	First ones in each group of ones
(2>/,∘0)B	Last ones in each group of ones
Xs(1↓∘,,)Ym	Matrix to vector using Xs as delimiter
Xv(,,⍤0 1⍨)Yv	Inserting Xv after every element of Yv
(2>/⍪∘0)B	Last ones in groups of ones
(1⍪2≢⌿⊢)Y	Indicate starting points of groups of equal elements (non-empty Yv)
(1⍪2≢⌿⊢)Y	Indicate which elements differ from previous ones (non-empty Yv)
(⊃⌽∘⍴)Y	Number of items in trailing axis
(⊃⌽∘,)Y	The last item of Y
Iv(↑⍴∘⊂)Y	Iv copies of Y
(↑,∘⊂)Y	Increment rank by inserting a new dimension before the leading one
(⍳∘≢⍴)Y	Indices of dimensions of Y
(,∘⍳⍴)Y	All indices Of Y
Xv(∧/∊⍨)Yv	Is Xv a Superset of Yv?
Xv(∊⍨×⍳)Yv	Changing index of an unfound element to zero (slow)
I(~∊∘⍳)Js	Boolean vector of length Js with zeros in locations I
X(⊃∘⍸≠)Y	Index of first differing element in X and Y
Xv(⍸-∊⍨)Yv	Indices of items of Yv in right-inclusive intervals with cut-offs Xv
X(⊃∘⍸∊)Y	Index in X of the first element which is a member of Y
(1<≢∘∪)Y	Are any major cells distinct?
(1=≢∘∪)Y	Are all major cells of Y identical?
(1≥≢∘∪)Y	Are all major cells identical?
(∪⊢∨⍳)Js	All divisors of Js
M(⌊∘-⍣2)N	Force numbers N to range (-M)≤N≤M
(,¨,\)Yv	Prefixes of a vector
(≠⍀∨⊢)B	Parity with connectors: Joining pairs of odd and even ones (fill gaps with ones)
(~∧≠⍀)B	Places between pairs of ones
(⍉⍪∘⍉)Y	Join (⍪) planes of rank 3 array Y to form a single matrix
X(≡∨1∊⍷)Y	Is X a Subarray of Y?
X(⊃∘⍸⍷)Y	Position of first subarray X in Y
(⌊0.5+⊢)N	Rounding to nearest integer (favouring up)
(1 ¯1∘.×⊢)N	±N increasing rank
(¯1 1∘.×⊢)N	∓N increasing rank
(32+1.8∘×)N	Celsius to Fahrenheit
(10 12∘.○⊢)N	From complex to magnitude and radians (increase rank with leading length-two axis)
(9 11∘.○⊢)N	From complex to real and imaginary (increase rank with leading length-two axis)
Mm(1 2 1 2⍉∘.+)Nm	Sum of common parts of matrices (matrix sum)
Mm(1 2 1 2⍉1∘.+)Nm	Shur sum
Mm(1 2 1 2⍉1∘.×)Nm	Shur product
Mm(1 3 2 4⍉∘.×)Nm	Direct matrix product
(≢÷1⊥÷)N	Harmonic mean
(⊥⍨0=⌽)Bv	Count of leading zeros
Mv(1⊥∘|-)Nv	Manhattan distance between two points in N-space
Is(+⌿⊥⍣¯1)J	Base-Is digit sum
(¯1⊥¨⍪⍀)N	An array that begins with 1↑N and has pair-wise sums 1↓N
(1∘⎕C≠⊢)D	Are characters of D lowercase?
(¯1∘⎕C≠⊢)D	Are characters of D uppercase?
(7|1⎕DT,¨)J	Day of week (Sunday:0) of first of January J
I-⍥(1⎕DT⊆)J	Number of days between ⎕TS-style timestamps I and J
(0 2∊⍨10|⎕DR)Y	Is Y character?
(⎕A⍳1∘⎕C)D	Convert letters to their positions in the alphabet
Xv{+/⍵}⌸Nv	Sum Nv by buckets Xv (⍴Nv ↔ ⍴Xv)
(~∘' ')Dv	Remove blanks in string
Xv{⍉↑⍺⍵}Yv	Two-column matrix from two vectors (pad shorter vector)
Xv∘.{⍺⍵}Yv	Catalogue of all pairs from Xv and Yv
A(1-⊢×1-⊣)B	Probabilistic converse implication
A(1-⊣×1-⊢)B	Probabilistic implication
(1≡≡∧⍬≡⍴)Y	Is Y an object representation (⎕OR)?
M(12○⊣+0J1×⊢)N	2-argument arctangent (M:x, N:y)
Is(⊣↑1⍴⍨⊢)Js	Prefix Vector: length Is with Js ones on the left, the rest zeroes
Is(×⍴1↑⍨⊢)Js	Starting points for Is fields of width Js
(××∘⌊|)N	Rounding towards zero
I(!×∘!⊣)J	Number of ordered of combinations of I out of J
M(≤∘|×⊢)N	Rounding to zero values of N within M of zero
Is(⊢∘≢↑↓)Y	Shifting Y left/up Is positions (padding on right/bottom)
Is(×∘⍴⍴⊢)Yv	Duplicating vector Yv Is times
(○4÷3÷*∘3)N	Volume of sphere with radius N
(1=∘?⍴∘2)Jv	Random Boolean array of shape Jv
(2∘*+¯1∘*)Js	Jacobsthal-Lucas number
(1∘○+2∘○)N	Hartley kernel
(1=×/∘⍴)Y	Is Y a Singleton?
(⊣+¯11○⊢)⌿N	Join real and imaginary major cells by removing leading axis
(⊣×¯12○⊢)⌿N	Join magnitude and radians major cells by removing leading axis
(∧/2=⌿⊢)Ym	Comparison of successive rows
Xs(⊖⊣@1∘⊖)Y	Replacing last major cell of Y with Xs
Is(⊢↓⍨0,⊣)Ym	Drop Is columns from matrix Ym
Is(,∘≢⍴⊢)Yv	Forming an Is-row matrix with all rows being Yv
(⍴⍴0,1⍨¨)Nm	Non-diagonal matrix of shape of matrix Nm
(1,⍨2≠/⊢)Yv	Ending points of groups of equal elements (non-empty Yv)
(1,⍨2≠/⊢)Yv	Which elements differ from next ones (non-empty Yv)
(~∨/∘,)B	Are none true?
Xs(1↓∘,,⍤0)Yv	Join elements of vector Yv with separator Xs
X(⊢∘≢↑⍪)Y	Shift before: Inserting X at front/left/top of Y, pushing corresponding cells off the back/right/bottom edge
Bs(⊢⊃⍨1+⊣)Yv	Picking one of two values according to Bs
(?∘≢⊃⊢)Yv	Pick  random item from vector
Is(↑,⍥⊂↓)Y	Y's Head of Length Is and its Tail
(↑,∘⊂⍤1)Y	Increment rank by inserting a new dimension before the trailing one
(⊃0⍴⊂∘⊃)Y	Prototype (converts characters to spaces, numbers to zeros)
(?∘⍴⌷⊢)Y	Index random item from array
I(⊣+1⍳⍨↓)B	Index of first one after index Is in Bv
(⊢!⍨0,⍳)Js	Coefficients of the binomial
(⍳∘≢,⊢)Ym	Attach row numbers to a matrix
Iv(⍸⍤⊣⊆⊢)Y	Cut Yv into non-empty partitions of length Iv (+/Iv ↔ ⍴Y)
X(6=⍳+3×⍸)Y	Is Y within the range ( 1⌷X , 2⌷X )
(⍸1=⊢∨⍳)Js	Totatives of Js
X(6≠⍳+3×⍸)Y	Is Y outside the range ( 1⌷X , 2⌷X )
(∪⊢∨¯1↓⍳)Js	Proper divisors of Js
(⍳⍨∪⍳⊢)Y	Index of first instance of each major cell
Is(⊃∘⍋⌷⊢)Y	Is-smallest (default: the smallest) major cell of Y
(⊂∘⍋⌷⊢)Y	Sort Ascending
(⍳∘≢≡⍋)N	Is N Non-decreasing?
(⊢≡∘⍋⍋)Yv	Is Yv permutation vector?
Is(⊃∘⍒⌷⊢)Y	Is-largest (default: the largest) major cell of Y
(⊂∘⍒⌷⊢)Y	Sort Descending
(⍳∘≢≡⍒)N	Is N Non-increasing?
X(∧\∘⌽=)Y	Indicate trailing elements that are equal
X(∧\∘⌽≠)Y	Indicate trailing elements that are unequal
(+\¯1↓1∘,)Jv	Starting positions of subvectors having lengths Jv
(↑¨⊂[1])Ym	Convert table to inverted table (character data as matrices)
(⊢⍉⍨1*⍴)Y	Main diagonal of any rank array
(⌽⍉⍨1*⍴)Y	Anti-diagonal of any rank array
X(⍸⍷⍨∘⊂)Y	Positions of item Y in X
Mv(×÷+.×)Nv	Bayes' formula
(1.8÷⍨¯32∘+)N	Fahrenheit to Celsius
Ms(⊢⊥⍨1+⊣)N	Future value of cash flows N at interest Ms
(1+⍴⊥¯1∘+)Jm	Conversion of indices Jm of array to indices of ravelled array
2∘(+⌿⊥⍣¯1)J	Hamming weight
(|¯11|1⊥+\)Jv	ISBN check digit generator from ten first digits Jv
(2⊥1⊖2⊥⍣¯1⊢)Js	Survivor number in the Josephus problem of order Js
Iv(⊢⊤⍨10*⊣)J	Decoding numeric codes J packed with field widths Iv (ZYYYZZZ:1 3 2)
(⌹≡⍉∘+)Nm	Is Nm a Unitary matrix?
(11=∘⎕DR 2∘⌿)Y	Is Y Boolean?
(10⊥¯1+⎕D∘⍳)Dv	Safe conversion of string into integer
(⊃∘⊃⎕NINFO⍠1)Dv	Get actual lettercase for filename Dv (on insensitive OSs)
(¯1∘⎕C=1∘⎕C)D	Do characters in D have no case?
{0<⎕NC⊆,⍵}Dv	Is Dv defined?
{0=⎕NC⊆,⍵}Dv	Is Dv undefined?
{¯1≠⎕NC⊆,⍵}Dv	Is Dv a valid APL identifier?
(⍳∘' '⍤1)D	Indices of first blanks in rows of array D
({⍞}¨⍳)Jv	Input of ×/Jv strings
X⌷⍨∘⊂∘⍋∘⍋Y	Reorder X according to the order of Y
(⌊⊢+1≤2|⊢)N	Rounding to nearest even integer (favouring up)
M(⊢+⊣×0=⊢)N	Replacing zeroes in N with corresponding elements of M
Is(⊢+⊣×0=⊢)J	Change all 0s in J into Is
(⊢⍴⍨1⌈¯2↑⍴)Yv	Reshaping non-empty lower-rank array Yv into a matrix
M(○××3÷⍨⊢)N	Volume of cone with height M and radius N
I(⊣*⍨1+÷⍨)N	Effective rate of interest with nominal rate N for I periods
As○⍨∘(¯10+~)⍨N	Mirror complex N across x-axis if As
M(×∘×⍨∘|)N	Resign: Transfer of sign from M to N
(⊢÷⌈⌿∘|)N	Normalisation by Infinity-norm
(×⌿*∘÷≢)N	Geometric mean
(100×⊢÷⍤1 0+/)N	Row-wise percentage per row
(100×⊢÷⍤1+⌿)N	Column-wise percentage per column
X f@(1↑⍨∘-≢)Y	Apply function f (optionally with left argument X) to last cell of Y
(2 2⍴2 1 1 2-@2⍤○⊢)Ns	Rotation matrix for angle Ns (in radians) counter-clockwise
(⊢⍴⍨¯2↑1 1,⍴)Ym	Increase rank scalar/vector/matrix Ym to 2 (matrix: 1-row if vector, 1-column if scalar)
(2∘⍴⍴1,⍴∘0)Jv	Diagonal matrix of size Jv (n or m,n)
(,⍨⍴0,⍴∘1)Js	Non-diagonal matrix of order Js
Is(⊃>⍥|⌽,)Js	Choose the number closer to zero (the left one if tied)
(↑∘,∘⊂⍤¯1)Y	Increment rank by inserting a new dimension after the leading one
Iv(⌷⍨∘⊃⍨⍤0 99)Y	Select: each element of Iv selects a cell from Y
X(⊢∘≢≥⍳⍨)Y	Membership (∊) on major cells for any rank
(+/1=⊢∨⍳)Js	Euler's totient function (fastest up to about 1000)
(⍳∘≢↑¨⊂)Y	Prefixes
(⍳⍨=⍳∘≢)Y	Indicator of first occurrence of each unique major cell of Y
M(⊢×∘~∊⍨)N	Zeroing elements of N that are found in M
Xv(~⍤∊⍨⊆⊢)Yv	Split Yv at occurrences of sequences of elements in Xv (removes separators and empty segments)
Xv(∧/∊⍨,∊)Yv	Identity of two sets
(¯2-/∘⍸,∘1)Iv	Segment lengths from beginning indices
(¯2-/∘⍸,∘1)Bv	Changing starting indicators Bv of subvectors to lengths
(¯2-/∘⍸1∘,)Iv	Segment lengths from ending indices
(2÷⍨⍳+⍸)⍨Nv	Assign ranking based on non-descending scores Nv (ties all get average ranking of used slots)
X(⊃∘⍸∘~∊)Y	Position of first item in X not in Y
X(1=4 9⍸⍳+3×⍸)Y	Is Y within the range [ 1⌷X , 2⌷X ]
X(1=6 9⍸⍳+3×⍸)Y	Is Y within the range ( 1⌷X , 2⌷X ]
X(1≠4 9⍸⍳+3×⍸)Y	Is Y outside the range [ 1⌷X , 2⌷X ]
X(1≠6 9⍸⍳+3×⍸)Y	Is Y outside the range ( 1⌷X , 2⌷X ]
(1=≢∘∪∘,)Y	Are all elements of simple Y equal?
(≢∘∪⊢∨⍳)Js	Number-of-divisors of Js
Is(⍋×∘⍋∘⍋)Y	Choosing grading direction (¯1,0,1) dynamically during execution
Iv(+\⍤⊢∊⊣)Bv	Mask to get subvectors with indices Iv as indicated by Bv
(+\+\∘⍳)Js	First Js figurate numbers
(∧⌿⊢=⌈⍀)N	Are columns of N in ascending order?
(∧⌿⊢=⌊⍀)N	Are columns of N in descending order?
(+⍀1⍪2≢⌿⊢)Y	Increment on change: Array of same shape as Y beginning with 1 and increasing for each change in adjacent values
Bs(⊢⍉⍨1 2⌽⍨⊣)Ym	Transpose matrix Ym on condition Bs
Xs(,∘⌽∘⍉⍣4)Ym	Surround matrix Ym with scalar Xs
X(1⍳⍨⊃⍤¯1⍤⍷)Y	Index of first consecutive occurrence of major cells of X in Y
(Bv∊⍨⊢∘⊂⌺3 3)Bm	Conway's Game of Life: next generation given Bv of 140 surviving 3-by-3 subarrays
(∘.!⍨0,⍳)Js	Binomial coefficients until Js
Xv(∊∧.∧∊⍨)Yv	Set Identity (are the sets identical?)
Xv(∊∧.∧∊⍨)Yv	Is Xv permutation of Yv?
(+/÷1⌈0⊥⍴)N	Row averages (0 if none)
Is(+⌿⊥⍣¯1)⍣≡J	Base-Is digital root
Mv(+.×÷1⊥⊣)Nm	Weighted average of columns of Nm with weights Mv
Mv(⊢⌹1,∘⍪⊣)Nv	Coefficients of least squares linear fit given X values Mv and Y values Nv
(⊃∘⎕NGET 1,⍨⊂)Dv	Read Unicode text file Dv content as nested vector
(∧/127≥⎕UCS∘∊)D	Is D entirely ASCII-only
{⍵.##}⍣≡Y	Reference to root ancestor namespaces of objects Y
(¯97(|-⊣)⊢)Is	SWIFT check digit from Is bank number
(∧/' '∘=)D	Mask for blank rows
(∧⌿' '∘=)D	Mask for blank columns
((,÷∨)∘1)Ns	Convert fraction to (numerator,denominator)
(∨\' '∘≠)D	Locate leading blanks
Is{¯2-/[⍺]⍵}N	Differences of successive elements of N along direction Is
Is{,[⍳⍺]⍵}Y	Merge the leading Is axes of Y
(∨/'  '∘⍷)D	Does D have any duplicated spaces? (per row)
(+.≠∘' ')D	Word lengths of words in list D
(⊥⍨' '=⌽)Dv	Number of leading blanks
(⊥⍨' '∘=)Dv	Number of trailing blanks
((⊃2⊃⎕VFI)⍤1)D	Conversion of each row to a number (default zero)
((⎕EM⍳32767)⍳⊆)D	Error/interrupt number(s) for message(s) D
X⊃∘⍸∘⍷¨∘⊂⍨Y	Indices (⍳) in X of items of Y
Ms(+÷××⊣!+)Ns	Beta function
Ms(⊢+¯11○⊣×9○⊢)N	Skew N in y-axis by fraction Ms
(⌊1+10⍟|+0∘=)J	Number of digits in integers in J
Is(×⍴1↑⍨∘-⊢)Js	Ending points for Is fields of width Js
M(⊣+|⍨∘-⍨)N	Residue after dividing N by M but replacing 0 with M
M(⊢∘××+∘|)N	Increasing absolute value without change of sign
(3÷⍨2∘*-¯1∘*)Js	Jacobsthal number
(+/∘|2-/⊢)Nv	Length of path given as complex points
Is(-⍤⊣↑1⍴⍨⊢)Js	Suffix Vector: length Is with Js ones on the right, the rest zeroes
(,⍨⍴1↑⍨1∘+)Js	Identity matrix of order Js
(⌈/-⌊/)∘,N	Range (difference between largest and smallest element) in N
Ms(⊢⊃⍨2+∘×⊣)Yv	Picking one of three values according to sign of Ms
(⊢⌽⍨¯1+⍳∘≢)Ym	Align the diagonals of a matrix into columns (with wrap-around)
X(⍳|⍨1+∘≢⊣)Y	First indices in X of major cells Y, 0 if not found
(⌽⌽,0,-)∘⍳Js	Integers from -Js to Js
(⍳∘≢,/¨⊂)Yv	All possible subvectors grouped by length (Yv must be simple)
(⊢∊⍨∘⍳⌈/)Jv	Conversion of set of indices Jv to a mask
X(⍸-⍳≤∘≢⊣)Y	Indices of major cells of Y in right-inclusive intervals with cut-offs X
(+/∘∪⊢∨⍳)Js	Sum of positive divisors of Js
(⊃∘⍋∘|⊃⊢)Nv	First number with smallest magnitude
X(⌷⍨∘⊂∘⍋⍨)Y	Sorting Y according to X
(⍳∘≢≡⌽∘⍋)N	Is N Strictly Decreasing?
(⊃∘⍒∘|⊃⊢)Nv	First number with largest magnitude
(⍳∘≢≡⌽∘⍒)N	Is N Strictly Increasing?
(⍉∘↑⊂⍤¯1¨)Yv-	Convert inverted table to table (character data as matrices; keep trailing spaces)
X(⊃∘⍸⍷⍨∘⊂)Y	Position of first item Y in X
(2×⊢+.×1∘⌽)Nv	Area of box with sides Nv
(××∘⌈¯0.5+|)N	Rounding to nearest whole number (favouring towards 0)
(××∘⌊0.5+|)N	Rounding to nearest whole number (favouring away from 0)
(=∘⌊⍨*∘0.5)N	Indicate which numbers in N are perfect squares.
(⌊/∘.=⌈⌿)Nm	Boolean matrix indicating saddle points
(2=0+.=⍳|⊢)Ns	Is Ns a prime?
(÷⍳∘.+¯1+⍳)Js	Hilbert matrix of order Js
(1 2 1⍉⊢∘.-⌊/)Nm	Move set of points Nm into first quadrant
(0≠.=400 100 4∘.|⊢)J	Is J (YYYY) a leap year?
(1⊥∘|-)⍤1⍤1 99⍨Nm	Manhattan distance table for points in N-space (one point per row)
Mv(+.×⍨÷1⊥⊣)Nm	Weighted average of rows of Nm with weights Mv
Iv(,⌿1+⊢⊤¯1+⊣)Jv	Indices of Iv'th elements in ravel order of an array of dimensions Jv
Iv Jv⍕⍨∘(∊,⍤0/)N	Formatting N with Jv decimals in fields of width Iv
(+/2 1∘⊃∘⎕VFI⍤1)Dm	Sum of numbers in character matrix Dm
(⊢⎕NS⎕EX⊢⎕NS∘⍎)Dv	Make unnamed namespace Dv into named namespace
M(1-×⍥(1∘-))N	Probabilistic OR
(⍋(≢,⊂)¨)Yv	Ascending shortlex grade
(⍒(≢,⊂)¨)Yv	Descending shortlex grade
(,[0.5]∘'¯')Dv	Underlines a string (1=⎕IO)
Iv{1+⍺∘⊥¨⍵-1}Jv	Ravel order indices of elements at indices Jv in an array of dimensions Jv
(↑⍴¨∘'⎕')J	Bar chart
Cv(⊣,(⎕UCS 10),⊢)Dv	Join lines with line feed (LF)
(⊢2⎕NQ#'GetBuildID',⊂)Dv	Checksum of file Dv
(⊢2⎕NQ#'GetEnvironment',⊂)D	Get the value of one or more environment variable/command line parameters
M(¯1+⊣*∘÷⍨1+⊢)N	Annual rate to modal rate
Is(×∘×⍨∘≢↑↓)Y	Shifting Y Is positions forward/left/up (if Is is positive, padding on right/bottom) or backward/right/down (if Is is negative, padding on left/top)
(+/∘|⊢-1∘⌽)Nv	Circumference of polygon given as complex points
(⌽⍤⍴⍴1↑⍨1+≢)Nm	Identity matrix of shape of matrix Nm
(⊢⍴⍨2,⍨2÷⍨≢)Yv	Reshaping vector Yv into a two-column matrix
Is(⊢↑⍨⊢∘≢,⊣)Ym	Adjust Ym to width Is (positive Is to pad/chop on right, negative Is to pad/chop on left)
X(⊢∘-∘≢↑⍪⍨)Y	Shift after: Appending X at back/right/bottom of Y, pushing corresponding cells off the front/left/top edge
(1/⍨∘,1,∘⍪-)Nv	Boolean gaps of lengths Nv after each one
Xs(1↓¨,⊂⍨⊣=,)Yv	Split Yv at occurrences of Xs (removes separators and keeps empty segments)
(⊂⍤?⍨∘≢⌷⊢)Y	Shuffle major cells
(+/∘∪⊢∨¯1↓⍳)Js	Aliquot sum (sum of proper divisors)
(+/⍒∘|⊃¨⊂)Nv	More accurately sum a vector of floating point numbers
(⌽∘,¨,\∘⌽)Yv	Suffixes of a vector
(+\∊⍨∘⍳+/)Jv	Changing lengths Jv of subvectors to ending indicators
Xm(⍉⍴⍨∘⌽∘⍴⍨)Yv	Matrix with shape of Xm and Yv as its columns
(0~⍨∘,∘⍉⊢⌸)Y	Progressive index of (⍳) cyclic uniques (∪) without replacement
(2*∘÷⍨+.×⍨)Nv	Length of vector Nv
(+/÷1⌈+.≠∘0)N	Row averages of non-zero elements (0 if none)
M(+/∘×∘.-⍨)N	Test relations (¯2…2) of elements of N to ranges M (2=¯1↑⍴M)
(⊢∘.<∘⍳⌈/)Iv	Matrix with Iv[i] leading zeroes on row i
(⊢∘.≥∘⍳⌈/)Iv	Matrix with Iv[i] leading ones on row i
X(⌊¯3+0.6×⍳+3×⍸)Y	Test relations (¯2…2) of major cells Y to range 1⌷X,2⌷X
(∨.∧⍨∨⊢)⍣≡Bm	Transitive closure
(28+0≠.=400 100 4∘.|⊢)J	Number of days in February of year J (YYYY)
Ms(⊢∘⊂+¯0.5 0.5×⊣)N	Stereo pair (Eye separation Ms)
Mv(2*∘÷⍨1⊥2*⍨-)Nv	Euclidean distance between two points in N-space
(¯1*1⊥∘∊⊢<,\)Jv	Levi-Civita symbol
(10⊥∘,∘⍉10∘⊥⍣¯1)Jv	Encode a vector of positive integers as equal-width fields of digits in an integer
(⊢⎕NS⎕NS∘⍬⊢⎕EX⊢⍎)Dv	Make scripted namespace Dv into unscripted namespace
M((××∘⌊|)÷)N	Truncated division
(⊢↑⍨¯1+⍳∘' ')Dv	First word in Dv
('FDCBA'⌷⍨∘⊂0 60 70 80 90∘⍸)J	Students grades given score
((⊂∘⍋⌷⊢)⍤1)Y	Sort each row in ascending order
((⊂∘⍋⌷⊢)⍤¯1)Y	Sort major cells ascending
((⊂∘⍒⌷⊢)⍤¯1)Y	Sort major cells descending
(∧\' '∧.=⊢)Dm	Locate leading blank columns
(∧\∧.=∘' ')Dm	Locate leading blank rows
(326(=-⍨2|⊢)⎕DR)Y	Type of simple Y (¯1:mixed, 0:character, 1:numeric)
(↑'⎕'⍴¨⍨⌊)N	Histogram
(¯1+(⎕D,⎕A)⍳⊢)D	Translate characters to digits (bases 2 through 36)
(⊃{2⊃⎕VFI⍞},⊢)Ns	Giving a default value for input of scalar number
'-'@(=∘' ')Y	Replace all blanks with dashes
((~,∩)∘' ')Dv	Moving all blanks to end of text
X{⊃(⍋-⍒)⍺⍵}Y	General comparison according to Total Array Order (¯1:X precedes Y, 0:X≡Y, 1:X succeeds Y)
(⍕' '@(0∘=))N	Formatting with zero values replaced with blanks
Xm↑↑⍤1⍨∘⊃∘⌽∘⍴⍨Ym	Widening matrix Ym to be compatible with Xm
(××∘⌊|+1≤2||)N	Rounding to nearest even number (favouring away from 0)
(××∘⌊|+1>2||)N	Rounding to nearest odd number (favouring away from 0)
(××¯1+2×∘⌈2÷⍨|)N	Rounding to nearest odd number (favouring towards 0)
(⌊+1∘|>∘?0∘×)N	Stochastic rounding to integer
(×/⊢÷+/-2×⊢)Nv	Aspect ratio of a triangle given its side lengths
Iv(⊣⍴⊢⌿⍤⊣⍴⍤1⊢)Ym	Tiling a matrix Ym over a matrix of shape Iv
Iv(⊢⍴⍨⊣,1↓⊢∘⍴)Y	Reshape as in J (outer shape Iv with inner shape of major cells of Y)
Is(⊢⍴⍨⊣,÷⍨∘≢)Yv	Reshape Yv to Is-row matrix (filled row-wise)
Is(⊢⍴⍨÷⍨∘≢,⊣)Yv	Reshape Yv to Is-column matrix (filled row-wise)
Xs(⊢⊢⍤/⍨2∨/1,≠)Yv	Remove consecutive duplicate Xs's from vector Yv
X(↑⊂⍤¯1⍤⊢,⊂⍤⊣)Y	Appending X as additional major cell of Y, adjusting dimensions of both as necessary
(*∘○0J2×⊢÷⍨1+⍳)Js	Js spokes of unit wheel
(*∘○0J2×⊢÷⍨0,⍳)Js	Regular unit polygon of Js edges
(⍳∘⊃∘⌽∘≢⍪⊢)Ym	Attach column numbers to a matrix
Is(⊢⌷⍨∘⊂∘⍋⌷⍤1)Y	Sort Y ascending according to column Is
Xv(⊢⌷⍨∘⊂∘⍋∊⍨)Yv	Move items Xv to end of Yv
Is(⊢⌷⍨∘⊂∘⍒⌷⍤1)Y	Sort Y descending according to column Is
(¯1⌽+\∊⍨∘⍳+/)Jv	Changing lengths Jv of subvectors to starting indicators
(∨\∧∘⌽∨\∘⌽)B	Mask for selecting between first and last 1 on each row
(⌊⊢+2÷⍨0.5≠2|⊢)N	Rounding, to nearest even integer for 0.5 = 1||N
(⌽⊢∘.<∘⍳⌈/)Iv	Matrix with Iv[i] trailing zeroes on row i
(⌽⊢∘.≥∘⍳⌈/)Iv	Matrix with Iv[i] trailing ones on row i
(2*∘÷⍨1⊥×⍨÷≢)N	Quadratic mean
Ms(⊢∘⌽⊥⍨∘÷1+⊣)Nv	Present value of cash flows Nv at interval Ms
(⊢⊥⍨10*∘⌊1+10∘⍟)Jv	Join digits of strictly positive integers into a single integer
(+⍨<1⊥∘∪⊢∨⍳)Js	Is Js an abundant number?
(+⍨=1⊥∘∪⊢∨⍳)Js	Is Js a perfect number?
(+⍨>1⊥∘∪⊢∨⍳)Js	Is Js a deficient number?
2∘(⍉⍴⍨⊤¯1+∘⍳*)Js	All binary representations with Js bits (truth table with Js variables, matrix for choosing all subsets)
(⍉1+⊢⊤¯1+∘⍳×/)Jv	All tuples of corresponding elements of ⍳¨Jv (for large Jv)
(⎕D⌷⍨∘⊂1+10⊥⍣¯1⍳)Js	Vertical column headings for character matrix of width Js
M((+⌿÷≢)2*⍨-)N	Mean squared error
Is(,(⊣↑1⍴⍨⊢)⍤0)Jv	Expansion mask (left argument for ⍀) for fields of length Jv to uniform field of length |Is
((1↓⊢,1↑0∘⍴)⍤1)Y	Rightmost neighbouring elements (padding at edge)
X(<\@(≡¨⍨)⍷)Y	Boolean one at first occurrence of X in Y
((×/⊢-≠)3∘dfns.pco)Js	Euler's totient function (fastest above about 1000)
((∪∘.=⊢)⍳⍨)Y	Self-classify: table of unique vs all major cells of Y
('-'@5 8∘⍕1000⊥3∘↑)Jv	Date (⎕TS format) to YYYY-MM-DD
((⎕D,⎕A)⌷⍨1+⊂)J	Translate digits to characters (bases 2 through 36)
('correct',⍨'in'/⍨~)Bs	Conditional in text
(××2×∘⌈2÷⍨1-⍨|)N	Rounding to nearest even number (favouring towards 0)
Iv(⊢↑⍨≢⍤⊣↑⌊∘⍴)Y	Take of at most Iv elements from Y
(1,⍨¯1↓2≠⌿⊢↑⍨1+≢)Yv	Ending points of groups of equal elements
X(1-⍳⍨∘⊖⍨-∘≢⊣)Y	Index of: Last indices in X of major cells Y
¯1∘(↓×∘⌽∘⍳+∘≢)Nv	Derivative of polynomial with descending coefficients Nv
X(1+≢⍤⊣-⍳⍨∘⌽⍨)Y	Last index of (⍳): Last indices in X of major cells Y
(¯2-/∘⍸1,1,⍨2≠/⊢)Yv	Lengths of subvectors of Yv having equal elements
X(⊂⍤⍋⍤⌷⍨∘⊂⌷⊢)Jv	Sorting indices Jv according to data X
(⊢⍳⍨⌷⍨∘⊂∘⍋⍨)Y	Ascending cardinals numbers (ranking, ties equal)
(⊢⍳⍨⌷⍨∘⊂∘⍒⍨)Y	Descending cardinals numbers (ranking, all different)
Is(⍉⊢⍴⍨⊣,÷⍨∘≢)Yv	Reshape Yv to Is-column matrix (filled column-wise)
Is(|∘⍳∘≢⊢∘⊂⌸⊢)Y	Distribute major cells of Y into Is (default Is:≢Y) groups as evenly as possible
(⊢×∘.<⍨∘⍳∘≢)Mm	Extract the upper triangular part of the matrix Mm without main diagonal
(⊢×∘.≤⍨∘⍳∘≢)Mm	Extract the upper triangular part of the matrix Mm with main diagonal
(⊢×∘.≥⍨∘⍳∘≢)Mm	Extract the lower triangular part of the matrix Mm with main diagonal
(⊢×∘.>⍨∘⍳∘≢)Mm	Extract the lower triangular part of the matrix Mm without main diagonal
(⊢≡∘.<⍨∘⍳∘≢)Bm	Is Bm a full upper triangular matrix without diagonal?
(⊢≡∘.≤⍨∘⍳∘≢)Bm	Is Bm a full upper triangular matrix with diagonal?
(⊢≡∘.≥⍨∘⍳∘≢)Bm	Is Bm a full lower triangular matrix with diagonal?
(⊢≡∘.>⍨∘⍳∘≢)Bm	Is Bm a full lower triangular matrix without diagonal?
(0=⊢∘.|⍨∘⍳⌈/)Jv	Divisibility table
0.01∘(⊣×∘⌊0.5+÷⍨)N	Rounding to nearest hundredth (favouring up)
0.05∘(⊣×∘⌊0.5+÷⍨)N	Rounding currencies to nearest 5 subunits
Is(⊣*∘÷⍨1⊥*⍨∘|)N	Is-norm
(+⍨=1+1⊥∘∪⊢∨⍳)Js	Is Js an almost perfect number?
(+⍨=¯1+1⊥∘∪⊢∨⍳)Js	Is Js a quasiperfect number? (none are known)
Mv(*@1⊢∘⍟⌹1,∘⍪⊣)Nv	Coefficients of least squares exponential fit given X values Mv and Y values Nv
{⊃,/,¨⊆¨⍵}⍣≡Y	Enlist (∊Y) but keep leaf simple arrays intact
(+/∘,÷(×/⍴))N	Arithmetic mean value of all elements
((¯1↓⊢,⍨1↑0∘⍴)⍤1)Y	Leftmost neighbouring elements (padding at edge)
Is(⌈(⊃>⍥|⌽,)⌊)Js	Choose the number closer to zero (the positive one if tied)
(⊃⍤⌽⍤⍸⍤1≠∘' ')D	Indices of last non-blanks in rows
(⊢∧(∧⍀∨⍀=⊢))B	First group of ones
((×⌿2 2⍴1,⍴)⍴2 1 3∘⍉)Y	Juxtapositioning planes of rank 3 array Y
((⊢~∘.×⍨)1↓⍳)Js	Primes until Js
(⊢⌽⍨1-1⊥⍨=∘' ')Dm	Right justify matrix Dm
Is(⊣⊥⊣|(+/⊥⍣¯1))J	Digital sum in base Is
(∩∘(⎕D,⎕A,⎕C⎕A))Dv	Remove non-alphanumeric ASCII characters
(~∘'.,:;?!')Dv	Remove punctuation
Cv{∇⌊⎕DL⍵⊣0#.⎕SAVE⍺}&Ns	Save workspace as Cv every Ns seconds
Ms{⍵⌷⍨⊂⍋⍋⍺×⍋⍵}A	Sort A according to Ms (1: ascending, 0: unordered, ¯1: descending)
('MDCLXVI'/⍨(0,6⍴2 5)⊤⊢)Js	Generate Roman numeral (purely additive, no refinements)
' '@{2=⌈\' 0'⍳⍵}D	Replace leading zeros with blanks
M(*⍤-⍤⊣×*÷!⍤⊢)N	Poisson distribution of states N with average M
X(⍳⍨∘⊖⍨-⍨1+∘≢⊣)Y	Last indices in X of major cells Y, 0 if not found
Iv(⊢⌷⍨∘⊂~⍨∘⍳∘≢)Y	Remove major cells from Y at indices Iv
Iv(⍳⍤≢⍤⊣⌷∘⊃⍤0⌷⍤0 99)Y	Merging Y[1] Y[2] Y[3], … under control of Iv (1:cell from Y[1], 2:cell from Y[2], …)
(0~⍨¯1-2-/∘⍸1,1,⍨~)Bv	Lengths of groups of ones in Bv
Cv(≢⍤⊣↓¨,⊂⍨⊣⍷,)Dv	Split Yv at occurrences of Xv (removes separators and keeps empty segments)
(⍳∘≢+.×⍨1 ¯1∘.=⍉)Jm	Changing connection matrix Jm (¯1 to 1) to a node matrix
(2*∘÷⍨1⊥2*⍨-)⍤1⍤1 99⍨Nm	Euclidean distance table for points in N-space (one point per row)
(⍉1+⍴⊤¯1+∘⍳×/∘⍴)Y	Matrix of all indices of Y (↑,⍳⍴Y for large Y)
(↓(⌊/≢¨)↑⍉∘↑)Yv	Merge vectors in Yv alternately (↓⍉↑ that removes trailing elements from longer vectors)
Ms((9 11○⊣)+.×9 11∘.○⊢)N	Rectangular scale of complex N by complex factor Ms
((¯1∘⎕C≠⊢)-1∘⎕C≠⊢)D	Detect case of characters (1:uppercase, ¯1:lowercase, 0:neither)
((¯1∘⎕C≠⊢)∧1∘⎕C≠⊢)D	Are characters of D titlecase?
Cv⎕S{⍵.(1↓Lengths↑¨Offsets↓¨⊂Block)}Dv	Search text for PCRE regex(es) Cv returning vector of vector of capturing groups
0∘(1+<+∘⌊10⍟∘|⊢+=)J	Number of digit positions in integers in J
Is(⊢↑⍨⊢∘≢+|∘-∘≢)Y	Increasing the leading dimension of Y to multiple of Is
Iv(⊢↑⍨⊢∘⍴+|∘-∘⍴)Y	Increasing the dimensions of Y to multiples of Iv
Is(⊢↑⍨∘-∘⌊2÷⍨+∘≢)Dv	Centering text line Dv into a field of width Is
Is(⍉⊢⍴⍨⊣,⍨⊢∘≢÷⊣)Yv	Reshape Yv to Is-row matrix (filled column-wise)
Is(⊢÷⊣*∘÷⍨1⊥*⍨∘|)N	Normalisation by Is-norm
Ms(⊣*∘÷⍨1⊥*⍨÷⊢∘≢)N	Generalised mean
(⊂⊃¨⍨∘⍋(≢,⊂)¨)Yv	Ascending shortlex sort
(⊂⊃¨⍨∘⍒(≢,⊂)¨)Yv	Descending shortlex sort
((+\∊⍨∘⍳+/)1∘+)Jv	Expansion vector (left argument for \ or ⍀) to insert Jv[i] elements before i'th element
Mv(⊢(⊢+.×⌹)1,∘⍪⊣)Nv	Predicted values of least squares linear fit given X values Mv and Y values Nv
{⍺←'assertion failure' ⋄ 0∊⍵:⍺ ⎕SIGNAL 8 ⋄ shy←0}B	Signal an error if any condition is not met (optional left argument: message on failure)
Iv(↓↑⍨⍴⍤⊢××⍤⊣+0=⊣)Y	Shift each dimension of Y by corresponding amount in Iv
Iv(⊢∘≢≥∘⍋⊢∘⍳∘≢,⊣)Y	Expansion vector for Y with zeros after indices Iv
(⊃∘.×3∘⊃∘.*⍨1+2∘⊃)N	Compound interest for principals N[1] at rates N[2] in times N[3]
0.5∘(⊣*⍨+.××.-0,⊢)N	Area of triangle with side lengths N
(0=10|1⊥∘,0 10⊤⊢×∘⌽1 2⍴⍨≢)Jv	Valid credit card?
M((1-⊣×1-⊢)×1-⊢×1-⊣)N	Probabilistic XNOR
Xs(1↓,⊢⍤/⍨1(⊢∨⌽)0,≠)Yv	Remove leading, multiple and trailing Xs's
((1,⍨⍪)⊢⍤/⍥,⍪,~)Bv	Expansion vector (left argument for \ or ⍀) to insert a new element after each one in Bv
Is(⊣,⊣-∘(⍳∘|××)-)Js	Consecutive integers from Is to Js (arithmetic progression)
X(⊂⍤⍋⍤∊⍨⍥(⊂⍤¯1)⌷⊢)Y	Move items X to end of Y
((¯1⌽+\∊⍨∘⍳+/)1∘+)Jv	Expansion vector (left argument for \ or ⍀) to insert Jv[i] elements after i'th element
(-/(⍳⌈/∘,)∘.=⍉)Im	Changing node matrix Im (starts,ends) to a connection matrix
(-1⊥2(⍟×⊢)⊢∘≢⌸÷≢)Y	Shannon entropy of array ⍵
(⌊10⍟⊢÷⍨∘⍎'.'~⍨⍕)Nv	Number of decimals of elements of Nv
({+/,⍵}⌺3 3∊¨3+0,¨⊢)Bm	Conway's Game of Life: next generation
M((1-×)×1-(1-⊣)×1-⊢)N	Probabilistic XOR
Is{(+/∘∪⊢∨⍳)⍣⍺⊢⍵}Js	Is'th number in the Aliqout sequence for Js
(⊢,[0.5]'¯'\⍨≠∘' ')Dv	Underlines non-blanks in a string
(2⎕FIX{9∊⎕NC⍵:⎕SRC⍎⍵ ⋄ ⎕NR⍵})Dv	Enable preservation of whitespace for item Dv
M(⊢∘××⊣×∘⌈¯0.5+∘|÷⍨)N	Rounding N to nearest M (favouring towards 0)
M(⊢∘××⊣×∘⌊0.5+∘|÷⍨)N	Rounding N to nearest M (favouring away from 0)
(~0∊×∘|≤∘.<⍨∘⍳∘≢)Bm	Is Bm an upper triangular matrix without diagonal?
(~0∊×∘|≤∘.≤⍨∘⍳∘≢)Bm	Is Bm an upper triangular matrix with diagonal?
(~0∊×∘|≤∘.≥⍨∘⍳∘≢)Bm	Is Bm a lower triangular matrix with diagonal?
(~0∊×∘|≤∘.>⍨∘⍳∘≢)Bm	Is Bm a lower triangular matrix without diagonal?
M(+⌿⊣∘.*⍨∘∪⊢∨⊢∘⍳)Js	Sum of M'th powers of positive divisors of Js
((×⌿∘!-∘1)÷∘!¯1++⌿)N	Multivariate Beta Function
Mv(|2÷⍨+.×∘(¯1∘⌽-1∘⌽))Nv	Area of a polygon given Mv,Nv endpoints
Ms(0J1⊥(1↓⊢∘⊖)×⊢÷⊣-¯1↑⊢)Nm	Perspective projection of Nm from distance Ms
{⎕A[26|13+⎕A⍳⍵]}@(∊∘⎕A)D	Rot-13
(⊢⊢⍤/⍨1(⊢∨⌽)' '∘≠)Dv	Cyclic compression of successive blanks
(≠\(⍳+/)∊(+\1∘,))Jv	Vector (Jv[1]⍴1),(Jv[2]⍴0),(Jv[3]⍴1),…
Av(∧∨⊢{⍵\2</0,⍵/⍺}∨)Bv	First one (<\) in each subvector of Bv indicated by Av (fast ∊<\¨Av⊂Bv)
Av(≠\∨{⍺\2≠/0,⍺/⍵}⊢)Bv	State of switch given Bv on and Av off spikes
({⍉(⊂∘⍋⌷⊢)⍤1⍉⍵}⍤2)Y	Sort each column in ascending order
Cv(Xs#.{⍺←⊢ ⋄ ⍺ ⍺⍺.⎕NL ⍵})Nv	Names public to object Xs, optionally filtered by first letters Cv
(⌽∘⍳∘≢⌽⊢,(0 ¯1+≢)⍴0∘⍴)Yv	Diagonal matrix with elements of Yv (filled appropriately)
'/*'∘(≠\⍷∨¯1⌽∘⌽⍷∘⌽)D	Position of /*comments*/
I(⊢÷∘⍉1-(1+⊢)∘.×∘-⊣)N	Annuity coefficient: I periods at interest N
Mv(*⊢∘⍟(⊢+.×⌹)1,∘⍪⊣)Nv	Predicted values of least squares exponential fit given X values Mv and Y values Nv
X({¯1+≢⍵}⌸⍸,⍨0,∘⍳∘≢⊣)Y	Distribution of Y into intervals with cut-offs X
'\^[@-_]'⎕R{⎕UCS¯64+⎕UCS 1↓⍵.Match}Dv	Evaluate control character sequences (like ^J)
Av(≥{~≠\⍺\2≠/1,⍺⌿⍵}⊢)Bv	Leading ones (∧⍀) in each subvector of Bv indicated by Av
(+\'('∘=-¯1↓0,')'∘=)Dv	Depth of parentheses
(⊢{⍎⍺,'←⍵'}⎕EX⊢⎕NS∘⍎)Dv	Make named namespace Dv into unnamed namespace
Is(∧/+=∘(+/∘∪⊢∨⍳)¨,)Js	Are Is and Js amicable numbers?
Mv(⊣,⍥(2*∘÷⍨+.×⍨)⊢÷2⍨)Ns	Length of edges of pyramid with height and width Mv and length Ns
Xs(⎕FIX'file://',⊢⊣⎕NPUT⍨∘⊂∘⎕SRC⍨)Dv	Save scripted object Xs (ref) to synced file Dv
' '∘(1↓,⊢⍤/⍨1(⊢∨⌽)0,≠)Dv	Remove leading, trailing and duplicate blanks
(⊃((+⌿÷≢),≢÷1⊥÷)⍣≡)Nv	Arithmetic-harmonic mean
((3⌽']  [',⍕)⍤0∘⍳∘≢,⍕)Ym	Add line numbers to table Xm
(⊢⊂⍨1,1↓≢↑2</'aeiouyäö'∊⍨⎕C)Dv	Syllabisation of a Finnish word Dv
Av(∧{⍵∧s∊⍺/s←+\2</0,⍵}⊢)Bv	Groups of ones in Bv pointed to by at least one 1 in Av
(1⎕JSON{1<≢⍴⍵:∇¨⊂⍤¯1⊢⍵ ⋄ ⍵})Y	Convert any rank APL array to JSON
(⊢⊆⍨∘(~∧≠\)=∘'''')Dv	Extract text (without quotes) in expression
('/'@(' '∘=)∘⍕100|1⌽3∘↑)Jv	Date (⎕TS format) to M/D/YY
('.'@(' '∘=)∘⍕∘⌽3∘↑)Jv	Date (⎕TS format) to D.M.YYYY
X(Bv{(⍺⍺⌿⍺)@(⍸⍺⍺)⊢⍵})Y	Mask Operator: Merge X and Y using Bv (1 for X's item, 0 for Yv's item)
(,⌷⍨∘⊂∘⍋1⊥⍴⊤¯1+∘⍳×/∘⍴)Ym	Diagonal ravel
Mv((1∘⌽⍤⊣×¯1⌽⊢)-¯1∘⌽⍤⊣×1⌽⊢)Nv	Vector (cross) product of vectors
Is(∧/+=¯1+∘(+/∘∪⊢∨⍳)¨,)Js	Are Is and Js betrothed numbers?
((⎕FUNTIE⊢⊢⎕FREAD⍤,¯1+2↓∘⍳/2↑⎕FSIZE)⎕FSTIE∘0)Dv	Read all components from component file Dv
''''∘(⊣,⊣,⍨⊢⊢⍤/⍨1+=)Dv	Doubling quotes for execution
({⍵⌷⍨⊂⍒⊢/⍵}{⍺,≢⍵}⌸)Y	Sorted frequency table
0 1∘{(⍵,⍺)⍪⍺,∘.(⍎⍵)⍨⍺}Ds	Truth table: All possibilities of Boolean primitive Ds
Is(⊢∘≢÷⍨1⊥⊣*⍨⊢-⊢∘≢÷⍨1⊥⊢)Nv	Is'th moment of Nv
Mv(⊢×+.×)∘(⊢÷2*∘÷⍨+.×⍨)Nv	Component of Mv in direction of Nv
(⊃((+⌿÷≢),×⌿*∘÷≢)⍣≡)Nv	Arithmetic-geometric mean
Mv(+⌿∘↑(,\0×⊣)(1↓,)¨×∘⊂)Nv	Product of polynomials with descending coefficients
(⊃((×⌿*∘÷≢),≢÷1⊥÷)⍣≡)Nv	Geometric-harmonic mean
({'⎕'/⍨¯1+≢⍵}⌸⊢,⍨∘⍳⌈/)Jv	Histogram (distribution barchart, down the page)
(2÷⍨1⊥⊢⌷⍨∘⊂⍋⌷⍨∘⊂∘⌈2÷⍨0 1+≢)Nv	Median of non-empty Nv
(≢÷⍨≢÷⍨(≢×+.*∘2)-2*⍨+⌿)Nv	Theoretical variance
(2∘*↑(⌽2*⍳)⊖∘⍉⍴∘2⊤2/∘⍳2∘*)Js	Js-bit reflected Gray code
(⊢/=(⎕D,⎕A~'GIOQ')⊃⍨1+31|∘⍎9∘↑)Dv	Is Dv a valid Finnish social security number? (10=≢Dv)
(⍕,{2↑'thstndrd'↓⍨2×⊃⍵⌽∊1 0 8\⊂10↑0,⍳3})Js	Ordinal suffix for positive integer Js
(×/({(¯1+⍺*⍵+1)÷⍺-1}⌿2∘dfns.pco))Js	Sum of positive divisors of Js (fast +/∘∪⊢∨⍳)
X({(d/⍺)@{d}⊃⌽(d f)←~@1⎕VFI⍵}⍤1)D	Conversion of each row to a number with defaults X
(≢÷⍨2*∘÷⍨(≢×+.*∘2)-2*⍨+⌿)Nv	Theoretical standard deviation
((⍳-∘⌈÷∘2)(⊣⊖⌽),⍨⍴∘⍳×⍨)Js	A magic square, odd side Js
{⍉' +○⍟'[1+2⊥⍵∘.=⌽⍳⌈/,⍵]}Jm	Scatter plot of two series (one per row of Jm)
1∘(⌷{(⎕NS⍬)(⊣⊣⍎)⍕⍺'←⍵'}⍤1↓)Ym	Convert table (matrix with names in header row) into vector of record namespaces
(-⍨\2(⊢⍴⍨÷⍨∘≢,⊣)∘⍸2≠/0,,∘0)Bv	Start and length of groups of 1s in Bv
(2*∘÷⍨(+.*∘2-≢÷⍨2*⍨+⌿)÷¯1+≢)Nv	Sample standard deviation
I((31-2|7|¯1+⊣)-2∘=⍤⊣×2-0≠.=400 100 4∘.|⊢)J	Number of days in months I of years J
(((≢×+.*∘2)-2*⍨+⌿)÷≢×1⌈¯1+≢)Nv	Sample variance
Mv+.×⍥((⊢÷2*∘÷⍨+.×⍨)⊢-+⌿÷≢)Nv	Sample Pearson correlation coefficient
{1∊⍵:-⎕TRAP←0 'C' '2 ⎕NQ ⎕SE''KeyPress'' ''TC''' ⋄ shy←0}B	Stop on the current line if any condition is met
(⊃÷¯2÷2∘⊃-¯1 1×2*∘÷⍨(×⍨2∘⊃)-(×/4@2))Nv	Solutions of quadratic equation Nv₁x²+Nv₂x+Nv₃=0
As{((¯1*⊃)×2⊥⊃≠,)⊖⍣⍺⊢(8÷⍨≢⍵)8⍴⍵}Bv	Convert bits Bv representing a signed integer of As-endianess (0:big, 1:little) into a number
'\\(u...)?.'⎕R{0⎕JSON'"',⍵.Match,'"'}Dv	Evaluate JSON-style escape sequences (like \n and \u000a)
((⊣/⊢⍤/⍨∘(⌈/=⊢)⊢/){⍺(≢⍵)}⌸)Y	Mode(s): Most frequent major cells of data
('⎕THIS'{'t'⎕NS⍺⊣t←⍵}∘⍎⍨⊢⊣⎕SHADOW⍤{⍵.⎕NL-⍳9})Ys	Unpack members of namespace Ys to the current namespace, localising those names in the process
((∪∊⊆⍨(2⌷⍉201⌶⍬)['MINI_NAME' 'MINI_QUADVAR'⍳⍨3⌷⍉201⌶⍬]∊⍨∘∊200⌶)⎕NR)Dv	Global names used by tradfn/tradop Dv
Is({⍵/⍨∧⌿2<⌿⍵}1+{(-⍺)↑⍳⍵}⊤∘⍳!×∘!⊣)Js	Numeric matrix of all unordered combinations of Is out of Js without replacement
(,⊢⍤/⍨(⊢=⍴⍴⌈⌿)<\⍤,⍤∧⊢=∘⍉⌽∘⍴⍴⌊/)Nm	Value of saddle point
(⍉∘↑{(+/∨\' '≠⌽⍵)↑¨↓⍵}¨@(2=≢∘⍴¨))Yv	Convert inverted table to table (character data as matrices; remove trailing spaces)
Is(⊣|∘⊃{0=⍵:1 0 ⋄ (⍵∇⍵|⍺)+.×0 1,⍪1,-⌊⍺÷⍵}⍨)Js	Multiplicative inverse of Js modulo Is (fast)
{+/{⍵[⍒|⍵]}(⊢{+/⍵}⌸⍨2⌊⍤⍟|)⍤~∘0⍣≡⍵}Nv	Accurately sum a vector of floating point numbers
(1⌽'$^','\*' '\?' '\W'⎕R'.*' '.' '\\&')Dv	Convert globbing pattern to regex
'&[^;]+;'⎕R{3⊃,⎕XML⍠'Whitespace' 'Preserve'⊢'<_>',⍵.Match,'</_>'}Dv	Evaluate XML-style escape sequences (like &#10; and &#x0a;)
'\\(u...|x..)?.'⎕R{0 ⎕JSON⍠'Dialect' 'JSON5'⊢'"',⍵.Match,'"'}Dv	Evaluate JS-style escape sequences (like \v and \x0a but not octal)
(⊃∘⊃({-⍺+.×⍨(+\-+/)@(∘.=⍨⍳∘≢)⍵×∘.≤⍨⍳≢⍵}/≢⍴⊂)Nm	Determinant of any square matrix
dfns.esh digits	Shell for Eide-number sums
TimeStamp←TieNo dfns.compidn CompNo	Component timestamp in IDN format
graph←graph dfns.gperm perm	⍵-permutation of vertices of graph ⍺
graph←graph dfns.insnode vertex	Insert vertex ⍵ in graph ⍺
graph←graph dfns.remnode vertex	Graph ⍺ with vertex ⍵ removed
hex←dfns.hexf num	Convert to/from hex representation of IEEE 754/854 binary/decimal (depending on ⎕FR) floating point
area←dim dfns.ksphere radius	Hypersphere surface area
array←dfns.pack array	Saves WS by sharing subarrays
segs←tag dfns.htx html	Extract html segments
seq←dfns.k6174 nnnn	Kaprekar's operation
soln←dfns.quzzle grid	A hard, simple problem
sref←dfns.cache ivec	Ref to space with initial cache
v83←dfns.f32 nums	Conversion to 32-bit floats as ⎕DR 83
val list←list dfns.alpop key	Value for key ⍵, and reduced list ⍺
val←list dfns.alget key	Value for key ⍵ from list ⍺
vvec←graph dfns.search from	Breadth-first search of graph ⍺
vvec←tree dfns.stpath to	Path through spanning tree ⍺ to vertex ⍵
vecs←seps dfns.segs vec	⍺-separated segments of vector ⍵
m←dfns.m91 n	McCarthy's M91 function
mat←m dfns.cmat n	⍺-combination matrix of ⍳⍵
mat←dfns.pmat n	Numeric matrix of all permutations of length Js
match←this dfns.refmatch that	Space reference match
bmat←dfns.assign costs	Hungarian method cost assignment
bmat←dfns.life bmat	John Conway's “Game of Life”
bool←dfns.isdfn name	Test for D function
bytes←dfns.wsreq expr	WS required to execute expression ⍵
chars←dfns.lcase chars	Lower-casification
chars←dfns.ucase chars	Upper-casification
calendar←dfns.cal date	Calendar
cvec←dfns.squeeze cvec	Compress multiple blanks
cvec←dfns.vtrim cvec	Remove trailing blanks
cvec←dfns.exit code	Return to calling environment
cvec←dfns.unwrap lvec	Replace [LF] with blanks
cvec←dfns.utf8get fid	Character vector from UTF-8 file ⍵
cvec←wgraph dfns.wcost path	Cost vector for path ⍵ through weighted graph ⍺
cvecs←dfns.fnrefs func	External refs from tradfn ⍵
cmat←dfns.mtrim cmat	Trim off trailing blank cols
cmat←dfns.display array	Boxed display of array
cmat←dfns.displays array	Boxed display of array with axis lengths
cmat←dfns.displayr array	Boxed display of array with axis lengths and subarray depths
cmat←dfns.tfmt tree	Character matrix from tree(s)
cmats←dfns.queens N	The N-Queens Problem
cnos←file dfns.filefind string	Find 'string' ⍵ in component file ⍺
code←dfns.morse text	Conversion to/from Morse code
coded←dfns.base64 plain	Base64 encoding and decoding as used in MIME
d←L dfns.dist R	Levenshtein distance
dvec←dfns.stdists tree	Spanning-tree path lengths
digs←alph dfns.adic numb	Bijective base-⍺ numeration
digits←digits dfns.xpower number	Fast multi-digit power using FFT
enc←dfns.rep name	Encapsulate function/operator
entropy←dfns.shannon string	Shannon entropy of message ⍵
i←bits dfns.int u	Signed from unsigned integers
indx←brks dfns.range nums	Numeric range classification
indx←notespace dfns.index class	⍵-index of notes in space ⍺
kinds←dfns.kind namelist	Parse-category of name(s) ⍵
list←dfns.list vect	List from vector ⍵
list←list dfns.alset key val	List ⍺ with key-value ⍵ replacement
list←list dfns.alpush key val	List ⍺ extended with key-value pair ⍵
line←dfns.rmcm line	APL source with comments removed
n←dfns.nlines simple	Number of display lines for simple array
nvec←P dfns.efract Q	Egyptian fractions
nvec←from dfns.to unto	Sequence ⍺ … ⍵
nvec←dfns.factors numb	Prime factors of ⍵
nvec←dfns.fibonacci num	Tail-recursive Fibonacci
nvec←dfns.sieve nvec	Sieve of Eratosthenes
nvec←dfns.ripple nvec	Perfect Ripple Shuffle
nvec←dfns.roots triple	Real roots of quadratic
nvec←p dfns.nicediv q	⍵ similar integers with sum ⍺
num←dfns.factorial num	Tail recursive factorial
num←dfns.mean nvec	Arithmetic mean
num←dfns.det nmat	Determinant of square matrix
num←dfns.osc num	Oscillate - probably returns 1
num←num dfns.gcd num	Greatest Common Divisor
p←s dfns.birthday n	Probability of same birthday
paths←item dfns.in array	Locations of item ⍺ in array ⍵
pvec←dfns.stpaths tree	Spanning tree paths
precedes←this dfns.le that	Total array ordering (TAO) comparison
prob←cond dfns.bayes prior	Bayes' formula
rslt←code dfns.type array	Widen ⍵ to type ⍺
rslt←indx dfns.from array	Select (1↓⍴⍵)-cells from array ⍵
rslt←indx dfns.select avec	⍺-selection of items from vector ⍵
rslt←pvec dfns.lsys axiom	Lindenmayer L-system expansion
ref←dfns.mns defn	Make Namespace from association list ⍵
ref←dfns.refws wsid	Ref to saved ws ⍵
refs←dfns.refpath ref	Refs path from root to ⍵
refs←dfns.xrefs array	Extract refs vector from array ⍵
rounds←dfns.rr players	Round-robin tournament
tree←graph dfns.span fm	Breadth-first span tree for graph ⍺ from vertex ⍵
tree←graph dfns.dfspan from	Depth-first spanning tree: graph ⍺ from vertex ⍵
tree←wgraph dfns.wspan from	Spanning tree for weighted graph ⍺ from ⍵
tree←wug dfns.wmst root	Minimum Spanning Tree for weighted graph ⍺
u←bits dfns.uns i	Unsigned from signed integers
y←dfns.Cholesky x	Decomposition of Hermitian positive-definite matrix
yes←larg dfns.subvec rarg	Is ⍺ a subvector of ⍵?
yyyymmdd←dfns.easter year	Easter Sunday in year ⍵
z←x dfns.xtimes y	Fast multi-digit product using FFT
X{}Y	Fast: X and Y are ignored (no result produced)
X⊣⍣Bs⊢Y	Ternary: if Bs then return X else return Y
cvec←dfns.dice ?6 6	Interpret a throw of dice
v←2 dfns.pco ⍵	prime factors and exponents
v←3 dfns.pco ⍵	prime factorization of ⍵
b←0 dfns.pco ⍵	Is ⍵ a non-prime?
b←1 dfns.pco ⍵	Is ⍵ a prime?
b←10 dfns.pco ⍵	m+b/⍳⍴b are all the primes between m and n, where ⍵≡m,n
n←¯1 dfns.pco ⍵	number of primes less than ⍵
p←4 dfns.pco ⍵	next prime larger than ⍵
p←dfns.pco ⍵	⍵-th prime
p←¯4 dfns.pco ⍵	next prime smaller than ⍵
(9∊⎕NC)Dv	Is Dv an object?
graph←graph dfns.inslink (from to)	Insert edge ⍵ in graph ⍺
graph←graph dfns.remlink (from to)	Remove edge ⍵ from graph ⍺
array←(from repl) dfns.subs array	Vector substitution
saved←{seed} dfns.nspack ref	Share arrays across space tree
vvec←graph dfns.path (fm to)	Shortest path between ⍵ in graph ⍺
bfobj←(dfns.mac) src	Simple macro processor for bf
bmat←{A CI} dfns.baby bmat	Manchester Small Scale Experimental Machine
cvec←dfns.ss (srce from into)	Approximate alternative to xutils' ss
cvecs←{prim supp} dfns.words cvec	Source vector split into words
cvex←{width} dfns.hex nums	Hexadecimal from decimal
cmat←dfns.ssmat (cmat from into)	Matrix search/replace
cmat←{attributes} dfns.attrib namelist	Function/operator attributes
enco←base (dfns.ary) ratnum	⍺-ary representation of rational ⍵
inv←{vals} dfns.gauss_jordan mat	Gauss-Jordan elimination
lvec←{sepr} dfns.vtol nvec	Nested vector to lines
lvec←{cols} dfns.justify lvec	Justify line-vector to ⍺ columns
list←{leaves} dfns.enlist array	List ⍺-leaves of nested array
nvec←{axis} dfns.mscan nvec	Minus scan
nvec←{axis} dfns.dscan nvec	Divide scan
nvec←{sepr} dfns.ltov lvec	Lines to nested vector
nested←{left} dfns.eis right	Enclose-if-simple / link
path←wgraph dfns.wpath (from to)	Quickest path from/to ⍵ in weighted graph ⍺
rslt←dfns.din ''	Evaluation of multi-line D-expression
rslt←{array} dfns.iotag array	Generalized iota
rslt←{blank} dfns.dab argt	Drop All Blanks
rslt←{blank} dfns.dmb argt	Drop Multiple Blanks
rslt←{blank} dfns.deb argt	Drop Ending Blanks
rslt←{blank} dfns.dlb argt	Drop Leading Blanks
rslt←{blank} dfns.dtb argt	Drop Trailing Blanks
rslt←{blank} dfns.dxb argt	Drop eXtraneous Blanks
tree←dfns.tnest (depth leaves)	Array from TreeView style tree
{size}←cvec dfns.utf8put fid	Character vector ⍺ to UTF-8 file ⍵
(depth leaves)←dfns.tview tree	TreeView style from nested array
{name}←dfns.fix rep	Fix function/operator rep
{protected←0} dfns.wsmerge wsid	Merge saved ws into current active ws
X{⍺⍵}Y	Fast: X and Y as a two item vector (X Y)
C←{trace←0} dfns.scc G	Strongly connected components of directed graph ⍵
alloc←{seats←435} dfns.apportion populations	Huntington-Hill apportionment
stack←{repl←0} dfns.joy program	Subset of the Joy language
sum←{digs←6} dfns.chksum array	Simple ⍺-digit checksum
sumvec←{base←10} dfns.colsum cols	Sum of (default decimal) digit columns with carry
cvec←{tabstops←8} dfns.xtabs cvec	Expand/compress HT chars
cvecs←{nv←0} dfns.tokens cvec	Lex of APL src line
cmat←{h v t←⍬ ⍬ 0} dfns.box text	Box the simple text array ⍵
cmat←{topbar←1} dfns.dsp array	Reduced version of disp
cmp←{cmp←12} dfns.packZ exp	Abraham Lempel, Jacob Ziv, Terry Welch
cmp←{cmp←1} dfns.packX txt	TeXt Packer
cmp←{cmp←1} dfns.packN exp	Null packing
cmp←{cmp←1} dfns.packB exp	Pack a simple array
cmp←{cmp←1} dfns.packD data	Pack character array to Boolean vector
cmp←{cmp←1} dfns.packH exp	Huffman packing
cmp←{cmp←1} dfns.packQ data	Assorted uniQues packer
cmp←{cmp←1} dfns.packR exp	Run-Length Encoding (RLE packing)
cmp←{cmp←1} dfns.packS exp	Shannon-Fano packing
cmp←{cmp←1} dfns.packT exp	Simple text vector packager
cmp←{cmp←1} dfns.packU exp	Unique packing
cols←{base←1} dfns.mayan numb	Mayan numbers
crep←{tabs csep←4} dfns.refmt crep	Reformat dfn/op representation
dates←{g←¯53799} dfns.date daynos	⎕TS format from day number
daynos←{g←17520902} dfns.days dates	Day number from ⎕TS format
names←{expr←0} dfns.externs dfn	External references from dfn ⍵
nvec←{denoms←1 5 6 10 26 39 43} dfns.stamps value	Postage stamps for ⍵
num←{num←2} dfns.root num	⍺'th root
nums←{signed←0} dfns.dec cvex	Decimal from hexadecimal
rslt←{c←1} dfns.kball p	Relationship between point and k-ball
rslt←{cmp←1} dfns.pack4 image	Quad-tree packing
rslt←{dirn←¯1} dfns.just chars	Justify text array
rslt←{eval←1} dfns.lisp expr	Evaluator for a subset of Scheme
rvec←{exclude←⍬} dfns.refs ref	Vector of sub-space references
table←{opts←⍬} dfns.cmpx exprs	Approximate expression timings
to←{dirn←1} dfns.polar fm	Polar from/to cartesian coordinates
tree←{trace←0} defn dfns.parse expr	Bunda-Gerth parse of expression ⍵
{⎕IO+⍵}J	Changing an index origin dependent argument to act as ⎕IO=0
{,⎕CSV ⍵ ⍬ 2}Dv	Numeric vector from text file with one number on each line
expr←vars dfns.unify expr expr ···	Unification of expressions
{⍵:X ⋄ Y}Bs	Ternary: if Bs then execute and return X else execute and return Y
Xv{↑⍺⍵}Yv	Two-row matrix from two vectors (pad shorter vector)
Ms{0 ⍺⊤⍵}N	Integer quotient and remainder (new leading length-2 axis) of N divided by Ms
dfns.mmind ⎕A[?4⍴6]	Mastermind or “cows and bulls”
{isolate} ⎕SE.Dyalog.Utils.repObj Y	String representation of array (without refs)
distribution←average + standard_deviation × dfns.NormRand (shape)	Random numbers with normal distribution
sref←{from←⎕THIS} dfns.up gens	Reference to ancestor space
cvec←{maxcols←⎕PW} dfns.tree space	Display of namespace tree
cvec←{path←⎕PATH} dfns.ncpath names	⎕path-aware ⎕NC
cvec←{time←⎕TS} dfns.timestamp cvec	Time-stamped message
cmat←{space←⎕THIS} dfns.find string	Lines containing string(s) ⍵
lvec←{cols←⎕PW} dfns.wrap cvec	Wrap word vector at ⍺ columns
nvec←{tolerance←⎕CT} dfns.cfract numb	Continued fraction approximation of real ⍵
rats←{tolerance←⎕CT} dfns.rational nums	Rational approximation to real ⍵
{⍵+⎕IO-1}J	Changing an index origin dependent argument to act as ⎕IO=1
{-⎕IO-⍵}J	Changing an index origin dependent result to be as ⎕IO=0
{⍵+~⎕IO}J	Changing an index origin dependent result to be as ⎕IO=1
{⊃⍞,⍵}Ds	Input of one character with default Ds
V←{rcols←1…} dfns.X M	Exact cover: Knuth's Algorithm X
{⍵.##}Y	Reference to parent namespaces of objects Y
cvec←{prim supp} dfns.ssword (srce from into)	Approximate alternative to xutils ss
cmat←{excl} dfns.fndiff (fna fnb)	Defined function differences
{cmds←''} dfns.hexdump file	Hex dump of native file
{name}←{ref} dfns.ambiv namelist	Ambivalise traditional function
{tape}←{tape} dfns.bf toks	Brainfuck
Av{⍵⌿⍨1+⍺}Y	Duplicate Y cells where indicated by Av
As{⊖⍣⍺⊢⍵}Y	Reverse Y on condition As
X{</⍋⍺⍵}Y	Is X lexically less than or equal to Y?
X{>/⍋⍺⍵}Y	Is X lexically greater than Y?
X{</⍒⍺⍵}Y	Is X lexically greater than or equal to Y?
X{>/⍒⍺⍵}Y	Is X lexically less than Y?
Xv{⍺[1+⍵]}B	Indexing two-element vector Xv with Boolean values B
M{⍵⊤⍨↑⍬⍺}N	Integer quotient and remainder (new leading length-2 axis) of all combinations of an element from N divided by an element from M
Cv{≢⍺⎕S 3⊢⍵}Dv	Count number of matches for PCRE regex Cv in Dv
nmats←{sreq←1} dfns.kt (rows cols)	Knight's Tour Chess Problem
pnum←{fmt←1} (dfns.phinary) nums	Phinary representation of numbers ⍵
{lines}←{defs←default} dfns.turtle cmds	Flying-turtle graphics
Bv{⍺⍀⍺⌿⍵}Y	Replacing major cells of Y not satisfying Bv with prototypical cells
cmat←{⎕RL←2⊃⎕AI} dfns.maze shape	Kidz maze
{-/×⌿0 1⌽⍵}Nm	Determinant of two-row matrix
{2⊥~2⊥⍣¯1⊢⍵}J	Bit-wise NOT for positive integers
{3=⌊⎕NC⊆,⍵}Dv	Is Dv a function?
{4=⌊⎕NC⊆,⍵}Dv	Is Dv an operator?
{9.1=⎕NC⊆,⍵}Dv	Is Dv a namespace?
{16::0 ⋄ 1⊣⎕SRC ⍵}Ys	Is object Ys scripted?
{⍵/1 0⍴⍨≢⍵}Jv	Alternating sequence of Jv[1] ones, Jv[2] zeros, Jv[3] ones, …
Av{⍵⌷⍨⊂⍒⍺}Y	Moving cells of Y indicated by Av to the start of Y
hits←patn {w←'*'} dfns.match array	Find with wildcards
cmat←{marker←'*'} dfns.draw cmat	Draw over '*'s
cmat←{dec←0 {cen←0}} dfns.disp array	Boxed sketch of nested array
lines←{tabs←0 {ctype←80}} dfns.getfile filename	Text file ⍵ as nested vector
M{⎕DIV←1 ⋄ ⍺÷⍵}N	Avoiding division by zero error (gives zero)
crep←{dot←'·'} dfns.dots crep	Show dfn with “white dots”
Iv{1@⍺{0}¨⍵}Y	Locate indices Iv in array Y
{⍵=⍵.⍵⍵}Y	Is Y a root namespace?
{⌽+⌿↑⌽¨⍵}Nv	Sum of list of polynomials with descending coefficients
{1=-/¨⍳2⍴⍵}Jv	Subdiagonal matrix of size Jv (n or m,n)
{¯1=-/¨⍳2⍴⍵}Jv	Superdiagonal matrix of size Jv (n or m,n)
{⍉2⊥⍣¯1⊢0,⍳⍵}Js	All binary representations up to Js (truth table)
{∊⍕¨2⊥⍣¯1⊢⍵}Js	Binary format of decimal number Js
{1 2 9∊⍨⌊⎕NC⊆,⍵}Dv	Is Dv an array?
{0::0 ⋄ 1⊣8⌶⍨⍵}Yv	Validate inverted table (character data as matrices)
Iv{~⍺⌿1⍴⍨⍴⍵}Y	Locate fill elements formed by replicating Y by Iv
{⍵⌿⍨1 0⍴⍨≢⍵}Y	Remove every second cell of Y
Iv{1@⍵⊢0⍴⍨2⍴⍺}Jv	Adjacency matrix of size Iv (n or m,n) from list of (a,b) arcs Jv
{⍵/⍨1,2≢⌿⍵}Yv	Remove consecutive duplicates from an ordered vector
Is{⊃-//⍺ 1/¯2 ⍵}N	Is differences of differences of adjacents
Iv{~⍺⍀1⍴⍨⍴⍵}Y	Locate fill elements formed by expanding Y by Iv
X{+⌿∧⍀⍺=⍵}Y	Count number of leading elements that are equal
X{+⌿∧⍀⍺≠⍵}Y	Count number of leading elements that are unequal
cmat←{gap←1 {max←⎕PW}} dfns.cols items	Multi-column display
Cv{0::⍎⍵ ⋄ ⍎⍺}Dv	Execute Alternate: Execute Dv but if it errors, execute Cv
{(⊂⍋⍵)⌷⍵}Y	Fast: Y sorted into ascending order
{(⊂⍒⍵)⌷⍵}Y	Fast: Y sorted into descending order
Cv{⍎⍺,'←⍵'}Y	Assign values Y to names Cv
caps←{ack ign←'' ''} dfns.von chars	Capitalise first letters of names
{files}←{type←''} dfns.mp3 dirs	Create playlist(s) for music directories
{size}←{term←2} dfns.putfile (fid rows)	Put rows to text-file
{ok}←{opts←'q'} dfns.test script	Run test script: no news => good news
{excl←'⍵'} dfns.wsdiff (wsa wsb)	Workspace differences
{1≥|-/¨⍳2⍴⍵}Jv	Tridiagonal matrix of size Jv (n or m,n)
{2≥|-/¨⍳2⍴⍵}Jv	Pentadiagonal matrix of size Jv (n or m,n)
{3≥|-/¨⍳2⍴⍵}Jv	Heptadiagonal matrix of size Jv (n or m,n)
{3.1 4.1∊⍨⎕NC,⊆⍵}Dv	Is Dv a tradfn/tradop?
{3.2 4.2∊⍨⎕NC,⊆⍵}Dv	Is Dv a dfn/dop?
{3.3 4.3∊⍨⎕NC⊆,⍵}Dv	Is Dv tacit?
{9.4 9.6∊⍨⎕NC⊆,⍵}Dv	Is Dv a class?
{9.5 9.7∊⍨⎕NC⊆,⍵}Dv	Is Dv an interface?
{16⊥¯1+⍵⍳⍨⎕D,⎕A}Dv	Convert from hexadecimal
Mv{⌽+⌿↑⌽¨⍺ ⍵}Nv	Sum of polynomials with descending coefficients
Mv{⌽-⌿↑⌽¨⍺ ⍵}Nv	Difference between polynomials with descending coefficients
((⌽∨⊖)1∊¨⍳)Jv	All-zero matrix of shape Jv with ones along edges
X{+⌿∧⍀⌽⍺=⍵}Y	Count number of trailing elements that are equal
X{+⌿∧⍀⌽⍺≠⍵}Y	Count number of trailing elements that are unequal
Is{~0∊2</[⍺]⍵}N	Is N Strictly Increasing along axis Is?
Is{~0∊2≤/[⍺]⍵}N	Is N Non-decreasing along axis Is?
Is{~0∊2≥/[⍺]⍵}N	Is N Non-increasing along axis Is?
Is{~0∊2>/[⍺]⍵}N	Is N Strictly Decreasing along axis Is?
note←{new←⎕PW {old←⎕PW}} dfns.wrapnote note	Wrap text paras in note vect
{⍵ ⎕NPUT⍨⊂⎕SE⎕WG'Log'}Dv	Save Session log as file Dv
X{2=⎕NC⍵:⍎⍵ ⋄ ⍺}Dv	Using default value X if Dv does not exist
Is{⍺↑⍵⍪⍺⌿¯1↑⍵}Y	Stretch Y to length Is repeating the last major cell as necessary
{⍵/⍨~'  '⍷⍵}Dv	Remove multiple blanks
Cv{≢⍺⎕S 3⍠'ML'1⊢⍵}Dv	Does Dv have a match for regular expression Cv?
{(⍎⍵⎕NS⍬).⎕CY ⍵}Dv	Import workspace Dv into a namespace so an item can be called using wsname.name
{fns}←{space←⎕THIS} dfns.fnrepl (from to)	Function string replacement
{⎕D[1+⍉10⊥⍣¯1⊢⍵]}Jv	Zero-padded character matrix from vector of integers
{⍵⌿⍨1,∨/2≢⌿⍵}Ym	Remove consecutive duplicate rows from ordered matrix Ym
Is{⍺=-⍨/¨⍳2⍴⍵}Jv	Is-diagonal matrix of size Jv (n or m,n)
{⍵\⍨1 0⍴⍨⊃⌽⍴⍵}D	Spacing out text
Av{⍵⌷⍨⊂⌽⍒+\⍺}Y	Reversal (⊖) of each subvector of Y indicated by Av (fast ∊⌽¨Av⊂Yv)
X{⍺.##=⍵.##}Y	Are X and Y sibling objects?
Is{⍵⌿⍨0=⍺|⍳≢⍵}Y	Taking every Is'th major cell of Y
Is{⍵⌿⍨0≠⍺|⍳≢⍵}Y	Remove every Is'th cell of Y
X{⍵⌿⍨⍺∊⍨⊣/⍵}Ym	Rows of non-empty matrix Y starting with an element in X
Iv{⍵⌷⍨⊂⍺∪⍳≢⍵}Y	Move major cells at positions Iv to the front/top
{⌊0.5+(!⍵)÷*1}N	Derangement
{1 0 1(,∘.∧)⍣⍵⊢1}Js	Cantor set iteration Js
X{⍵↓⍨-⊥⍨⍵∊⍺}Yv	Remove elements in X from end of vector Yv
X{⍵↓⍨⊥⍨⌽⍵∊⍺}Yv	Remove elements in X from beginning of vector Yv
{⍵/⍨∨⌿' '≠⍵}Dm	Remove blank columns
{⍵⌿⍨∨/' '≠⍵}Dm	Remove blank rows
{⌽@(1,≢⍵)⊢⍵}Y	Interchange first and last major cells
Is{Y⌿⍨(⍋⍋⍵)∊⍺}Y	The Is smallest cells of Y in order of occurrence
{⍵/⍨∨\⍵≠' '}Dv	Remove leading blanks
{⍵/⍨∨\⍵≠'0'}Dv	Remove leading zeroes
{⍵/⍨' '∨.≠⍵}Dm	Remove blank columns
{⍵⌿⍨' '∨.≠⍵}Dm	Remove blank rows
{(⎕NEW⊂'Clipboard').Text←⍵}D	Copy to Windows clipboard
{⍵⌷⍨⊂⍋⍒1 0⍴⍨≢⍵}Y	Perfect Ripple Shuffle
Ms{¯2-/0,0⌈⍺-⍨+\⍵}Nv	FIFO stock Nv decremented by Ms
{,[¯1↓⍳≢⍴⍵]1/⍵}Y	Matricise (like ⍪ but preserves trailing instead of leading shape)
(∪(⌿⍨)1≠⊢∘≢⌸)Y	Non-unique major cells
{n=≢∪n|⍵+⍳n←≢⍵}Jv	Valid siteswap pattern?
Is{p÷⍨⌊0.5+⍵×p←10*⍺}N	Rounding N to Is decimal places (Fast ⍎Is⍕N)
{n⍪⍉↑⍵⍎¨n←⍵.⎕NL¯2}Ys	Convert namespace of column vectors into table (matrix with names in header row)
I{⍵⌷⍨⊂⍺~⍨⍳≢⍵}Y	Major cells of Y except those enumerated in I
Av{⍵⌷⍨⊂⍋⍺++\⍺}Y	Rotate first major cells (1⊖) of each subvector of Y indicated by Av (fast ∊1⌽¨Av⊂Yv)
I{⍵[⍋⍵[;⍺];]}Ym	Sort rows of matrix Ym according to column(s) I
Is{,⌿1+⍵⊤⍺?×/⍵}Jv	Deal: Is random items from ⍳Jv (without replacement)
svec←{shape←⍬⍴(⍴⍵)*÷2} dfns.sudoku prob	Solution vector for Sudoku problem ⍵
{' '∧.=X←⍞:⍵ ⋄ X}Y	Return default value Y if input is empty
{⍵/⍨2∨/0,' '≠⍵}Dv	Remove leading and multiple blanks
{⍵↓⍨-⊥⍨' '=⍵}Dv	Remove trailing blanks
defns←{names←0 {list←0 {space←⎕THIS}}} dfns.defs namelist	Extended ]defs
X{r←⍵ ⋄ r←r⊣'r'⎕NS¨⍺}Ys	Merge members of namespaces X into namespace Ys
{2⎕NQ⎕SE'FileRead'⊣⎕SE⎕WS'File'⍵}	Load Session configuration (including ]box and ]rows settings) from file Dv
{2⎕NQ⎕SE'FileWrite'⊣⎕SE⎕WS'File'⍵}Dv	Save Session configuration (including ]box and ]rows settings) as file Dv
{(∨\' '≠⍵)/⍵}Dv	Fast: Dv without any leading blank spaces
Cv{⍺⎕S'&'⍠'OM'1⊢⍵}Dv	Find all matches (even overlapping) for regex Cv in Dv
Cv{⍺⎕S'%'⍠'ML'1⊢⍵}Dv	grep: Globally search Dv with regular expression Cv and print first occurrence
{,⊃∘.+/⍵⍴⊂¯1+⍳10}Is	Sum of digits of the first 10*Is numbers
Is{a[27|⍺+⍵⍳⍨a←27↑⎕A]}D	Caesar's cipher for uppercase D (Is:encryption, -Is:decryption)
Iv{⍺⌷⍨∘⊂⍨⍣⍵⍳≢⍺}Js	Permutation Iv to the power of Js
{(⊢÷⊃)⌽+\0,⍳⍵}Js	Outstanding balances on rule of 78s
Ms{⍵+.×⍨⍺*¯1+⍳≢⍵}Nv	Value of polynomial with coefficients Nv at point Ms
{⍵/⍨2∨/0,⍨' '≠⍵}Dv	Remove multiple and trailing blanks
{⍵⌽⍨+/∧\' '=⍵}D	Justifying left
Av{¯2-⌿0⍪(1⌽⍺)⌿+⍀⍵}N	Sum (+/) of each subvector of N indicated by Av (fast +/¨Av⊂Nv)
Av{2=⌿1⍪(1⌽⍺)⌿=⍀⍵}B	Reverse parity (=⌿) in each subvector of B as indicated by Av (fast =/¨Av⊂Bv)
Av{2≠⌿0⍪(1⌽⍺)⌿≠⍀⍵}B	Parity (≠⌿) in each subvector of B indicated by Av (fast ≠/¨Av⊂Bv)
Ms{⍵×⍺÷⍵[⊃⍒|⍵]}Nv	Scale Nv so the maximum element is Ms
{⍵/⍨∨\' '∨.≠⍵}Dm	Remove leading blank columns
{⍵⌿⍨∨\⍵∨.≠' '}Dm	Remove leading blank rows
{⍵[⍋⍵+.≠' ';]}Dm	Sorting words in list Dm according to word length
Is{⍵⌿⍨(⍋⍒⍵)∊⍳⍺}Y	The Is largest cells of Y in order of occurrence
{2∨/0,≠\⍵=''''}Dv	Locations of texts between and including quotes
{2∧/0,≠\⍵=''''}Dv	Locations of texts between and excluding quotes
Is{(-⍺)↑(99⍴1),⍴⍵}Y	Increase rank of Y to Is
Is{⍵⍪(⍺-≢⍵)⌿¯1↑⍵}Y	Extending Y with last cell of Y to length Is
X{⍺⌿⍨(≢⍵)≥⍵⍳⍺}Y	Intersection (∩) on major cells for any rank
Cv{~⍺'$'⎕S 3⍠'ML'1⊢⍵}Dv	Indicate which lines of Dv have a match for regular expression Cv
{⍵⌷⍨⊂0~⍨⊢/0,⊢⌸⍵}Y	Modes: most frequently occuring major cells
kmap←{xk←(⊂,⊂∘kind)⎕NL-⍳10} dfns.kk fnop	Kind Koloring of d-fnop named ⍵
{0::⎕DMX⊣⎕DMX.(⎕EX⎕NL)2 ⋄ .}Y	New root namespace (Y is ignored)
Iv{⍵/⍨~⍺∊⍨⍳⊃⌽⍴⍵}Y	Remove columns Iv from array Y
Av{⍵⌷⍨⊂1⌈⌈\⍺×⍳≢⍺}Y	Copying each cell of Y until before next 1 in Av
Mv{⍺+2-⌿⌈⍀0⍪+⍀⍺-⍵}Nv	Work done for demand N with capacity M
{(⎕D,⎕A)[1+16⊥⍣¯1⊢⍵]}Js	Convert to hexadecimal
A{m+⍺⌈.×⍨⍵-m←⌊/⍵}Nv	Maxima of elements of subsets of Nv specified by A (one mask per column)
Xv{⊃⍪/1↓,(⊂⍺),⍪⍵}Yv	Join vector of vectors Yv using separator Xv
Is{1↓⍵/⍨⍺=+\⍵=⊃⍵}Yv	The Is'th subvector of Yv (subvectors separated by Yv[1])
Is{1↓⍵/⍨⍺=+\⍵=⊃⍵}Dv	Extracting field number Is from Dv (field separated by first element of Dv)
{⎕ED 2⎕FIX⍣(0∊⎕NC⍵),⊂,⍵}Dv	Begin editing function/operator Dv and preserve whitespace
Ms{⍺←0 ⋄ ⍺,⍨⍵÷⌽⍳≢⍵}Nv	Integral of polynomial Nv with descending coefficients and optional constant Ms
Xv{(⊂⍺)∊⌽∘⍵¨⍳≢⍵}Yv	Are circular lists Xv and Yv identical (excluding phase)
Ms{⍵⍀⍨(⌈⍺)≠⍳1+≢⍵}Y	Adding an empty cell into Y at fractional position Ms
Is{(+/[⍺]÷⍺⊃⍴)⍵}N	Average (mean value) of elements of N along direction Is
I{(1++\' '=⍵)[⍺]}Dv	Ordinal numbers of words in Dv that indices I point to
I{⍉2⊥∨/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise OR for positive integers
I{⍉2⊥∧/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise AND for positive integers
I{⍉2⊥</2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise converse nonimplication for positive integers
I{⍉2⊥≤/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise implication for positive integers
I{⍉2⊥=/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise XNOR for positive integers
I{⍉2⊥≥/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise converse implication for positive integers
I{⍉2⊥>/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise nonimplication for positive integers
I{⍉2⊥≠/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise XOR for positive integers
I{⍉2⊥⍱/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise NOR for positive integers
I{⍉2⊥⍲/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise NAND for positive integers
Ns{+/⍵××\1,⍺÷⍳¯1+≢⍵}Nv	Value of Taylor series with coefficients Nv at point Ns
Av{≠⍀b⍀2≠⌿0⍪⍵⌿⍨b←⍺∨⍵}Bv	Not leading zeroes (∨\) in each subvector of Bv indicated by Av (fast ∊∨\¨Av⊂Nv)
{1↓∊':'@1∘⍕¨100+3↑3↓⍵}Jv	Date (⎕TS format) to hh:mm:ss
Mv{¯2-⌿0⍪(2≠/⍺⍪0)⌿+⍀⍵}Nv	Sum elements of Nv marked by successive identicals in Mv
Iv{¯2-⌿0⍪(⊂+\⍺)⌷+⍀⍵}N	Sums over (+/) subvectors of N, lengths in Iv
{⍵/⍨⌽∨\⌽' '∨.≠⍵}Dm	Remove trailing blank columns
Av{g[⍋(+\⍺)[g←⍋⍵]]}Y	Grade up (⍋) for sorting each subarray of Y indicated by Av
Av{g[⍋(+\⍺)[g←⍒⍵]]}Y	Grade down (⍒) for sorting each subarray of Y indicated by Av
{s←0 ⋄ ⌈/{s⊢←0⌈s+⍵}¨⍵}Nv	Largest sum of any contiguous subvector
Mv{×11○(⍵-1↓⍺)×+2-/⍺}Ns	Sign (side) of point Ns relative to bisections of complex plane by directed edges of Mv
Iv{(¯1+⊃⍵)+?⍺⍴1--/⍵}Jv	Iv-shaped array of random numbers in range Jv[1]…Jv[2] (inclusively, with replacement)
Iv{(-⍺)↑¨↑∘⍵¨+\⍺}Y	Cut Yv into partitions of length Iv
{⍵.((⊂,∘⊂⍎)¨⎕NL¯2)}Y	Extract name-value pairs from namespaces Y
X{l-(l←1+≢⍺)|⍵⍳⍨⊖⍺}Y	Last indices in X of major cells Y
X{(-≢⍴⍺)↑(99⍴1),⍴⍵}Y	Increase rank of Y to rank of X
X{(⊃0⍴⊂)@(∊∘⍺)⊢⍵}Y	Replacing elements of Y in set X with prototypical elements
X{⍺⌿⍨~(⍳≢⍺)∊⍺⍳⍵}Y	Without (~) on major cells for any rank
X{(S⍺)≡(S←⊂∘⍋⌷⊢)⍵}Y	Are X and Y permutations of each other?
X{⍺⍪⍵⌿⍨(≢⍺)<⍺⍳⍵}Y	Union (∪) on major cells of any rank
{⍵⊂⍤⊢⌸⍥,⍨+/↑⍳⍴⍵}Ym	Extract the anti-diagonals of a matrix (without wrap-around) as vector of vectors
Ms{r×+\⍵÷r←×\1@1⍴∘⍺≢⍵}Nv	Accumulate deposits Nv at rate Ms
A{⍵∧s=⌈⍀⍺×s←+⍀2<⌿0⍪⍵}B	Trim groups of ones in B to begin only where first pointed to by a 1 in A
{--⌿(2,≢⍵)⍴⍋⍋⍪⍨⍵}Y	Count of occurrences of the cells of Y
{⌊2÷⍨(⍋⍋⍵)+⌽⍋⍋⌽⍵}Y	Cardinals Up (ranking, shareable)
{⌊2÷⍨(⍋⍒⍵)+⌽⍋⍒⌽⍵}Y	Cardinals Down (ranking, shareable)
{(,⍵)/1+s⊤¯1+⍳×/s←⍴⍵}Jm	Changing connectivity matrix Jm to a connectivity list
Mv{⍵+.×⍨(⍳≢⍺)⌽⍤0 1⌽⍺}Nv	Convolution
Mm{⍺+.×⍣⍵(⍴⍴1,0⍨¨)⍺}Js	Matrix power: Mm raised to the power Js (even for negative Js)
Is{0 1↓(2↑1+⍺)⍕⍵∘.+,10*⍺}Jv	Format with leading zeroes for non-negative Jv in fields of width Is
Cv{⍺←⊢ ⋄ r←⍺⎕NS⍬ ⋄ r⊣'r'⎕NS¨⍵}Y	Combine namespaces Y into a new namespace (optionally named Cv)
X{(⊃0⍴⊂)@(~∊∘⍺)⊢⍵}Y	Replacing elements of Y not in set X with prototypical elements
{⍵(⊢⍪∘.⍎)(⊃⍵).⎕NL¯2}Yv	Convert vector of record namespaces into table (matrix with names in header row)
X{⍎⍵,'⍺'⍴⍨' '∧.=⍵}Dv	Execution of expression Dv with default value X
{⍵⌷⍨⊂⍋{(⎕C⍵)⍵}¨⍵}Y	Sorting Y in case-insensitive alphabetical order
{(⎕SE.SALT.New'HttpCommand'('GET'⍵)).Run.Data}Dv	Download file from URL Dv
{⌿∘⍵¨↓⌽⍉2⊥⍣¯1⊢¯1+⍳2*≢⍵}Y	Powerset: All subsets of Y, including the empty set (0⌿Y) and Y itself
Av{~≠\z\2≠/0,~⍵/⍨z←⍺≥⍵}Bv	Cumulative all-true (∧\) in each subvectors of Bv indicated by Av (fast ∊∧\¨Av⊂Bv)
{(⊂⍋∊⍳∘≢¨⍵)⌷⊃⍪/⍵}Yv	Mesh major cells of elements of Yv
{-/+/×/[2](2 3⍴0 1 2 0 2 1)⌽↑⍵ ⍵}Nm	Determinant of three-row matrix
X{⍺,[2÷⍨⌈/≢∘⍴¨⍺⍵]⍵}Y	Vectors as row matrices in catenation upon each other
{⍵↓⍨-+/∧\⌽⍵∧.=' '}Dm	Remove trailing blank rows
Xv{⍵⌿⍨⍺∧.=⍨⍵↑[2]⍨≢⍺}Ym	Rows of matrix Ym starting with Xv
Mv{⍵+.×(⍺∘*÷!)¯1+⍳≢⍵}Nv	Taylor series at point Mv, coefficients Nv
Mv{⍵+.×⍨(⍳≢⍺)⌽⍤0 1+⌽⍺}Nv	Cross-correlation
{⍵+.×⍨(⍳≢⍺)⌽⍤0 1+⌽⍵}Nv	Auto-correlation
Xs{⍵@(1+⍳⍴⍵)⊢⍺⍴⍨2+⍴⍵}Y	Surround any-rank array Y with scalar Xs
X{(⊂⍋∊⍳∘≢¨⍺ ⍵)⌷⍺⍪⍵}Y	Merge X and Y alternately
{(+/∨\' '≠⌽⍵)↑¨↓⍵}Dm	Fast: A nested vector comprising simple character vectors constructed from the rows of Dm (which must be of depth 1) with trailing spaces removed
Xv{⍵[⍋(1+≢⍺)⊥⍺⍳⍉⍵;]}Ym	Sorting rows of Ym according to key Xv (alphabetising)
{⍺←⎕UCS 10 ⋄ 1↓¨⍺(=⊂⊢)⍺,⍵}Dv	.split() split-on cut-at Vector of character vectors constructed from the linefeed-separated character vector Dv (which must be of depth 1)
Av{(⍺/⍵)∧z/1⌽z←⍺/⍨⍺≥⍵}Bv	All-true (∧/) in each subvector of Bv indicated by Av (fast ∧/¨Av⊂Bv)
Av{(⍺⌿⍵)∧a⌿1⊖a←⍺⌿⍨⍵≤⍺}Bv	All elements true (∧⌿) on each subvector of Bv partioned by Av (fast ∧⌿¨Av⊂[1]Bv)
Av{(⍺⌿⍵)≥a⌿1⊖a←⍺⌿⍨⍵∨⍺}Bv	Any element true (∨⌿) on each subvector of Bv partitioned by Av (fast ∨⌿¨Av⊂[1]Bv)
Ms{(+⌿(⍵*⍺)÷≢⍵)*÷⍺}N	Generalised mean
{⍵/⍨(⊢∨≠\)⍵=''''}Dv	Extract text (including quotes) in expression
{⍵⌽⍨-⌊2÷⍨+/∧\' '=⌽⍵}Dm	Centering flush left character array
Av{+⍀⍵-⍺⍀¯2-⌿0⍪⍺⌿+⍀¯1↓0⍪⍵}N	Cumulative sum (+⍀) in each subvector of N indicated by Av (fast ∊+\¨Av⊂Nv)
Av{≠⍀⍵≠⍺⍀2≠⌿0⍪⍺⌿≠⍀¯1↓0⍪⍵}B	Running parity (≠⍀) in each subvector of B indicated by Av (fast ∊≠\¨Av⊂Bv)
X{⍺,[1+2÷⍨⌈/≢∘⍴¨⍺⍵]⍵}Y	Vectors as column matrices in catenation beneath each other
{⍵/⍨¯1↓1,1(⊢∨⌽)' '∨.≠⍵}Dm	Remove duplicate blank columns
{⍵⌿⍨¯1↓1,1(⊢∨⌽)⍵∨.≠' '}Dm	Remove duplicate blank rows
{⍺←⎕UCS 10 ⋄ ↑1↓¨⍺(=⊂⊢)⍺,⍵}Dv	Character matrix constructed from the linefeed-separated character vector Dv (which must be of depth 1) padded with trailing spaces
X{⍎⍵,'←(⍺⍎''⎕NS'')⍵'}Dv	Change parent (##) of namespace Dv to be namespace X (ref or name)
Av{=⍀⍵≠⍺⍀2≠⌿0⍪~⍺⌿=⍀¯1↓1⍪⍵}B	Cumulative reverse parity (=⍀) in each subvector B as indicated by Av (fast ∊=\¨Av⊂Bv)
Mv{⍵×2+.*∘÷⍨(⍺*2)+×⍨⍵÷2}Ns	Area of pyramid with height and width Mv and length Ns (excluding base)
X{(⊥⍨∘⌽↓⍵↓⍨∘-⊥⍨)⍵∊⍺}Yv	Remove elements in X from beginning and end of vector Yv
{,⍉2(⍴⍨⍴(⍳⍵)↑⍨*)⌈2⍟⍵}Js	Playing order in a cup for Js ranked players
Iv{+⍀(1↑⍵),i⌿(¯2-⌿⍵)÷i←1+⍺}N	Interpolate Iv values between major cells of N
{⍺←0⌈⊃⌈/⍵ ⋄ r←⍺⍴0 ⋄ r[⍵]+←1 ⋄ r}Yv	Inverse of monadic ⍸ with optional result shape as left argument
Iv{⍵⌷⍨⊂⌽⍒+\(⍳≢⍵)∊+\1,⍺}Y	Reversal (⊖) of subvectors of Y having lengths Iv
Is{0+.≠(10*⌽0,⍳⍺)∘.|⌊⍵×10*⍺}N	Number of decimals (up to Is) of elements of N
{,⍉3↑(⎕D,⎕A)[1+16 16⊤¯1+'UTF-8'⎕UCS ⍵]}Dv	Conversion of characters to hexadecimal byte representation
X{⍵⍴⍨(1⍴⍨-/≢∘⍴¨⍺⍵),⍴⍵}Y	Increasing rank of Y to rank of X
{⍵/⍨(∨\∧∘⌽∨\∘⌽)' '≠⍵}Dv	Remove leading and trailing blanks
Av{(⍺/y)∧z/1⌽z←⍺/⍨⍺≥y←⍵=1⌽⍺}Bv	Only final one (</) in each subvector of Bv indicated by Av (fast </¨Av⊂Bv)
Av{(b∧⍺)⍱c⍀2<⌿0⍪(c←b∨⍺)⌿b←~⍵}B	Not first zero (≤\) in each subvector of B indicated by Av (fast ∊≤\¨Av⊂Bv)
Is{⍺⍴,⌿1+(,⍵)⊤⍺?⍥(×/)⍵}Jv	Deal: Iv-shaped array of random items from ⍳Jv (without replacement)
{1⎕NQ(⎕NEW'Timer'(⊂'Event'('Select'⍵)))'Select'}Dv	Invoke system operation Dv (e.g. '[ThreadsResumeAll]')
{⍵+.×⍨*○0J¯2×n÷⍨∘.×⍨¯1+⍳n←≢⍵}Nv	Discrete Fourier Transformation
{1↓(,1,⌽∨\⌽' '≠⍵)/,⍵,⍨⎕UCS 10}Cm	Linefeed-separated character vector constructed from the rows of Dm (which must be of depth 1) with trailing spaces removed
Av{⍵⌷⍨⊂g[⍺/⍋(+\⍺)[g←⍋⍵]]}Y	Minimum (⌊/) in each subvector of Y indicated by Av (fast ⌊/¨Av⊂Yv)
Av{⍵⌷⍨⊂g[⍺/⍋(+\⍺)[g←⍒⍵]]}Y	Maximum (⌈/) in each subvector of Y indicated by Av (fast ⌈/¨Av⊂Yv)
{(']'≢⊃⌽⍕⍵)⊣∘⍵.⎕DF⍵.⎕DF⎕NULL}Ys	Is object Ys named?
{' ⎕'[1+↑⊢∘(≠\)\↓1⍴⍨2⍴2*⍵]}Js	Sierpiński triangle of size Js
{1+o-(m⌿o←⍋⍋⍵)[⍵⍳⍨⍵⌿⍨m←≠⍵]}Y	Occurrence Count: Enumerate each unique major cells separately
Is{⍺←1 ⋄ ⍺÷⍨3⊃⎕AI-(⍎¨⍺⍴⊂⍵)⊢3⊃⎕AI}Dv	Milliseconds to execute Dv (or average of Is executions)
{n÷⍨⍵+.×⍨*○0J2×n÷⍨∘.×⍨¯1+⍳n←≢⍵}Nv	Inverse Discrete Fourier Transformation
{s⍴1@(1+s[1]⊥⍵-1)⊢0⍴⍨×/s←0 0+⌈/,⍵}Jm	Changing connectivity list Jm to a connectivity matrix
Is(⊣{⍬(⊢↓⍨0=⍴)+⌿1 0⌽0,0 ⍺⊤⍵}⍣≡1⊥⊢)Jm	Sum of digit columns with carry
{(⍳⍵)(,[⍳2](⊢,⍤1 0~)⍤1)⍣⍵⍉⍪⍬}Js	Numeric matrix of all permutations of length Js in lexicographical order
Is{⍺>⍵:0 ⋄ ⊃⌽1(+\×)⍣(⍵-⍺)⍨⍳⍺}Js	Count partitions of a set of Js objects into Is non-empty subsets: S(Js,Is)
{(⎕NS⍬)(⍎⊢⊣)⍕(⊣⌿⍵)'←↓⍉1↓⍵'}Ym	Convert table (matrix with names in header row) into namespace of column vectors
I{⍉2⊥(-∨/0>b)⍪∨/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise OR
I{⍉2⊥(-∧/0>b)⍪∧/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise AND
I{⍉2⊥(-</0>b)⍪</2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise converse nonimplication
I{⍉2⊥(-≤/0>b)⍪≤/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise implication
I{⍉2⊥(-=/0>b)⍪=/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise XNOR
I{⍉2⊥(-≥/0>b)⍪≥/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise converse implication
I{⍉2⊥(->/0>b)⍪>/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise nonimplication
I{⍉2⊥(-≠/0>b)⍪≠/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise XOR
I{⍉2⊥(-⍱/0>b)⍪⍱/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise NOR
I{⍉2⊥(-⍲/0>b)⍪⍲/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise NAND
Av{⍵⌷⍨⊂z⍳⌈\z←⍋g[⍋(+\⍺)[g←⍋⍵]]}Y	Cumulative maximum (⌈⍀) in each subvector of Y indicated by Av (fast ∊⌈\¨Av⊂Yv)
Av{⍵⌷⍨⊂z⍳⌈\z←⍋g[⍋(+\⍺)[g←⍒⍵]]}Y	Cumulative minimum (⌊⍀) in each subvector of Y indicated by Av (fast ∊⌊\¨Av⊂Yv)
Iv{⍺(≥∘(2⊃⊢,-)∧≤∘⊃)⍨-/¨⍳2⍴⍵}Jv	Iv (k or k₁,k₂) band matrix of size Jv (n or m,n)
Iv{⍵⍴⍨⍺×@(<∘0)⍨(×/⍴⍵)÷×/⍺~0}Y	Reshape (⍴) Y to shape Iv, allowing ¯1 to automatically determine missing length
Iv{(⍳(≢⍵)++/⍺)∊+\1+¯1↓0,⍺\⍨1⌽⍵}Bv	Expansion vector (left argument for \ or ⍀) to insert Iv[i] elements after i'th subvector (subvectors indicated by Bv)
{r⊣{2|⍵:1+3×⍵ ⋄ ⍵÷2}⍣{1=r,←⍵}⍵⊣r←⍬}Js	Collatz sequence for positive integer Js
Xv{'`\d+`'⎕R(⍕⍺⊃⍨∘⍎1↓¯1↓⍎∘'Match')⍵}Dv	Replace backtick-quoted (e.g. `1`) indices in Dv with elements from Xv
Iv{(⍳+/Iv,Jv)∊+\1+¯1↓0,⍵\⍨(⍳+/Iv)∊+\Iv}Jv	Vector (Iv[1]⍴1),(Jv[1]⍴0),(Iv[2]⍴1),…
Is{⍺>⍵:0 ⋄ ⊃⌽⊃(+\×)/1,⍨⌽⍺,/⍳⍵-1}Js	Count permutations of a set of Js objects that have Is cycles: s(Js,Is)
{(⊢+.×¯1*2</,∘0)(×\1,6⍴5 2)['IVXLCDM'⍳⍵]}Dv	Evaluate Roman numeral
Av{(1↓2-/0,z/⍳≢z←1,⍨⍺/⍨⍺∨⍵)-~⍺/⍵}Bv	Cumulative sum (+\) of each subvector of Bv indicated by Av (fast ∊+\¨Av⊂Nv)
Is{+/((⊢×⍺÷⌈/)⍵-⌊/⍵)∘.≥¯1+⍳⍺}Nv	Classification of elements Nv into Is ranges of equal size
Is{⊃⍣(1=≡⍵)⊢20 ¯1⎕DT(¯1 20⎕DT⊆⍵)+3600⊥⍺,-/20⎕DT'ZJ'}J	Convert ⎕TS-style timestamps from local time zone to UTC+Is
Is{⊃⍣(1=≡⍵)⊢20 ¯1⎕DT(¯1 20⎕DT⊆⍵)-3600⊥⍺,-/20⎕DT'ZJ'}J	Convert ⎕TS-style timestamps from UTC+Is to local time zone
Is{((a×⌽)⍴2 1 3⍉⍵⍴⍨1⌽⍺,⊢)(⍴⍵)÷a←1,⍺}Ym	“Transpose” of matrix Ym with column fields of width Is
Mv{⍵⍀⍨~(⍳(≢⍺)+≢⍵)∊(⌊⍺)+⍳≢⍺}Y	Adding an empty cell into Y at fractional positions Mv
Iv{g⌷⍨⊂⍋(+\(⍳≢⍵)∊+\1,⍺)⌷⍨⊂g←⍋⍵}Y	Grade up (⍋) for sorting subarrays of Y having lengths Iv (≢Y ↔ +/Iv)
Iv{g⌷⍨⊂⍋(+\(⍳≢⍵)∊+\1,⍺)⌷⍨⊂g←⍒⍵}Y	Grade down (⍒) for sorting subarrays of Y having lengths Iv (≢Y ↔ +/Iv)
{'-- ::'@(2+3×⍳5)∊⍕¨(⊃,100+1∘↓)6↑⍵}Jv	Date and time (⎕TS format) to YYYY-MM-DD hh:mm:ss
M{⍺+⍵×(0.5*⍨¯2×⍟?0×⍺+⍵)×1○○2×?0×⍺+⍵}N	Normally distributed numbers with mean M and standard deviation N
Mv{⍵∊⍺:1 ⋄ (¯1∊×d)∨1<|+/⍟d←(⊢÷1∘⌽)⍺-⍵}Ns	Is Ns inside closed polygon Mv (using complex points)?
Iv{1++\1+((⍳+/⍺)∊+\1,⍺)\⍵-¯1↓1,⍺+⍵}Jv	Vector (Jv[1]+⍳Iv[1]),(Jv[2]+⍳Iv[2]),(Jv[3]+⍳Iv[3]),… (≢Iv ↔ ≢Jv)
{+/∧∘⍉⍨∧/⍵[;a⍴1;]≤2 1 3⍉⍵[;2⍴⍨a←≢⍵;]}N	Number of areas intersecting areas in N (⍴N ↔ (n × 2 × dim))
{¯1↓∊({(+/∨\' '≠⌽⍵)↑¨↓⍵}⎕FMT⍵),¨⎕UCS 10}Y	Turn Y into a character vector that looks visually like ⎕FMT Y
Cv{⍺←⊢ ⋄ {⍵⊣⍵⍎(⊃⍺),'←⊃⌽⍺'}/⍵,⍺⎕NS⍬}Yv	Create (optionally named Cv) namespace with name-value pairs Yv
Cv{('\P{',⍺,'}')'.'⎕S 3⍠'Mode' 'D'⍠'DotAll'1⊢⍵}Dv	Do characters in Dv have Unicode property Cv?
Cv{((⎕DL⌈2E¯6×≢⍺)⊢⎕NEW'HTMLRenderer'(('HTML'⍺)('Visible'0))).PrintToPDF⍵}Dv	Create PDF file named Dv with HTML/SVG content Cv
{s⍴r[g[⍋(,⍉(⌽s←⍴⍵)⍴⍳≢⍵)[g←⍋r←,⍵]]]}Y	Sorting rows of matrix Y into ascending order (Fast (⊂∘⍋⌷⊢)⍤1)
X{((≢⍺)⍴⍋⍋⍺⍳⍺⍪⍵)⍳(≢⍵)⍴⍋⍋⍺⍳⍵⍪⍺}Y	Progressive index of (⍳) without replacement
X{((≢⍺)⍴⍋⍋⍺⍳⍺⍪⍵)∊(≢⍵)⍴⍋⍋⍺⍳⍵⍪⍺}Y	Progressive member of (∊) without replacement
Iv{1(↑⌊⍵⌈↓)(2 2⍴¯1 1 1 ¯0.1)+.×10*(-⊃⌽⍺),-/⍺+⍺>99 0}N	Clamp non-negative N to fit in ⍕ field Iv[1 2]
{#.(⎕CY⍵⊣⍵⎕CY⍨'⎕',¨⎕A(∊⍨⊂⊢)'LxSmTrapWsidTnameCtDivIoMlPpRlRtlWxUsingAvuDctFr'⊣⎕EX⎕NL-⍳9)}Dv	Load workspace ws without executing ⎕LX
'`(''[^'']*''|[^`])*`'⎕R{⍕⍎1↓¯1↓⍵.Match}Dv	Replace backtick-quoted (e.g. `2+3`) expressions with their result
Cv{⊃⌽⊃(⊢⌈(⌈\(⍵=⊣)+0,¯1↓⊢))/(⌽⍺),⊂0⊣¨⍵}Dv	Length of longest common substring
Iv{⊂[2×⍳k](,s,⍪r)⍴⍵↑⍨r×s←⌈R÷r←1+(-k←≢R←⍴⍵)↑⍺-1}Y	Tesselate: Cut Y into tiles of size Iv (padding Y if necessary)
{'+'@(⊂1 1)∘⌽∘⍉⍣4⊃(⍪∘⌽∘⍉)/'-|-|',⊂⍕⍵}Dm	ASCII frame a matrix
Cv{(⊢/¨r)↓¨⍵⊂⍨(⍳≢⍵)∊1+⊃¨r←(⍺,'|^')⎕S 0 1⊢⍵}Dv	Split Dv at occurrences of PCRE regex Cv (removes separators and keeps empty segments)
Iv{⊂[¯1+2×⍳k](,s,⍪r)⍴⍵↑⍨r×s←⌈R÷r←1+(-k←≢R←⍴⍵)↑⍺-1}Y	Tesselate: Distribute Y's elements into evenly-sized tiles in an array of shape Iv (padding Y if necessary)
{(⍴⍵)⍴(,(+/b)∘.>¯1+⍳¯1↑⍴⍵)\(,b←⍵≠' ')/,⍵}D	Moving all blanks to end of each rows (fast (~,∩)∘' '⍤1)
X{⍺{⍺⍴⍨≢⍵}@(⍸(|m)/m<0)⊢⍵⍀⍨m←(¯1+2×≢⍵)⍴1,-≢⍺}Y	Intersperse: Insert cell X between major cells in Y
{2⌽∊(12((⊃'am' 'pm'⌽⍨≤),∘⍕|)4⊃⍵),':'@1∘⍕¨100+2↑4↓⍵}Jv	Date (⎕TS format) to H:mm:sstt
{⌽((0,⍳≢⍵)∘.=+⌿~b)+.×(-⍵)×.*b←t⊤¯1+⍳×/t←2⍴⍨≢⍵}Nv	Descending coefficients of polynomial with roots Nv
X{⍺⌷⍨⊂(⍳≢⍺)~((≢⍺)⍴⍋⍋⍺⍳⍺⍪⍵)⍳(≢⍵)⍴⍋⍋⍺⍳⍵⍪⍺}Y	Progressive without (~) without replacement
{⊃{⍺@(⊂1 1)⌽⍉⍵}/'┌┐┘└',{⍺⍪⌽⍉⍵}/'─│─│',⊂⍕⍵}Dm	Unicode frame a matrix
Cv{((~(≢b↑⍵)↑'/'=⍺)/b↑⍵),(1↓b↓⍺),⍵↓⍨b←+/∧\⍺≠','}Dv	Editing Dv with Cv ('/' to delete and ',' to insert)
{(∨/a)⌿(⍴⍵)⍴(,a)\(,a←∧\('⍝'≠⍵)∨≠\⍵='''')/,⍵}Dm	Decommenting a matrix representation of a function (⎕CR)
X(Is{(⍺↑⍨a[⍺⍺]@⍺⍺⊢s),[⍺⍺]⍵↑⍨w[⍺⍺]@⍺⍺⊢s←(a←⍴⍺)⌈w←⍴⍵})Y	Concatenate same-rank arrays X and Y along axis Is (padding if necessary)
{⎕SE.(as←⎕NEW⎕FIX':Class' '∇S' ':Implements destructor'('0#.⎕SAVE''',⍵,'''⊣⎕CS#')'∇' ':EndClass')}Dv	Autosave workspace as Dv when quitting APL
Iv{m|⍵+.×⍺(⊣×⊢|∘⊃{0=⍵:1 0 ⋄ (⍵∇⍵|⍺)+.×0 1,⍪1,-⌊⍺÷⍵})¨⍨⍺÷⍨m←×/⍺}Jv	Chinese Remainder Theorem for moduli Iv and desired remainders Jv
{{⍵⍴⍨2⍴⍨2⍟⍴⍵},(⍺⍺×\1,1↓(2÷⍨⍴⍵)⍴¯1*2÷⍴⍵){(⊣/⍺)∇⍣(×m)⊢(+⌿⍵),[m+0.5]⍺×[⍳m←≢⍴⍺]-⌿⍵}⍺⍺ ⍵}Nv	Fast Fourier Transformation
{{⍵⍴⍨2⍴⍨2⍟⍴⍵}(⍴⍵)÷⍨,(⍺⍺+×\1,1↓(2÷⍨⍴⍵)⍴¯1*2÷⍴⍵){(⊣/⍺)∇⍣(×m)⊢(+⌿⍵),[m+0.5]⍺×[⍳m←≢⍴⍺]-⌿⍵}⍺⍺ ⍵}Nv	Inverse Fast Fourier Transformation
X g⍨∘f⍨ Y	Reverse composition: g on f X and Y, that is, (f X) g Y
rslt←pick dfns.of F of G of H … arg	Pick'th fn applied to arg
f@{B}Y	Where: Execute f on condition B mask
vec←(fun dfns.traj) arg	Function limit 'trajectory'
vect←(fn dfns.ascan) vect	Associative vector scan
cvec←larg (fn dfns.nats) rarg	Natural number arithmetic
indx←(fun dfns.bsearch) range	Binary search
rslt←b (f dfns.kcell) p	Relationship between point and k-cell
rslt←count (fun dfns.pow) argt	Explicit function power
rslt←ival (func dfns.foldl) vals	Fold (reduce) from the left
rslt←ival (accm dfns.ravt subs) tree	Generic depth-first parent-last tree
rslt←ival (accm dfns.trav subs) tree	Generic depth-first parent-first tree
rslt←init (acc dfns.ltrav) list	List traversal
rslt←larg (selector dfns.logic) rarg	Logical function array
rslt←part (redn dfns.pred) rarg	Partitioned reduction
rslt←(f dfns.alt g) mat	Alternant
rslt←(f dfns.and g) arg	Sequential test
rslt←(f dfns.or g) arg	Sequential test
rslt←(fn dfns.vwise) ref	Variable-wise: apply ⍺⍺ to each var in space ⍵
rslt←(fun dfns.file) fname	Apply function to native file tie
rslt←(fun dfns.limit) arg	Function power limit (fixpoint)
rslt←(func dfns.acc) argt	Accumulating reduction
rslt←(func dfns.until cond) argt	Conditional function power
rslt←(func dfns.while cond) argt	Conditional function power
rslt←(dewy dfns.do) rarg	Apply no-result function “en passant”
rslt←(if dfns.cond then cond else) arg	Proposition:consequence:alternative
refs←(fn dfns.fnarray) fns	Array of functions
z←l (fn dfns.bags) r	Multisets/bags
rslt←{larg} I dfns._fk J dfns.fk_ K rarg	Simulation of “fork” syntax
rslt←{larg} I dfns.fk J dfns.fk K rarg	Slower but elegant simulation of “fork” syntax
{larg}(fn dfns.Depth k)rarg	Apply fn at depths k
array←{ascan} (fn dfns.ascana) array	Associative higher rank scan
sum←{larg} (digs dfns.ratsum) rarg	⍺⍺-rational sum of ⍺ and ⍵
cvec←{larg} (fn dfns.big) rarg	Arithmetic on large integers
new←{larg} (sel dfns.sam mod) old	Select and modify
rslt←(fun dfns.rows) {array}	Operand function applied to argument rows
rslt←{lft} (fun dfns.perv) rgt	Scalar pervasion
rslt←{larg} (fn dfns.rats) rarg	Rational arithmetic
rslt←{larg} (func dfns.profile subs) rarg	Performance profiling
rslt←{larg} (func dfns.tc) rarg	Trace of function application
rslt←{larg} (land dfns.cf rand) rarg	Ratio of operand timings
rslt←{larg} (op dfns.sbst) rarg	Simple Binary Search Trees
rslt←{larg} (op dfns.splay) rarg	Splay trees
rslt←{larg) (op dfns.redblack) rarg	Red-black trees
rslt←{larg)(op dfns.avl) rarg	Adelson-Velskii, Landis (AVL) trees
rslt←{left} (fun dfns.saw) right	Apply function Simple-Array-Wise
rslt←{x} (u dfns.Cut case) y	Cut operator
rslt←(⍺⍺ dfns.each) array	Fast each for pure operand function
res←{sin} (fvn dfns.roman) dex	Roman numeral arithmetic
tvec←{larg} (fn dfns.bt) rarg	Balanced Ternary Arithmetic
z←{larg}(fn dfns.H)rarg	Quaternion arithmetic
{mbrot←0}(cxfn dfns.cxdraw) zoom	Complex function drawing
X f{⍺⍺ ⍺ ⍵}Y	Apply monadic function taking two-element argument as a dyadic function
commit←(⎕NS'') dfns.UndoRedo	Derive undo/redo function
tree←{slant←1}(fn dfns.dft) spread	Display of function tree
{⍺⍺/,⍵}Y	Reduction with f without respect to shape
f{⊃⍺⍺/⍵}X Y	Apply dyadic function as a monadic function on a two-element argument
f{⍉⍺⍺⍉⍵}Y	Applying to columns action f defined on rows
f{⍵÷⍺⍺ ⍵}N	Normalise to norm given by f equal to 1
X(Xs{⍺⍺ ⍵})Y	Apply arrayified function Xs on Y (optionally with left argument Y)
{⊃,/⍪⌿⍵}Ym	Join matrix of matrixes to single matrix
f{⌽⍺⍺\⌽⍵}Y	Scan from end with f
f{⍵+¯11○⍺⍺ ⍵}Nv	Plot of scalaroid function f for data Nv
X f{⍺∘⍺⍺¨⍵}Y	Each-Right: Pair up the entirety of X with each element of Y
X f{⍺⍺∘⍵¨⍺}Y	Each-Left: Pair up each element of X with the entirety of Y
f{⍵/⍨⍺⍺ ⍵}Yv	Filter to only those elements of Yv that satisfy scalar criteria f
X f{⊃⍸⍺ ⍺⍺ ⍵}Y	Index of first element where X f Y (f returns Boolean result)
Is f{⍺⍺⍣⍺⊢⍵}Y	Explicit function power: apply f on Is repeated Is times
rslt←cond (⍺⍺ dfns.else ⍵⍵) argt	Condition f else g …
rslt←i j k ··· F dfns.case G case H ··· arg	Select statement
rslt←i j k··· F dfns.for G for H··· arg	Multiple selection of function list
rslt←{larg} (⍺⍺ dfns.memo cache) rarg	Function memoisation (apply ⍺⍺ faster by remembering the result for unique arguments)
{rslt}←{larg} (fun dfns.time) rarg	Function application time
rslt←{guess←1+⎕CT} (fn dfns.invr) argt	Inverse of real-valued function
rslt←{⍺←⊢} (new dfns.at sel) old	Prefix-friendly @
X f{+/,⍺ ⍺⍺ ⍵}Y	The number of elements where X f Y (f returns Boolean result)
X f{⊃⌽⍸⍺ ⍺⍺ ⍵}Y	Index of last element where Xv f Y (f returns Boolean result)
X f{⊃⍸~⍺ ⍺⍺ ⍵}Y	Index of first element where not X f Y (f returns Boolean result)
{prompt←4↑''} (eval dfns.repl) stop	Read-eval-print loop
f{f←⍺⍺ ⋄ ⎕OR'f'}⍬	Arrayify: Convert f into an array for use in an array of functions
rslt←{larg} {''} dfns.lof F lof G lof H … rarg	List of functions
X f{⍵ ⍵⍵⍨⍺⍺ ⍺}g Y	Reverse composition: g on f X and Y, that is, (f X) g Y
f{2⊥⍺⍺/2⊥⍣¯1⍉⍵}J	Bit-wise application of f over positive integers Jv
X f{⊃⌽⍸~⍺ ⍺⍺ ⍵}Y	Index of last element where not X f Y (f returns Boolean result)
X(As{⊃⍺⍺↓⍺⍵})Y	Selection of X or Y depending on condition As
f{⍺⍺ ⍵:1 ⋄ ⍵⍵ ⍵}g Y	Sequential OR test
f{⍺⍺ ⍵:⍵⍵ ⍵ ⋄ 0}g Y	Sequential AND test
M(A{⍺×⍵*¯1*⍺⍺})N	Conditionally multiply (where A=0) or divide (where A=1)
Iv(A{⍵↓⍨⍺⍺×⍺})Y	Conditional drop of Iv elements from array Y
(Ms{⍺⍺⌈⍵⍵⌊⍵}Ns)N	Force N to range Ms≤N≤Ns
rslt←{larg} {''} dfns.vof F vof G vof ··· rarg	Vector of functions
As f{⍺:⍺⍺ ⍵ ⋄ ⍵⍵ ⍵}g Y	Ternary: if As then apply f to Y else apply g to Y1
X{⍺(⍺⍺ ⍵⍵ ⊢)⍵}Y	Church Boolean AND
X{⍵(⍺⍺ ⍵⍵ ⊢)⍺}Y	Church Boolean NAND
X{⍺(⊣ ⍺⍺ ⍵⍵)⍵}Y	Church Boolean OR
X{⍵(⊣ ⍺⍺ ⍵⍵)⍺}Y	Church Boolean NOR
X{⍺(⍵⍵ ⍺⍺ ⊣)⍵}Y	Church Boolean Implication
X{⍵(⍵⍵ ⍺⍺ ⊣)⍺}Y	Church Boolean Nonimplication
X{⍺(⍺⍺ ⍵⍵ ⊣)⍵}Y	Church Boolean Converse Implication
X{⍵(⍺⍺ ⍵⍵ ⊣)⍺}Y	Church Boolean Converse Nonimplication
Av f{⊃,/⍺⍺/¨⍺⊂⍵}Yv	Segmented reduction: like f\ but starting over whenever indicated by Av
Av f{⊃,/⍺⍺\¨⍺⊂⍵}Yv	Segmented scan: like f\ but starting over whenever indicated by Av
{⍺⍺⍀¯1↓⍵⍪⍨⍺⍺⌿⍬}Y	Exclusive Scan First: scan with identity element as seed value
f{⍵.(⍺⍺∘⍎¨⎕NL ¯2)}Y	Apply f on each variable in each namespace in Y
X f{⍺←⊢ ⋄ ⍺⍺ ⍺ ⍵⍵ ⍵}g Y	Atop: f X g Y
f{⍵⍵ ⍵:⍵ ⋄ ∇⍺⍺ ⍵}g Y	Power: Iterating f on Y until condition g Y is true
f{⍺⍺⍣(⍵⍵ ⍵)⊢⍵}g Y	Apply f to Y, g Y times
X(Is{⍺⍺⊃⍸⍺≡¨⊂⍵})Y	Position of the Is'th Y in X
Bv(Is{⍵⌿⍨⍺⍺=+\⍺})Yv	The Is'th subvector of Yv (subvectors indicated by Bv)
(Ms{⍺⍺+⍵⍵×¯1+⍳⍵}Ns)Js	Arithmetic progression vector: Js elements starting at Ms with step Ns
f{⍎'⍺⍺ ⍵ ⋄ ⍵' ⋄ ⍺⍺}Y	Apply no-result function “en passant”
{⍺(⍺⍺ ⍵⍵ ⍺⍺⍨)⍵}	Church Boolean XNOR
{⍺(⍺⍺⍨ ⍵⍵ ⍺⍺)⍵}	Church Boolean XOR
f{↑⍺⍺⍨/(⌽⍵),⊂⍺}Y	Fold (reduce) from the left
f{⍺⍺¨⍣(~0∊⍴⍵)⊢⍵}Y	For each: f on items of Y unless Y is empty
X(Y{⍺∘.=⍺⍺+.×⍵})N	Sums of N according to codes X for lookup table Y
(Is{⍵⍕⍤1⍨⍺⍺,⍪⍵⍵}Iv)Nm	Row-by-row formatting (width Is) of Nm with Iv decimals per row
X(Is{⍺⍺(↑⍪⍺⍪↓)⍵})Y	Inserting X into Y after major cell Is
(Xs{⍺⍺@(⍵⍵∘⊣)⍵}Bv)Y	Replacing elements of Y satisfying Bv with Xs
X f{⍺ ⍺⍺⍣(⍺ ⍵⍵ ⍵)⊢⍵}g Y	Apply X∘f to Y, X g Y times
Mv(Is{⌽⍵⌹⍺∘.*0,⍳⍺⍺})Nv	Descending coefficients of Is-degree polynomial fit given x-values Mv and y-values Nv
f{(⊂⍵⍳⍨∪⍵)⌷⍺⍺∪⍵}Y	Apply costly monadic function f on repetitive arguments
I f{⍉2⊥⍺⍺/2⊥⍣¯1⍉⍺,[0.5]⍵}J	Bit-wise application of f between positive integers I and J
Iv(Is{⍵\⍨,⍺∘.>¯1+⍳⍺⍺})Yv	Justifying left fields of Yv (lengths Iv) to length Is
X f{c←⍺ ⋄ ⍺⍺{c⊢←c ⍺⍺ ⍵}¨⍵}Yv	Left Scan with initial value: f⍨/⌽(⊂X),Yv with intermediate values
M(A{(⍺×⍺⍺)+⍵×~⍺⍺})N	Selection of elements of M and N depending on condition A
X f{(⍵ ⍵⍵ ⍺)⍺⍺(⍺ ⍵⍵ ⍵)}g Y	Across: apply f between (Y g X) and its commute, that is (Y g X) f (X g Y)
Iv(Is{⍵\⍨,⍺∘.>⌽¯1+⍳⍺⍺})Yv	Justifying right fields of Yv (lengths Iv) to length Is
(Mv{⍺⍺∘+¨⍵⍵∘×¨¯1+⍳⍵}Nv)Jv	Multi-dimensional arithmetic progression with dimensions Jv starting at Mv with steps Nv
Is(Ms{⍺/[⌈⍺⍺],[⍺⍺]⍵})Y	Is-replicating along new dimension at fractional axis Ms
I(X{(⊂⍺⌊1+≢⍵)⌷⍵⍪⍺⍺})Y	Giving a default value X for indices beyond end of Y
X(f{⍺←⊢ ⋄ ⎕IO←⍵⍵ ⋄ ⍺ ⍺⍺ ⍵}Bs)Y	Run f in origin Bs
f{⍺⍺⍨⍣¯1⊢⍵⍉⍨r⍴⍳2÷⍨r←⍴⍴⍵}Y	Inverse of outer product selfie (∘.f⍨⍣¯1)
Mv f{⍵+.×⍨(⍳≢⍺)⌽⍤0 1⍺⍺⌽⍺}Nv	Generalised convolution
Mv(Ms{⍺⍺⊥⍺⌹⍵∘.*⌽¯1+⍳≢⍵})Nv	Interpolated value of series Mv=f(Nv) at Ms
X(f{↑[⍵⍵](⊂AX)f⊂[⍵⍵]⍵}ax)Y	Run f on axes of Y
X f{⍺ ⍺⍺⍤(-⌊/≢∘⍴¨⍺⍵)⊢⍵}Y	Apply f with leading axis agreement
X(A{(⍺⍺/⍥,⍵)@(⍺⍺⍨)⍺})Y	Mesh arrays X and Y under control of A () (0:element from X, 1:cell from Y, …)
Av{↑(⊢/⊆⍺)⊂¨(⊃⊆⍺)⊂[1]⍵}Ym	Partition (⊂) Ym along both axes (Av can be one or two partitioning vectors)
f{⍉2⊥(-⍺⍺/0>b)⍪⍺⍺/2⊥⍣¯1⊢b←⍵}J	2's-complement bit-wise application of f over Jv
Nm(Is{(⍪⍺⍺÷⍨⍳⍺⍺)⊥⍺+.×⍵})Mv	Is-point spline of Nm Bezier matrix with Mv control points
X(f{⍺←⊢ ⋄ ⍺(⍺⍺⊣⊢)⍣⍵⍵⊢⍵}Bs)Y	If: replace/apply if Bs
(f{⍺⍺{⍺⍺⍣⍵⊢⍵⍵}⍵⍤0⊢⍵⍵}J)Y	Power: apply f on Y J times
Is f{⍺←≢⍴⍵ ⋄ (⍺⊃⍴⍵)⍺⍺/[⍺]⍵}Y	Reduction (/) with f in dimension Is (default: last), rank unchanged
X(f{↑[⍵⍵](⊂[⍵⍵]⍺)⍺⍺⊂⍵}ax)Y	Run f on axes of X
{X}(f{⍺←⊢ ⋄ 0::⍺ ⍵⍵ ⍵ ⋄ ⍺ ⍺⍺ ⍵}g)Y	Adverse: Apply f but if it errors, apply g
(X{(⊂⍋(⍳≢⍵),⌊⍺⍺)⌷⍵,⍺⍺}Nv)Y	Insert X at fractional positions Nv in Y (≢Nv)=≢X
X(f{⍺ ⍺⍺{⍺ ⍺⍺⍣⍵⊢⍵⍵}⍵⍤0⊢⍵⍵}J)Y	Power: apply X∘f on Y J times
I f{⍺⍺{⍺⍺⍣(⍵⍵ ⍵)⊢⍵}⍵⍵⍣⍺⊢⍵}g Y	Power: Iterating f on Y while condition g Y is true but at most I times
f{c←⊃⍵ ⋄ (1↑⍵),⍺⍺{c⊢←c ⍺⍺ ⍵}¨1↓⍵}Yv	Left Scan: f⍨/⌽Yv with intermediate values
(Xv{⍺⍺(⍵⍵⌷⍨∘⊂⍳)@(∊∘⍺⍺)⍵}Yv)Z	Replacing elements of Z that appear in Xv with the corresponding element from Yv
Xv(Cv{(⍵,⍨⊂⍺⍺)⍪⍺,⍺∘.(⍎⍺⍺)⍵})Yv	Formatted function table for function Cv with Xv down and Yv across
I f{⍉2⊥(-⍺⍺/0>b)⍪⍺⍺/2⊥⍣¯1⊢b←⍉⍺,[0.5]⍵}J	2's-complement bit-wise application of f between I and J
Is f{a+.×⍺⍺(⊃⍵)-(a←-/⍵÷-⍺)×0.5-⍳⍺}Nv	Definite integral of scalar function f in range Nv[1]…Nv[2] with Is steps
M f{⊃+/,(∘.⍺⍺⍨0 1)×(1-⍺)⍺∘.×(1-⍵)⍵}N	Probabilistic function corresponding to Boolean function f
X f{⍺←{⍵ ⋄ ⍺⍺} ⋄ ⍵⍵⍣¯1⊢(⍵⍵ ⍺)⍺⍺(⍵⍵ ⍵)}g Y	Under: preprocess (g) argument(s) before applying main function (f), then undo preprocessing
f{⊃⍺⍺{⍵,⍨⊂⍺ ⍺⍺⊃⍬⍴⍵}/1↓⍬(⊢,∘⊂⍴)¯1⌽⍵}Y	Accumulating reduction
Xv(Av{(1+⍺⍺)⊃¨((~⍺⍺)\⍺),¨(⍺⍺\⍵)})Yv	Mesh vectors Xv and Yv under control of Av (0:cell from Xv, 1:cell from Yv, …)
Mv(Ns{⍺⍺{⍺⍺|⍺×⍺⍺|×⍨⍵}⌿⍺*⍤1⊖0⍪2⊥⍣¯1⊢⍵})Jv	Modulo power (fast non-overflowing Ns|Mv*Jv)
M(I{+⌿(⍺⍺⊤⍨4⍴2)×⍤¯1↑,(1-⍺)⍺∘.×(1-⍵)⍵})N	Boolean/probabilistic functions I (0-15)
Xm(Av{(1+⍺⍺)⊃¨⍤1⊢((~⍺⍺)\⍺),¨(⍺⍺\⍵)})Ym	Mesh matrices Xm and Ym along rows under control of Av (0:cell from Xm, 1:cell from Ym, …)
Xm(Av{(1+⍺⍺)⊃¨⍤0 1⊢((~⍺⍺)⍀⍺),¨(⍺⍺⍀⍵)})Ym	Mesh matrices Xm and Ym along columns under control of Av (0:cell from Xm, 1:cell from Ym, …)
(X{⍺⍺(⍵⍵⌷⍨∘⊂⍳)@(⍸(≢⍺⍺)≥⍺⍺⍳⍵)⊢⍵}Y)Z	Replacing major cells of Z that appear in X with the corresponding major cell from Y
(Is{(⍺⍺*¯1 1)(×⍴⍵↑⍨⊢)(⍴⍵)+⍵⍵,⍨⍺⍺|-≢⍵}Js)Ym	Ravel of a matrix to Is columns with a gap of Js
Is(As{⍺>⍵:0 ⋄ ⊃⌽⊃(+\×)/1,⍨⌽⊣\⍣⍺⍺⊢⍺,/⍳⍵-1})Js	Stirling number of the As'th kind (0:first, 1:second): S(n,k)
X(f{⍺←⊢ ⋄ r⊣⍺ ⍺⍺{⍺←⊢ ⋄ r,∘⊂←⍺ ⍺⍺ ⍵}⍣⍵⍵⊃r←⊂⍵}Y)Z	Iterate: ⍣ but with intermediary results
Iv(Is{(⊂(1+≢⍵)⌊⍋(⍳≢⍵),⍺⍴⍨⍺⍺×≢⍺)⌷⍵⍪⍵⍵}Y)Z	Inserting Is Y's into Z after indices Iv
(Iv{⍵⍀⍨(⍳(≢⍵)++/⍺⍺)∊+\1+⍺⍺\⍨⍵⍵∊⍨⍳≢⍵}Jv)Y	Open a gap of Iv[i] before Y[Jv[i]] (for all i)
Xv(Am{(1+⍺⍺)⊃¨⍤1⊢((~⍺⍺)\⍤1⊢⍺),¨(⍺⍺\⍤1⊢⍵)})Yv	Mesh vectors Xv and Yv in multiple ways under control of Am (0:cell from Xv, 1:cell from Yv, …)
Xm(Am{(1+⍺⍺)⊃¨⍤1⊢((~⍺⍺)\⍤1⊢⍺),¨(⍺⍺\⍤1⊢⍵)})Ym	Mesh matrices Xm and Ym differently for each row under control of Am (0:cell from Xm, 1:cell from Ym, …)
X f{⍺←{⍵ ⋄ ⍺⍺} ⋄ w←⍵ ⋄ ((⍵⍵)w)←(⍵⍵ ⍺)⍺⍺(⍵⍵ ⍵) ⋄ w}g Y	Under: apply main function (f) to selection (g) of argument(s)
f{' ∘'[1+(⊢∘.=⍨∘⌽¯1+⌊/+∘⍳1+⌈/-⌊/)⌊0.5+⍺⍺ ⍵]}Nv	Graph of scalar function f at points Nv
Xv(Am{⍉(1+⍺⍺)⊃¨⍤1⊢((~⍺⍺)\⍤1⍉⍺),¨(⍺⍺\⍤1⍉⍵)})Yv	Mesh vectors Xv and Yv differently in each column under control of Am (0:cell from Xv, 1:cell from Yv, …)
Xm(Am{⍉(1+⍺⍺)⊃¨⍤1⊢((~⍺⍺)\⍤1⍉⍺),¨(⍺⍺\⍤1⍉⍵)})Ym	Mesh matrices Xm and Ym differently for each column under control of Am (0:cell from Xm, 1:cell from Ym, …)
(Iv{⍵⍀⍨(⍳(≢⍵)++/⍺⍺)∊+\1+¯1↓0,⍺⍺\⍨⍵⍵∊⍨⍳≢⍵}Jv)Y	Open a gap of Iv[i] after Y[Jv[i]] (for all i)
∆	Delta
⍙	Delta-underscore
mantEexp	Scaled Notation
realJimag	Complex Notation
¯	Negative number indicator
○2	tau (2 pi)
f/⍬	Identity element for function f
]name	Invoke user command 'name'
int.frac	Decimal Point
ns.name	Namespace Member
⍬⊤⍬	zero-by-zero numeric matrix
1111⌶Jv	Number of Threads
1112⌶Js	Parallel Execution Threshold
127⌶⍬	Overwrite Free Pockets
160⌶0	Config file contents (unofficial)
161⌶Dv	Configuration parameter value and origin (unofficial)
180⌶Dv	Canonical Representation (⎕CR) for methods
181⌶Y	Unsqueezed Type (⎕DR)
183⌶Dv	Name classes for pieces of function/operator Dv (unofficial)
200⌶Dv	Syntax Colouring
2002⌶Js	Specify Workspace Available (⎕WA)
2007⌶0	Disable global triggers
2007⌶1	Enable global triggers
201⌶⍬	Syntax Colour Tokens
2014⌶Y	Remove Data Binding (Windows only)
2016⌶Yv	Create .NET Delegate (Windows only)
2017⌶Dv	Identify .NET Type (Windows only)
2022⌶0	Flush Session Caption (Windows only)
2023⌶0	Close all Windows
2031⌶7	List all system function names (unofficial)
2035⌶Dv	Set Dyalog Pixel Type ('ScaledPixel'/'RealPixel', Windows only)
2036⌶0	Disable auto-status (unofficial)
2036⌶1	Enable auto-status (unofficial)
2100⌶0	Export Workspace to in-Memory .NET Assembly (Windows only)
2101⌶0	Close .NET AppDomain (Windows only)
2350⌶Dv	Set list of user commands for auto-complete (unofficial)
2400⌶Bs	Set Workspace Save Options
2401⌶Bs	Expose Root Properties
2501⌶0	Discard parked incoming .NET threads (Windows only)
2501⌶Bs	Discard incoming .NET thread on exit (Windows only)
2502⌶0	Discard existing used .NET threads (Windows only)
2503⌶Js	Mark Thread as Uninterruptible
2520⌶Bs	Use Separate Thread For .NET
2704⌶Bs	Continue Autosave
3002⌶Bs	Disable Component Checksum Validation
3501⌶0	Connected to the RIDE
3502⌶Yv	Manage RIDE Connections
3503⌶Dv	Cross-platform equivalent of ⎕WC'MsgBox' (unofficial)
4000⌶⍬	Fork New Task (UX only)
4001⌶Dv	Change User (UX only)
4002⌶⍬	Reap Forked Tasks (UX only)
4007⌶⍬	Signal Counts (UX only)
4070⌶Y	Dyalog registry location and user documents folder (unofficial, Windows only)
50100⌶Js	Line Count
5176⌶0	List Loaded Files
5177⌶⍬	List Loaded File Objects
5178⌶Yv	Remove Loaded File Object Info
5179⌶Yv	Loaded File Object Info
60⌶D	Partition lines of D into APL tokens (unofficial)
600⌶Js	Trap Control
739⌶0	Temporary Directory
8415⌶Nm	Singular Value Decomposition
8659⌶⍬	List shared code files
900⌶Y	Called Monadically? (tradfns/tradops only, Y can be any array)
950⌶⍬	Loaded Libraries
⎕UCS 0	Null character (NUL)
⎕UCS 10	Line Feed (LF)
⎕UCS 11	Vertical Tab character (VT)
⎕UCS 12	Form Feed character (FF)
⎕UCS 127	Delete character (DEL)
⎕UCS 13	Carriage Return character (CR)
⎕UCS 13 10	Carriage Return-Line Feed pair (CRLF)
⎕UCS 26	End-Of-File character (EOF)
⎕UCS 27	Escape character (ESC)
⎕UCS 7	Bell character (BEL)
⎕UCS 8	Backspace character (BS)
⎕UCS 9	Horizontal Tab character (HT)
⋄	Statement Separator
:Namespace	Declare container object without accesss restrictions
:If	:If bx ⋄ block ⋄ :ElseIf bx│:Else ⋄ block ⋄ :EndIf
:Implements Constructor	Function is a class constructor
:Implements Destructor	Function is a class destructor
:Interface	Declare protocol for object methods
:Access Overridable	Allow derived class to redefine method (tradfn) for when it is called inside base class code
:Access Override	Redefine base class method (tradfn) so it can be called from inside base class code
:Access Public	Make class method (tradfn) visible and callable from outside the class
:Access Shared	Make class method (tradfn) run in class rather than in instance of class
:Access WebMethod	Same as :Access Public with :Attribute System.Web.Services.WebMethodAttribute
:Class	Declare object template with optional fields, methods, and properties
:Continue	Start iteration of the immediately surrounding :For/:Repeat/:While loop
:For	:For var :In│:InEach ax ⋄ block ⋄ :EndFor
:GoTo J	Branch to line or label J
:Hold	:Hold tkn ⋄ block ⋄ :Else ⋄ block ⋄ :EndHold
:Leave	Terminate execution :For/:Repeat/:While block
:Repeat	:Repeat ⋄ block ⋄ :Until bx ⋄ :AndIf bx│:OrIf bx
:Repeat	:Repeat ⋄ block ⋄ :EndRepeat
:Return	Abort (cut stack back one frame)
:Section	Split function/script up into sections with no effect on execution
:Select	:Select ax ⋄ :Case val│:CaseList val ⋄ block ⋄ :Else ⋄ block ⋄ :EndSelect
:Trap	:Trap ecode ⋄ block ⋄ :Case ecode│:CaseList ecode ⋄ block ⋄ :Else ⋄ block ⋄ :EndTrap
:While	:While bx ⋄ block ⋄ :AndIf bx│:OrIf bx ⋄ block ⋄ :EndWhile
:While	:While bx ⋄ block ⋄ :AndIf bx│:OrIf bx ⋄ block ⋄ :Until bx
:With	:With ns ⋄ block ⋄ :EndWith
bx:Y	Dfn/dop Guard (conditional result)
name:	Label for → and :GoTo
#	Reference to workspace root namespace
'	Character delimiter
⍝	Comment symbol (disables rest of line)
)CMD cmd	Execute cmd (cmd is mandatory on Windows, optional on UNIX)
)CLEAR	Clear active workspace
)CONTINUE	Save active workspace as CONTINUE and terminate session
)ERASE nms	Delete named objects from the active workspace
)HOLDS	List tokens currently held (acquired by :Hold)
)OFF	Terminate the session
)SH cmd	Execute cmd (cmd is mandatory on Windows, optional on UNIX)
)name	invoke system command 'name'
0=≡Y	Fast: Is Y a Simple Scalar?
1=≡Y	Fast: Is Y a Simple Non-scalar?
≢⍴Y	Fast: The rank of Y as a scalar
⍴⍴Y	Fast: The rank of Y as a 1-element vector
*○N	Fast: Euler's idiom (accurate when N is a multiple of 0J0.5)
⌈/⍬	Negative “infinity” (the smallest representable value)
⌊/⍬	Positive “infinity” (the largest representable value)
⊃⌽Y	Fast: The item in the top right of Y
Bv/⍳Ns	Fast: The subset of ⍳Ns corresponding to the 1s in Bv
0∊⍴Y	Fast: Is Y empty?
X f[ax]Y	f between X and Y along axis ax
f[ax]Y	f on Y along axis/axes ax
]MSWIN.Assemblies	List all .NET assemblies currently loaded into memory
]MSWIN.Caption	Query or change window captions
]MSWIN.CopyReg	Copy registry entries to file and, optionally, between Dyalog versions
]MSWIN.FileAssociations	Change the file associations of Dyalog workspaces, applications and scripts (.dws, .dyapp and .dyalog files)
]MSWIN.GUIProps	List property names and values for given or current object
]MSWIN.KeyPress	Return message arguments of KeyPress events
]NS.Xref	Describe the inter-object cross-references in a class/namespace/scriptfile
]NS.ScriptUpdate	Synchronise namespace/class script to match current content
]NS.Summary	Summarise (scope, size, syntax) the functions in a namespace/class/scriptfile
]CALC.Factors	Determine the prime factors of the argument
]CALC.FromHex	Convert a list of hexadecimal representations of integers to a numeric vector
]CALC.PivotTable	Create a pivot table from an appropriate matrix
]CALC.ToHex	Convert integer(s) to a vector of text vectors containing the hexadecimal representation of each number
]DEVOPS.DBuild	Run one or more DyalogBuild script files (.dyalogbuild)
]DEVOPS.DTest	Run (a selection of) functions named test_* from a namespace, file or directory
]FN.Align	Align end-of-line comments
]FN.Calls	Produce the calling tree of a function in a class/namespace/scriptfile
]FN.Compare	Compare two functions
]FN.DInput	Define a multi-line dfn, dop or derived function/operator, or execute a multi-line expression
]FN.Defs	List single-line dfns, dops, derived functions and trains
]FN.Latest	List functions modified since a specified date (default is today), most-recently-changed first
]FN.ReorderLocals	Sort local names in the header of tradfns and tradops
]FILE.CD	Report (and, optionally, change) the current directory
]FILE.Compare	Compare two component files
]FILE.Collect	Split a single file into (up to 999) smaller files
]FILE.Open	Open a file or directory with the specified application
]FILE.ToQuadTS	Convert a component file timestamp (single float number) to ⎕TS format (vector of 7 numbers)
]LINK.Import	Import a namespace from a directory (create the namespace if absent); does not create a link
]LINK.Add	Associate item in linked namespace with new file/directory in corresponding directory
]LINK.Break	Break link between namespace and corresponding directory
]LINK.Create	Link a namespace with a directory (create one or both if absent)
]LINK.Export	Export a namespace to a directory (create the directory if absent); does not create a link
]LINK.Expunge	Erase item and associated file
]LINK.GetItemName	Return name of item associated with file
]LINK.GetFileName	Return name of file associated with item
]LINK.List	List active namespace-directory links
]LINK.Refresh	Fully synchronise namespace-directory content
]OUTPUT.Box	Display output with borders indicating shape, type and structure
]OUTPUT.Boxing	Display output with borders indicating shape, type and structure
]OUTPUT.Disp	Display specified array with borders indicating sub-array shape and type
]OUTPUT.Display	Display specified array with borders indicating array and sub-array shape and type
]OUTPUT.Find	Precede output with a reference to the line of code that generated it
]OUTPUT.Format	Format text into vector of text vectors (or matrix if called from Session) to fit ⎕PW using specified margins
]OUTPUT.HTML	Render HTML or SVG
]OUTPUT.Layout	Format text into vector of text vectors (or matrix if called from Session) to fit ⎕PW using margins inferred from the text
]OUTPUT.Plot	Plot data using any of the SharpPlot graph types
]OUTPUT.Rows	Cut, wrap, fold or extend the display of output lines to fit the Session window
]PERFORMANCE.Profile	Report performance details (optionally through GUI)
]PERFORMANCE.RunTime	Report execution time of one or more expressions
]PERFORMANCE.SpaceNeeded	Compute memory needed to run expression(s)
]SALT.Boot	Boot from a file containing instructions or a function
]SALT.Clean	Remove SALT tags from the ws or specific items so that SALT no longer saves changes to associated files
]SALT.Compare	Compare two versions of a SALTed item
]SALT.List	List files (default: .dyalog only) and directories in the specified directory
]SALT.Load	Load item from native text file
]SALT.Refresh	Reload all SALTed items from their associated files
]SALT.RemoveVersions	Remove one or more versions of a file managed by SALT
]SALT.Save	Save item in a native text file (default: same place if already SALTed)
]SALT.Set	Return one or all parameters or set one parameter
]SALT.Settings	Return one or all parameters or set one parameter
]SALT.Snap	Save all new or modified items to native text files (unscripted namespaces become directories)
]TOOLS.ADoc	Generate documentation automatically
]TOOLS.Chart	Chart the specified expression using a GUI wizard
]TOOLS.Calendar	Display calendar
]TOOLS.Demo	Provide playback mechanism for live demonstrations
]TOOLS.Help	Browse or get link to information about any APL concept
]TOOLS.Version	Report version numbers of APL, OS, SALT, UCMD, .NET and/or workspace
]TRANSFER.In	Import a workspace from a workspace transfer file
]TRANSFER.Out	Export the current workspace to a workspace transfer file
]UCMD.UMonitor	Gather user command execution data
]UCMD.UNew	Create one or more new user commands (optionally using a GUI)
]UCMD.UDebug	Facilitate debugging of user commands
]UCMD.ULoad	Load a user command's script into the current namespace
]UCMD.UReset	Refresh cache of all user command definitions
]UCMD.USetup	Run Setup from setup.dyalog
]UCMD.UVersion	Report version information of a user command
]WS.Map	Display namespace treeview
]WS.NamesLike	List names followed by their class matching the pattern
]WS.Nms	List names followed by their class matching the pattern
]WS.Check	Perform workspace integrity check
]WS.Compare	Compare two workspaces
]WS.Document	List (part of) the workspace content, displaying each item separately
]WS.FindRefs	Follow references in the workspace until all references have been found
]WS.FnsLike	List functions and operators matching a pattern
]WS.Locate	Locate (and, optionally, replace) strings in the workspace
]WS.ObsLike	List objects matching the pattern
]WS.Peek	Execute expression in temporary copy of workspace
]WS.SizeOf	Report size of variables in descending order
]WS.VarsLike	List variables matching the pattern
2 2 2 2⊤⍳16	Unit tesseract
2 2 2⊤⍳8	Unit cube
2 2⊤⍳4	Unit square
1 2 3 4 5 6 7 8 9 0,⎕	Input continuation
⎕BASE.name	Invoke the base class definition of name
2350⌶⎕NULL	List auto-completed user commands (unofficial)
8666⌶⎕NULL	Assimilate shared code files
⊢name←Y	Output assigned value
name⊢←Y	Update (in dfns/dops) a variable in closest scope where localised or in global scope if not localised anyhere
name,←Y	Fast: 'name' redefined to be its value with Y catenated along its last axis
name⍪←Y	Fast: 'name' redefined to be its value with Y catenated along its first axis
⎕←x	Output x to the session via stdout (with trailing line break)
⎕RL←⍬	Randomising random numbers
x←⎕	Evaluate user input (from stdin) and return result
⍞←x	Output x to session without trailing newline via stderr (without trailing line break)
charvec←⍞	Return one line of user input from stdin
name←⍞	Assignment of character vector without needing to double quotes
:Implements Trigger *	Declare function as a trigger function called when any global variable is changed in the same namespace
:Implements Constructor :Base expr	Function is a class constructor which calls the base constructor with the result of 'expr' as argument
0::any error	Covers all errors (errors 1–999)
1::WS FULL	There is insufficient workspace in which to perform an operation
10::LIMIT ERROR	A system limit is exceeded
1000::any exception	Covers all exceptions (errors 1001–1008)
1001::STOP VECTOR	Execution stopped due to ⎕STOP or stop bit set from editor
1002::WEAK INTERRUPT	Execution stopped by weak interrupt
1003::INTERRUPT	Execution stopped by strong interrupt
1004::INPUT INTERRUPT	EOF to ⎕ or soft interrupt to ⍞
1005::EOF INTERRUPT	EOF when reading input from a file (when an input to APL is from a file)
1006::TIMEOUT	Time limit specified by ⎕RTL exceeded while awaiting input through ⍞ or ⎕SR
1007::RESIZE	User resizes the ⎕SM window
1008::DEADLOCK	Two threads acquiring a hold of two different tokens, and then each asks to hold the other token
11::DOMAIN ERROR	Type or value not permitted for the function/operator/system variable or unrepresentable numeric value
12::HOLD ERROR	Attempting ⎕SAVE while external arrays or component files are held by ⎕FHOLD
16::NONCE ERROR	System function or syntax or appropriate value is not currently implemented but is reserved for future use
18::FILE TIE ERROR	File tie number used as tied when not or available when tied, or missing external variable
19::FILE ACCESS ERROR	User is not authorised, or has supplied the wrong passnumber, or ⎕FERASE/⎕FRENAME on non-exclusive tie
2::SYNTAX ERROR	A line of characters does not constitute a meaningful statement
20::FILE INDEX ERROR	An attempt is made to reference a non-existent component
21::FILE FULL	Operation would cause the file to exceed its file size limit
22::FILE NAME ERROR	File not found, file exists, incompatible file, or ⎕FERASE/⎕NERASE filename mismatch
23::FILE DAMAGED	Component file damaged — check with ⎕FCHK
24::FILE TIED	Attempt to tie file that is exclusively tied, or to exclusively tie file that is tied
25::FILE TIED REMOTELY	Attempt to tie file that another processor has exclusively tied, or to exclusively tie file that another processor has exclusively tied
26::FILE SYSTEM ERROR	Input/output error during file read/write — use ⎕FCHK when file becomes available
28::FILE SYSTEM NOT AVAILABLE	Lock attempt failed — may be due to opportunistic locks being enabled on Windows
3::INDEX ERROR	Index or axis is not in ⍳⍴Y or not in ⍳≢⍴Y
30::FILE SYSTEM TIES USED UP	User already has the maximum number of files tied
31::FILE TIE QUOTA USED UP	Maximum number of file ties for this APL instance has been reached
32::FILE NAME QUOTA USED UP	User already has the maximum number of files named
34::FILE SYSTEM NO SPACE	There is insufficient disk space
38::FILE COMPONENT DAMAGED	Attempt is made to access a component that is not a valid APL object — use ⎕FCHK
4::RANK ERROR	Array rank invalid for function/operator, or ranks of arguments do not conform
5::LENGTH ERROR	The shape of the arguments of a function do not conform, but the ranks do conform
52::FIELD CONTENTS RANK ERROR	Field content of rank greater than 2 is assigned to ⎕SM
53::FIELD CONTENTS TOO MANY COLUMNS	Content of a numeric or date field assigned to ⎕SM has more than one column
54::FIELD POSITION ERROR	Location of the field assigned to ⎕SM is outside the screen
55::FIELD SIZE ERROR	Invalid field size for ⎕SM
58::FIELD ATTRIBUTES RANK ERROR	The current video attribute assigned to ⎕SM is non-scalar but its rank does not match that of the field contents
59::FIELD ATTRIBUTES LENGTH ERROR	The current video attribute assigned to ⎕SM is non-scalar but its dimensions do not match those of the field contents
6::VALUE ERROR	Undefined name in this scope, or function does not return result while required
61::KEY CODE UNRECOGNISED	A key code supplied to ⎕SR or ⎕PFKEY is not recognised as a valid code, or attempt at creating a KeyPress event with invalid Input Code
62::KEY CODE RANK ERROR	A key code supplied to ⎕SR or ⎕PFKEY is not a scalar or a vector
63::KEY CODE TYPE ERROR	A key code supplied to ⎕SR or ⎕PFKEY is numeric or nested; i.e. is not a valid key code
7::FORMAT ERROR	Ill-formed specification in the left argument of ⎕FMT
70::FORMAT FILE ACCESS ERROR	The date format file to be used by ⎕SM does not exist or cannot be accessed
71::FORMAT FILE ERROR	The date format file to be used by ⎕SM is ill-formed
72::NO PIPES	The limit on the number of pipes communicating between tasks is during startup, ⎕SH, or use of an external variable
76::PROCESSOR TABLE FULL	The limit on the number of processes (tasks) that the computer system can support would be exceeded
84::TRAP ERROR	Searching for a definition set for the system variable ⎕TRAP, after a trappable error has occurred, caused WS FULL
90::EXCEPTION	A Microsoft .NET object threw an exception
92::TRANSLATION ERROR	The system cannot convert a character from Unicode to an Atomic Vector (⎕AV) index or vice versa
99::INTERNAL ERROR	Severe system error — save your work(space), and report the issue to Dyalog
errno::Y	Dfn/dop Error Guard (result upon listed error)
→Bs⍴0	Conditional Return: Leave function and return to caller if Bs
→⎕LC	Continuing execution
##	Reference to parent namespace of the current namespace
)ED - nms	Create one or more character matrices (nms) in the Editor
)ED ⍟ nms	Create one or more namespaces (nms) in the Editor
)ED ○ nms	Create one or more classes (nms) in the Editor
)ED ∘ nms	Create one or more interfaces (nms) in the Editor
)ED ∊ nms	Create one or more vectors of character vectors (nms) in the Editor
⍺←Y	Default left argument in dfn/dop
)ED ∇ nms	Create one or more functions (nms) in the Editor
)ED → nms	Create one or more character vectors (nms) in the Editor
X (Y Z)	Stranding: (⊂X),⊂(⊂Y),(⊂Z)
X(Z g h)Y	Fork: Z g X h Y
X(f g h)Y	Fork: (X f Y)g(X h Y)
X(f g)Y	Atop: f X g Y
(X g h)Y	Fork: X g h Y
(f g h)Y	Fork: (f Y)g(h Y)
(f g)Y	Atop: f g Y
0=⍴⍴Y	Fast: Is Y a Scalar?
1=≡,Y	Fast: Is Y a Simple Array?
0=⊃⍴Y	Fast: Does Y have an empty first dimension?
⊃⌽,Y	Fast: The item in the bottom right of Y
M⊃¨⊂Yv	Fast: The subset of Yv in the index positions defined by M (equivalent to Yv[M])
Av/⍳⍴Yv	Fast: The positions in Yv corresponding to the 1s in Av
~0∊⍴Y	Fast: Is Y non-empty?
;X;Y;Z	Tradfn/Tradop locals line localisation of names X, Y, Z (before first code)
]name -?	Print help for user command 'name'
↓⍉↑Yv	Fast: A nested vector comprising vectors that each correspond to a position in the original vectors of Yv – the first vector contains the first item from each vector in Yv, padded to be the same length as the largest vector, and so on
⌊0.5+N	Fast: Round to nearest integer
...	Syntax error to stop execution
⎕NL-⍳9	List names of existing members
31↓⎕UCS⍳126	Printable ASCII
⎕SE.Dyalog.Serial Y	Set or query (if Y is empty) serial number
name f∘⊢←Y	Modified Assignment (also dfns/dops)
⎕THIS.name←Y	Assign (in dfns/dops) to closest scope where localised or in global scope if not localised anyhere
:Include <ns>	Import methods from one a namespace to this class
35::FILE ACCESS ERROR - CONVERTING FILE	Operating system did not allow APL to upgrade component file structure
60::FULL-SCREEN ERROR	The required full screen capabilities are not available to ⎕SM
56::FIELD CONTENTS/TYPE MISMATCH	Field contents assigned to ⎕SM does not conform with the given field type e.g. character content with numeric type
57::FIELD TYPE/BEHAVIOUR UNRECOGNISED	Field type or behaviour code assigned to ⎕SM is invalid
X[Iv Jv …]	Indexing (scatter-point)
0(220⌶)Jv	Deserialise Array
0(7162⌶)Dv	Translate JSON name to valid APL name (mangle if necessary)
0(85⌶)Dv	Execute expression Dv (⍎Dv) and signal ERROR 85 if it has no result, otherwise return result
1(220⌶)Y	Serialise Array
1(7162⌶)Dv	Translate possibly mangled APL name to JSON name (demangle if mangled)
1(85⌶)Dv	Execute expression Dv (⍎Dv) and signal ERROR 85 if result is shy or missing, otherwise return result
Xv(8⌶)Yv	Inverted Table Index-of (Xv⍳Yv)
X(1159⌶)Y	Update Function Time and User Stamp
Mv(219⌶)Jv	Compress/Decompress Vector of Short Integers
Is(1500⌶)Y	Hash Array
Is(86⌶)Dv	Execute expression Dv (⍎Dv) but Is frames up the stack (unofficial)
Is(8659⌶)Jv	List names (of name classes Jv) for share code file in slot Is
Iv(2000⌶)Jv	Memory Manager Statistics
Iv(8666⌶)Dv	Attach shared code file Dv (for name classes Iv)
Cv(1200⌶)N	Format date-time
20⎕DT'Z'	Current UNIX time
¯1⎕DT'Z'	Current UTC date and time
(name1 name2)←Y	Multiple assignment
(name1 name2)←name2 name1	Swap variable values
:Attribute name {ConstructorArgs}	Descriptive tag that provides additional information to .NET
∇ X(f op g)Y	Dyadic tradop header for deriving dyadic functions
∇ X(f op)Y	Monadic tradop header for deriving dyadic functions
∇ f(X Y Z)	Tradfn/Tradop right argument name list (enforces correct number of arguments and distributes values)
∇ {X}f Y	Optional Left Tradfn/Tradop Argument
∇ (f op g)Y	Dyadic tradop header for deriving monadic functions
∇ (f op)Y	Monadic tradop header for deriving monadic functions
)XLOAD {ws}	Load workspace ws without executing ⎕LX
)METHODS {nm}	List methods in current namespace, optionally beginning with {nm}
)NS {name}	Create new global namespace called name
)INTERFACES {nm}	List interfaces in current namespace, optionally beginning with {nm}
)CLASSES {nm}	List classes in current namespace, optionally beginning with {nm}
)COPY ws {nms}	Copy (selected) contents of workspace ws to active workspace
)CS {space}	Change current namespace
)DROP {ws}	Erase file containing workspace ws
)ED {etype} nms	Open one or more objects (nms) of types etypes in the Editor
)EVENTS {nm}	List events in current namespace, optionally beginning with {nm}
)FNS {nm}	List functions in current namespace, optionally beginning with {nm}
)LIB {folder}	List workspaces either on WSPATH or in folder
)LOAD {ws}	Replace active workspace with workspace ws
)OBJECTS {nm}	List objects in current namespace, optionally beginning with {nm}
)OBS {nm}	List objects in current namespace, optionally beginning with {nm}
)OPS {nm}	List operators in current namespace, optionally beginning with {nm}
)PCOPY ws {nms}	As )COPY but does not overwrite existing objects
)PROPS {nm}	List properties in current namespace, optionally beginning with {nm}
)RESET {n}	Reset state indicator, empty event queue/clear top n suspensions, and close corresponding trace windows (synonym of )SIC)
)SIC {n}	Stack Indicator Clear: Reset state indicator, empty event queue/clear top n suspensions, and close corresponding trace windows (synonym of )RESET)
)TID {tdno}	Switch to thread tdno or report current thread number
)VARS {nm}	List variables in current namespace, optionally beginning with {nm}
)WSID {ws}	Set or report the name of the active workspace
2÷¯1+5*÷2	Golden ratio (direct formula)
+/∧\B	Fast: The number of leading 1s in each row of B
17×2-645=⎕FR	Arithmetic precision of the system (in decimals)
100⊥100|3↑⎕TS	Packing current date (YYMMDD)
∇ f;X;Y;Z	Tradfn/Tradop header line localisation of names X, Y, Z
(X+Y)×Z	Precedence: Z×X+Y
80=⎕DR''	Is this Dyalog APL Unicode?
82=⎕DR''	Is this Dyalog APL Classic?
⊃1⎕NPARTS''	Current directory
{ns}⎕SE.UCMD Dv	Execute user command, arguments, modifiers Dv under program control (from within 'ns')
2⎕NQ⎕SE'FileWrite'	Save Session configuration (including ]box and ]rows settings) to default session file
(1 1⍉Xm)←Yv	Reassign main diagonal of matrix
:Implements Method {InterfaceName.MethodName}	Function implements method 'MethodName' whose syntax is specified by interface 'InterfaceName'
∇ (X Y Z)←f	Tradfn/Tradop result name list (collects)
∇ {Z}←f Y	Shy Tradfn/Tradop result
#⎕WG'APLVersion'	Report interpreter version
f←{⍵}	Prototypical monadic dfn
f←{⍺}	Prototypical dyadic dfn
{_← … }	Shy dfn/dop result
''''	Quote character
≢⍕!⍋⎕D	Meaning of life (short)
X[I;J;…]	Indexing (slicing)
∧\' '=D	Fast: A Boolean mask indicating the leading blank spaces in each row of D
8666⌶0⍴⊂''	Detach shared code files
2⊃⊃¯10⎕DT'J'	Current ISO day-of-year
2⊃⊃¯11⎕DT'J'	Current ISO week number
(,name)←⊂Y	Structural assignment: Replace all items, shape unchanged
(⎕FR⎕PP)←1287 34	System setting for exact integer arithmetic up to 34 digits
⍎Bs⍴'→'	Conditional Abort (cut stack back one frame if Bs)
⊢2⎕NQ#'GetCommandLineArgs'	Report the command line that Dyalog was started with
⊢2⎕NQ#'TCPGetHostID'	Report current IP address (first if multiple)
0=⎕NC'⍺'	Called Monadically? (dfns/dops only)
2=⎕NC'⍺'	Called Dyadically? (dfns/dops only)
{Xs}(2015⌶)Dv	Create Data Binding Source
{Xs}(400⌶)Y	Compiler Control
{X}(2041⌶)Js	Override COM Default Value (Windows only)
{Av}(2010⌶)Yv	Update DataTable (Windows only)
{Av}(2011⌶)Yv	Read DataTable (Windows only)
{Cv}(3500⌶)Dv	Send Text Dv to RIDE-embedded Browser with caption Cv
{Cv}(8667⌶)Js Cv	Save (names Cv) into shared code file Dv
{name}⎕WC'MDIClient'	Container for MDI windows (Windows only)
{name}⎕WC'Marker'	Draws a series of polymarkers (Windows only)
{name}⎕WC'MsgBox'	Displays a message box (Windows only)
{name}⎕WC'MenuItem'	Selects an option or action (Windows only)
{name}⎕WC'MenuBar'	Pull-down menu bar (Windows only)
{name}⎕WC'Menu'	Pop-up menu (Windows only)
{name}⎕WC'Metafile'	Loads a Windows Metafile (Windows only)
{name}⎕WC'NetClient'	Provides access to .NET Classes
{name}⎕WC'NetControl'	Instantiates a .NET Control (Windows only)
{name}⎕WC'NetType'	Exports an APL namespace as a Net Class
{name}⎕WC'ImageList'	Defines a collection of bitmaps or icons (Windows only)
{name}⎕WC'Image'	Displays Bitmaps, Icons and Metafiles (Windows only)
{name}⎕WC'Icon'	Defines an icon (Windows only)
{name}⎕WC'ActiveXContainer'	Represents the application hosting a Dyalog APL ActiveXControl (Windows only)
{name}⎕WC'ActiveXControl'	Represents an ActiveX control written in Dyalog APL (Windows only)
{name}⎕WC'Animation'	Displays simple animations from .AVI files (Windows only)
{name}⎕WC'Bitmap'	Defines a bitmap (Windows only)
{name}⎕WC'BrowseBox'	Prompts user to browse for a folder or other resource. (Windows only)
{name}⎕WC'ButtonEdit'	Text input field with dropdown button (Windows only)
{name}⎕WC'Button'	Selects an option (Windows only)
{name}⎕WC'Calendar'	Displays a month calendar control (Windows only)
{name}⎕WC'Circle'	Draws a circle (Windows only)
{name}⎕WC'Clipboard'	Provides access to Windows clipboard (Windows only)
{name}⎕WC'ComboEx'	Edit field with selectable list of choices (extended) (Windows only)
{name}⎕WC'Combo'	Edit field with selectable list of choices (Windows only)
{name}⎕WC'ColorButton'	Allows the user to select a colour (Windows only)
{name}⎕WC'CoolBand'	Represents a band in a CoolBar (Windows only)
{name}⎕WC'CoolBar'	A container for CoolBand objects (Windows only)
{name}⎕WC'Cursor'	Defines a cursor (Windows only)
{name}⎕WC'DateTimePicker'	An editable date/time field with an optional drop-down Calendar (Windows only)
{name}⎕WC'Edit'	Text input field (Windows only)
{name}⎕WC'Ellipse'	Draws an ellipse (Windows only)
{name}⎕WC'FileBox'	Prompts user to select a file (Windows only)
{name}⎕WC'Font'	Loads a font (Windows only)
{name}⎕WC'Form'	Top-level Window (Windows only)
{name}⎕WC'Grid'	Displays a data matrix as a spreadsheet (Windows only)
{name}⎕WC'Group'	A frame for grouping Buttons and other objects (Windows only)
{name}⎕WC'HTMLRenderer'	Displays HTML content
{name}⎕WC'Label'	Displays static text (Windows only)
{name}⎕WC'ListView'	Displays a collection of items for selection (Windows only)
{name}⎕WC'List'	For selecting an item (Windows only)
{name}⎕WC'Locator'	Graphical (positional) input device (Windows only)
{name}⎕WC'OCXClass'	Provides access to OLE Custom Controls (Windows only)
{name}⎕WC'OLEClient'	Provides access to OLE Automation objects (Windows only)
{name}⎕WC'OLEServer'	Enables APL to act as an OLE Automation server (Windows only)
{name}⎕WC'Poly'	Draws lines (Windows only)
{name}⎕WC'Printer'	For hard-copy output (Windows only)
{name}⎕WC'ProgressBar'	Displays the progress of a lengthy operation (Windows only)
{name}⎕WC'PropertyPage'	Tabbed or paged container for other controls (Windows only)
{name}⎕WC'PropertySheet'	Contains PropertyPages (Windows only)
{name}⎕WC'Rect'	Draws rectangles (Windows only)
{name}⎕WC'RichEdit'	Text input with word-processing capabilities (Windows only)
{name}⎕WC'SM'	Specifies a window for ⎕SM (character mode interface) (Windows only)
{name}⎕WC'Scroll'	Scroll bar (Windows only)
{name}⎕WC'Separator'	Separator between items (Windows only)
{name}⎕WC'Spinner'	Input field with spin buttons (Windows only)
{name}⎕WC'Splitter'	Divides a container into panes (Windows only)
{name}⎕WC'Static'	A frame for drawing and clipping graphics (Windows only)
{name}⎕WC'StatusBar'	Ribbon status bar (Windows only)
{name}⎕WC'StatusField'	Displays status information (Windows only)
{name}⎕WC'SubForm'	Acts as an MDI window or a constrained Form (Windows only)
{name}⎕WC'SysTrayItem'	An item that you can create in the Windows System Tray (Windows only)
{name}⎕WC'TCPSocket'	Provides an interface to TCP/IP sockets
{name}⎕WC'TabButton'	Selects a tabbed SubForm (Windows only)
{name}⎕WC'TabControl'	Contains TabButtons (tabs) (Windows only)
{name}⎕WC'Text'	Draws graphical text (Windows only)
{name}⎕WC'Timer'	Generates events at regular intervals
{name}⎕WC'TipField'	Displays pop-up context sensitive help (Windows only)
{name}⎕WC'ToolBar'	Ribbon tool bar (Windows only)
{name}⎕WC'ToolButton'	Performs an action or selects an option (Windows only)
{name}⎕WC'ToolControl'	Standard Windows tool control (Windows only)
{name}⎕WC'TrackBar'	A slider control for analogue input/output (Windows only)
{name}⎕WC'TreeView'	Displays a hierarchical collection of items (Windows only)
{name}⎕WC'UpDown'	Spin buttons (Windows only)
+∘÷⍣=⍨1	Golden ratio (as a limit)
~∘' '¨↓Dm	Fast: A nested vector comprising simple character vectors constructed from the rows of Dm (which must be of depth 1) with all blank spaces removed
)SAVE {-force} {ws}	Save active workspace, optionally with new name ws (overwrite any existing if -force)
op←{⍺⍺ ⍵}	Prototypical monadic dop deriving monadic functions
op←{⍵⍵ ⍵}	Prototypical dyadic dop deriving monadic functions
op←{⍺⍺ ⍺}	Prototypical monadic dop deriving dyadic functions
op←{⍵⍵ ⍺}	Prototypical dyadic dop deriving dyadic functions
⍎⌽⍕⌈*○≡⍬	Meaning of life (modern)
+/∧\' '=D	Fast: The number of leading blank spaces in each row of D
3600÷⍨-/20⎕DT'JZ'	Local time-zone offset from UTC
:Implements Trigger name1{,name2,name3,…}	Delare function as a trigger function called when any of the listed variables is changed
⎕DMX.(Category EN)≡'XML conversion'1	Invalid left argument
⎕DMX.(Category EN)≡'XML conversion'10	Invalid '--' in comment
⎕DMX.(Category EN)≡'XML conversion'11	'>' expected
⎕DMX.(Category EN)≡'XML conversion'12	Attribute, '>' or '/>' expected
⎕DMX.(Category EN)≡'XML conversion'13	Invalid ']]>'
⎕DMX.(Category EN)≡'XML conversion'14	Invalid entity reference
⎕DMX.(Category EN)≡'XML conversion'15	Unterminated character reference
⎕DMX.(Category EN)≡'XML conversion'16	Invalid character reference
⎕DMX.(Category EN)≡'XML conversion'17	Invalid character from character reference
⎕DMX.(Category EN)≡'XML conversion'18	Tag mismatch
⎕DMX.(Category EN)≡'XML conversion'19	Tag imbalance
⎕DMX.(Category EN)≡'XML conversion'2	Invalid right argument
⎕DMX.(Category EN)≡'XML conversion'20	'=' expected
⎕DMX.(Category EN)≡'XML conversion'21	Quote expected at start of attribute value
⎕DMX.(Category EN)≡'XML conversion'22	Unterminated attribute value
⎕DMX.(Category EN)≡'XML conversion'23	'<' not allowed in attribute value
⎕DMX.(Category EN)≡'XML conversion'24	Numeric value expected in level column
⎕DMX.(Category EN)≡'XML conversion'25	Level must be a non-negative value
⎕DMX.(Category EN)≡'XML conversion'26	Outer level must be 0
⎕DMX.(Category EN)≡'XML conversion'27	Level increment must be no greater than 1
⎕DMX.(Category EN)≡'XML conversion'28	Character vector expected in tag column
⎕DMX.(Category EN)≡'XML conversion'29	Invalid attribute array
⎕DMX.(Category EN)≡'XML conversion'3	Array has invalid number of columns
⎕DMX.(Category EN)≡'XML conversion'30	Attribute list should have two columns
⎕DMX.(Category EN)≡'XML conversion'31	Attribute list but no tag
⎕DMX.(Category EN)≡'XML conversion'32	Character vector expected for attribute name
⎕DMX.(Category EN)≡'XML conversion'33	Zero-length attribute name
⎕DMX.(Category EN)≡'XML conversion'34	Invalid attribute name
⎕DMX.(Category EN)≡'XML conversion'35	Numeric scalar or character vector expected for attribute value
⎕DMX.(Category EN)≡'XML conversion'36	Invalid xml:space attribute value
⎕DMX.(Category EN)≡'XML conversion'37	Numeric scalar or character vector expected in data column
⎕DMX.(Category EN)≡'XML conversion'38	Invalid character in data
⎕DMX.(Category EN)≡'XML conversion'39	Numeric value expected in type column
⎕DMX.(Category EN)≡'XML conversion'4	Unterminated comment
⎕DMX.(Category EN)≡'XML conversion'40	Invalid tag name
⎕DMX.(Category EN)≡'XML conversion'41	Invalid character in attribute value
⎕DMX.(Category EN)≡'XML conversion'42	Orphaned data
⎕DMX.(Category EN)≡'XML conversion'43	Invalid option name
⎕DMX.(Category EN)≡'XML conversion'44	Invalid option value
⎕DMX.(Category EN)≡'XML conversion'45	Invalid column
⎕DMX.(Category EN)≡'XML conversion'46	Columns have inconsistent number of rows
⎕DMX.(Category EN)≡'XML conversion'5	Unterminated <![CDATA[
⎕DMX.(Category EN)≡'XML conversion'6	Too many levels of nesting
⎕DMX.(Category EN)≡'XML conversion'7	Invalid character
⎕DMX.(Category EN)≡'XML conversion'8	Unterminated markup
⎕DMX.(Category EN)≡'XML conversion'9	Unterminated processing instruction
⎕DMX.(Category EN)≡'Name association'1	Shared library could not be loaded
⎕DMX.(Category EN)≡'Name association'2	Bad parameter specification
⎕DMX.(Category EN)≡'Name association'3	The specified function could not be found
⎕DMX.(Category EN)≡'Name association'4	Callback is not a function
⎕DMX.(Category EN)≡'Name association'5	Callback is not a function name
⎕DMX.(Category EN)≡'Name association'6	Null pointer returned for ⎕NA result of type A or Z
⎕DMX.(Category EN)≡'Native files'1	Invalid left argument
⎕DMX.(Category EN)≡'Native files'10	Unable to lock file
⎕DMX.(Category EN)≡'Native files'11	Tie number not in use
⎕DMX.(Category EN)≡'Native files'12	Unable to open file
⎕DMX.(Category EN)≡'Native files'13	read error
⎕DMX.(Category EN)≡'Native files'14	Unable to seek in file
⎕DMX.(Category EN)≡'Native files'15	Tie number in use
⎕DMX.(Category EN)≡'Native files'16	Too many tied files
⎕DMX.(Category EN)≡'Native files'17	Unable to truncate file
⎕DMX.(Category EN)≡'Native files'18	Unable to write to file
⎕DMX.(Category EN)≡'Native files'19	Invalid element count
⎕DMX.(Category EN)≡'Native files'2	Invalid right argument
⎕DMX.(Category EN)≡'Native files'20	Invalid file offset
⎕DMX.(Category EN)≡'Native files'21	Invalid length
⎕DMX.(Category EN)≡'Native files'22	Invalid conversion code
⎕DMX.(Category EN)≡'Native files'23	Invalid mode
⎕DMX.(Category EN)≡'Native files'24	Invalid lock type
⎕DMX.(Category EN)≡'Native files'25	Invalid timeout
⎕DMX.(Category EN)≡'Native files'26	The total number of bits in the right argument is not an exact multiple of the number of bits in the type given in the left argument
⎕DMX.(Category EN)≡'Native files'27	Left argument should be a character array
⎕DMX.(Category EN)≡'Native files'28	Invalid left argument: three elements only allowed with Classic Edition
⎕DMX.(Category EN)≡'Native files'29	Invalid left argument: 163 82 expected in the second and third elements
⎕DMX.(Category EN)≡'Native files'3	Invalid tie number
⎕DMX.(Category EN)≡'Native files'30	Translate vector should have 256 elements
⎕DMX.(Category EN)≡'Native files'31	Translate vector element value out of range
⎕DMX.(Category EN)≡'Native files'32	Missing left argument
⎕DMX.(Category EN)≡'Native files'33	Name too long
⎕DMX.(Category EN)≡'Native files'34	Left argument array could not be converted to the requested type
⎕DMX.(Category EN)≡'Native files'35	Array too large
⎕DMX.(Category EN)≡'Native files'36	Missing filename
⎕DMX.(Category EN)≡'Native files'37	Invalid directory name
⎕DMX.(Category EN)≡'Native files'38	Invalid file or directory name
⎕DMX.(Category EN)≡'Native files'39	Unable to delete directory
⎕DMX.(Category EN)≡'Native files'4	Unable to create file
⎕DMX.(Category EN)≡'Native files'40	Already exists
⎕DMX.(Category EN)≡'Native files'41	Unable to create directory
⎕DMX.(Category EN)≡'Native files'42	Unable to set file attributes
⎕DMX.(Category EN)≡'Native files'43	Invalid user name
⎕DMX.(Category EN)≡'Native files'44	Invalid group name
⎕DMX.(Category EN)≡'Native files'45	Unable to normalise the file or directory name
⎕DMX.(Category EN)≡'Native files'46	Right argument should be file name and optional flags
⎕DMX.(Category EN)≡'Native files'47	Left argument should be content, optional encoding and optional line ending
⎕DMX.(Category EN)≡'Native files'48	Invalid file name
⎕DMX.(Category EN)≡'Native files'49	Invalid file encoding type
⎕DMX.(Category EN)≡'Native files'5	Unable to delete file
⎕DMX.(Category EN)≡'Native files'50	Unable to decode the file
⎕DMX.(Category EN)≡'Native files'51	Unable to encode the file
⎕DMX.(Category EN)≡'Native files'52	Invalid text array
⎕DMX.(Category EN)≡'Native files'53	Invalid line ending
⎕DMX.(Category EN)≡'Native files'54	NEL line ending (133) not supported by the selected file encoding
⎕DMX.(Category EN)≡'Native files'55	Invalid option value
⎕DMX.(Category EN)≡'Native files'56	Invalid character value for variant option
⎕DMX.(Category EN)≡'Native files'57	Invalid numeric value for variant option
⎕DMX.(Category EN)≡'Native files'58	The number of columns must be explicitly specified because the 'Ragged' option is set.
⎕DMX.(Category EN)≡'Native files'6	File name mismatch
⎕DMX.(Category EN)≡'Native files'60	Invalid CSV source in right argument
⎕DMX.(Category EN)≡'Native files'61	Invalid CSV source type in right argument
⎕DMX.(Category EN)≡'Native files'62	Invalid column description in right argument
⎕DMX.(Category EN)≡'Native files'63	Invalid header specification in right argument
⎕DMX.(Category EN)≡'Native files'64	Invalid CSV destination in right argument
⎕DMX.(Category EN)≡'Native files'65	Invalid field value
⎕DMX.(Category EN)≡'Native files'66	Field too long
⎕DMX.(Category EN)≡'Native files'67	Incorrect record length
⎕DMX.(Category EN)≡'Native files'68	Unexpected end of input
⎕DMX.(Category EN)≡'Native files'69	Invalid field format
⎕DMX.(Category EN)≡'Native files'7	Unable to manipulate file descriptor
⎕DMX.(Category EN)≡'Native files'70	Invalid number of fields
⎕DMX.(Category EN)≡'Native files'71	Non-numeric data
⎕DMX.(Category EN)≡'Native files'72	Inconsistent column count
⎕DMX.(Category EN)≡'Native files'73	Inconsistent row count
⎕DMX.(Category EN)≡'Native files'74	Invalid file or directory
⎕DMX.(Category EN)≡'Native files'75	Invalid directory
⎕DMX.(Category EN)≡'Native files'76	Unable to open file
⎕DMX.(Category EN)≡'Native files'77	Invalid file encoding definition
⎕DMX.(Category EN)≡'Native files'78	Invalid file encoding definition (contains an invalid Unicode codepoint)
⎕DMX.(Category EN)≡'Native files'79	Invalid file encoding definition (contains duplicate Unicode codepoints)
⎕DMX.(Category EN)≡'Native files'8	File already tied
⎕DMX.(Category EN)≡'Native files'80	Unable to identify the temporary directory
⎕DMX.(Category EN)≡'Native files'81	Overwrite and append options are both set
⎕DMX.(Category EN)≡'Native files'82	Unable to generate a unique file name
⎕DMX.(Category EN)≡'Native files'83	Mismatched number of source and destination names
⎕DMX.(Category EN)≡'Native files'84	Invalid source file or directory name
⎕DMX.(Category EN)≡'Native files'85	Invalid destination file or directory name
⎕DMX.(Category EN)≡'Native files'86	Not an existing directory
⎕DMX.(Category EN)≡'Native files'87	Unable to move
⎕DMX.(Category EN)≡'Native files'88	. and .. cannot be copied into an existing directory
⎕DMX.(Category EN)≡'Native files'89	. and .. cannot be moved
⎕DMX.(Category EN)≡'Native files'9	Unable to read file status
⎕DMX.(Category EN)≡'Native files'90	Unable to scan directory
⎕DMX.(Category EN)≡'Native files'91	Unable to create link
⎕DMX.(Category EN)≡'Native files'92	The field separator, field quote character and escape character must all be different
⎕DMX.(Category EN)≡'Native files'93	Unable to read directory status
⎕DMX.(Category EN)≡'Native files'94	Cannot copy a directory into itself
⎕DMX.(Category EN)≡'Native files'95	Directory depth
⎕DMX.(Category EN)≡'Numeric conversion'1	Invalid value
⎕DMX.(Category EN)≡'Numeric conversion'2	Value out of range
⎕DMX.(Category EN)≡'Numeric conversion'3	The specified array is too large for this operation
⎕DMX.(Category EN)≡'Numeric conversion'4	32-bit interpreter limit
⎕DMX.(Category EN)≡'Numeric conversion'5	Numeric value required
⎕DMX.(Category EN)≡'Numeric conversion'6	Character value required
⎕DMX.(Category EN)≡'Numeric conversion'7	Ref not allowed here
⎕DMX.(Category EN)≡'Numeric conversion'9	Boolean singleton value required
⎕DMX.(Category EN)≡'Isolates and futures'1	Future has no value
⎕DMX.(Category EN)≡'Isolates and futures'3	invalid assignment into an isolate
⎕DMX.(Category EN)≡'Isolates and futures'4	isolate function does not exist or is not valid
⎕DMX.(Category EN)≡'Internal'1	Value is false
⎕DMX.(Category EN)≡'Internal'2	Impossible conversion criteria
⎕DMX.(Category EN)≡'Internal'3	Arithmetic overflow
⎕DMX.(Category EN)≡'Internal'4	Display encountered an unexpected element type within an array
⎕DMX.(Category EN)≡'JSON conversion'1	JSON import: unexpected end of input
⎕DMX.(Category EN)≡'JSON conversion'10	JSON import: invalid object
⎕DMX.(Category EN)≡'JSON conversion'11	Output failure
⎕DMX.(Category EN)≡'JSON conversion'12	JSON export: value cannot be converted
⎕DMX.(Category EN)≡'JSON conversion'13	JSON export: invalid matrix or sub-matrix
⎕DMX.(Category EN)≡'JSON conversion'14	JSON export: level must be a non-negative integer
⎕DMX.(Category EN)≡'JSON conversion'15	JSON export: level 0 expected
⎕DMX.(Category EN)≡'JSON conversion'16	JSON export: non-zero level expected
⎕DMX.(Category EN)≡'JSON conversion'17	JSON export: level increment must be no greater than 1
⎕DMX.(Category EN)≡'JSON conversion'18	JSON export: invalid level increment
⎕DMX.(Category EN)≡'JSON conversion'19	JSON export: Name must be a character vector or scalar
⎕DMX.(Category EN)≡'JSON conversion'2	JSON import: end of input expected
⎕DMX.(Category EN)≡'JSON conversion'20	JSON export: Name not expected
⎕DMX.(Category EN)≡'JSON conversion'21	JSON export: Type must be an integer
⎕DMX.(Category EN)≡'JSON conversion'22	JSON export: invalid type
⎕DMX.(Category EN)≡'JSON conversion'23	JSON export: value does not match the specified type
⎕DMX.(Category EN)≡'JSON conversion'25	JSON export: circular namespace reference
⎕DMX.(Category EN)≡'JSON conversion'26	Invalid left argument
⎕DMX.(Category EN)≡'JSON conversion'27	JSON import: invalid name
⎕DMX.(Category EN)≡'JSON conversion'28	JSON import: duplicated name
⎕DMX.(Category EN)≡'JSON conversion'29	JSON export: tabular data is invalid
⎕DMX.(Category EN)≡'JSON conversion'3	JSON import: invalid character
⎕DMX.(Category EN)≡'JSON conversion'30	JSON export: tabular data has invalid header name(s)
⎕DMX.(Category EN)≡'JSON conversion'31	JSON export: tabular data has invalid row or column specification
⎕DMX.(Category EN)≡'JSON conversion'4	JSON import: invalid number
⎕DMX.(Category EN)≡'JSON conversion'5	JSON import: number out of range
⎕DMX.(Category EN)≡'JSON conversion'6	JSON import: invalid string
⎕DMX.(Category EN)≡'JSON conversion'7	JSON import: invalid hexadecimal digit
⎕DMX.(Category EN)≡'JSON conversion'8	JSON import: invalid UTF-16 encoding
⎕DMX.(Category EN)≡'JSON conversion'9	JSON import: invalid array
⎕DMX.(Category EN)≡'Compiler'1	Nameclass of non-local name has changed since compilation
⎕DMX.(Category EN)≡'Compiler'2	Detected bytecode from a previous version; please uncompile and recompile
⎕DMX.(Category EN)≡'Component file system'1	Tie number not in use
⎕DMX.(Category EN)≡'Component file system'10	Unable to create file
⎕DMX.(Category EN)≡'Component file system'100	Invalid compression level
⎕DMX.(Category EN)≡'Component file system'101	File type does not allow compression to be set
⎕DMX.(Category EN)≡'Component file system'102	Invalid file type whilst compression is set
⎕DMX.(Category EN)≡'Component file system'103	External variables do not support namespaces
⎕DMX.(Category EN)≡'Component file system'11	Unable to open file
⎕DMX.(Category EN)≡'Component file system'12	Not a component file (bad magic number)
⎕DMX.(Category EN)≡'Component file system'13	Not a component file (too short)
⎕DMX.(Category EN)≡'Component file system'14	Unsupported archaic file architecture
⎕DMX.(Category EN)≡'Component file system'15	Incompatible file architecture
⎕DMX.(Category EN)≡'Component file system'16	Incompatible journal detected
⎕DMX.(Category EN)≡'Component file system'17	Damaged free tree
⎕DMX.(Category EN)≡'Component file system'18	Damaged component tree
⎕DMX.(Category EN)≡'Component file system'19	FCHK was previously unable to recover this component
⎕DMX.(Category EN)≡'Component file system'2	Tie number in use
⎕DMX.(Category EN)≡'Component file system'20	Incorrect passnumber
⎕DMX.(Category EN)≡'Component file system'21	Prohibited by access matrix
⎕DMX.(Category EN)≡'Component file system'22	Unable to read file status
⎕DMX.(Category EN)≡'Component file system'23	Unable to read file header
⎕DMX.(Category EN)≡'Component file system'24	Unable to read file
⎕DMX.(Category EN)≡'Component file system'27	Invalid length in component header
⎕DMX.(Category EN)≡'Component file system'28	Write access required for exclusive tie
⎕DMX.(Category EN)≡'Component file system'29	Write access required - journal present
⎕DMX.(Category EN)≡'Component file system'3	Invalid tie number
⎕DMX.(Category EN)≡'Component file system'30	Write access required - file needs to be converted
⎕DMX.(Category EN)≡'Component file system'31	File must be exclusively tied to adjust file header structure
⎕DMX.(Category EN)≡'Component file system'32	Unable to write component data
⎕DMX.(Category EN)≡'Component file system'33	File size limit reached
⎕DMX.(Category EN)≡'Component file system'34	Unable to free space within file
⎕DMX.(Category EN)≡'Component file system'36	Insufficient space in file
⎕DMX.(Category EN)≡'Component file system'37	Unable to delete file
⎕DMX.(Category EN)≡'Component file system'38	Cannot exceed maximum component number
⎕DMX.(Category EN)≡'Component file system'39	Unable to rename file
⎕DMX.(Category EN)≡'Component file system'4	File already tied
⎕DMX.(Category EN)≡'Component file system'40	Unable to read one or more components whilst adding checksums
⎕DMX.(Category EN)≡'Component file system'41	Unable to write journal
⎕DMX.(Category EN)≡'Component file system'42	Unable to manipulate file descriptor
⎕DMX.(Category EN)≡'Component file system'43	Unable to lock file
⎕DMX.(Category EN)≡'Component file system'44	Unable to seek in file
⎕DMX.(Category EN)≡'Component file system'45	Unable to checksum - invalid block length
⎕DMX.(Category EN)≡'Component file system'46	Invalid left argument
⎕DMX.(Category EN)≡'Component file system'47	Invalid right argument
⎕DMX.(Category EN)≡'Component file system'48	Invalid filename
⎕DMX.(Category EN)≡'Component file system'49	Invalid component number
⎕DMX.(Category EN)≡'Component file system'5	Too many tied files
⎕DMX.(Category EN)≡'Component file system'50	No such component
⎕DMX.(Category EN)≡'Component file system'51	Too few components in file
⎕DMX.(Category EN)≡'Component file system'52	File name mismatch
⎕DMX.(Category EN)≡'Component file system'53	Invalid passnumber
⎕DMX.(Category EN)≡'Component file system'54	The 'concurrent' option must only be used for validation
⎕DMX.(Category EN)≡'Component file system'55	File not checksummed
⎕DMX.(Category EN)≡'Component file system'56	Invalid file size
⎕DMX.(Category EN)≡'Component file system'57	Option invalid with small span files
⎕DMX.(Category EN)≡'Component file system'58	Component too big for a small span file
⎕DMX.(Category EN)≡'Component file system'59	One or more components would become too big for a small span file
⎕DMX.(Category EN)≡'Component file system'6	File must be exclusively tied
⎕DMX.(Category EN)≡'Component file system'60	Duplicated option
⎕DMX.(Category EN)≡'Component file system'61	Invalid option
⎕DMX.(Category EN)≡'Component file system'62	Invalid option value
⎕DMX.(Category EN)≡'Component file system'63	Invalid journaling level
⎕DMX.(Category EN)≡'Component file system'64	Selected journaling level requires checksumming
⎕DMX.(Category EN)≡'Component file system'65	Invalid checksumming level
⎕DMX.(Category EN)≡'Component file system'66	File too big
⎕DMX.(Category EN)≡'Component file system'67	File name buffer overflow
⎕DMX.(Category EN)≡'Component file system'68	Unable to compact file
⎕DMX.(Category EN)≡'Component file system'69	Component checksum mismatch
⎕DMX.(Category EN)≡'Component file system'7	File opened read-only
⎕DMX.(Category EN)≡'Component file system'70	User number override active: no access to other user's files
⎕DMX.(Category EN)≡'Component file system'71	Invalid access matrix specification
⎕DMX.(Category EN)≡'Component file system'72	File is read only due to an architectural conflict but write access is required for exclusive access
⎕DMX.(Category EN)≡'Component file system'73	A name in the directory is too long
⎕DMX.(Category EN)≡'Component file system'76	File error - invalid value in access matrix
⎕DMX.(Category EN)≡'Component file system'77	Property name(s) or name/value pair(s) expected in left argument
⎕DMX.(Category EN)≡'Component file system'78	Invalid property name
⎕DMX.(Category EN)≡'Component file system'79	Invalid property value
⎕DMX.(Category EN)≡'Component file system'8	File opened read-only because of the file architecture
⎕DMX.(Category EN)≡'Component file system'80	Duplicated property setting
⎕DMX.(Category EN)≡'Component file system'81	Filename and optional file size limit expected in left argument
⎕DMX.(Category EN)≡'Component file system'83	Tie numbers or two-row matrix of tie numbers and passnumbers expected in right argument
⎕DMX.(Category EN)≡'Component file system'84	Tie number and optional passnumber expected in right argument
⎕DMX.(Category EN)≡'Component file system'85	Tie number and optional address size expected in right argument
⎕DMX.(Category EN)≡'Component file system'86	Tie number, component number and optional passnumber expected in right argument
⎕DMX.(Category EN)≡'Component file system'87	Tie number, component count and optional passnumber expected in right argument
⎕DMX.(Category EN)≡'Component file system'88	Invalid span size
⎕DMX.(Category EN)≡'Component file system'89	Invalid component count
⎕DMX.(Category EN)≡'Component file system'9	File exists
⎕DMX.(Category EN)≡'Component file system'90	Not a component file (nascent)
⎕DMX.(Category EN)≡'Component file system'91	Component file does not support transactions
⎕DMX.(Category EN)≡'Component file system'92	Operation disallowed whilst a transaction is taking place
⎕DMX.(Category EN)≡'Component file system'93	Transactioning only supported in 64-bit, journaled and checksummed component files
⎕DMX.(Category EN)≡'Component file system'94	No transaction ID is set
⎕DMX.(Category EN)≡'Component file system'95	File still contains data from transaction which should be removed by the server
⎕DMX.(Category EN)≡'Component file system'96	File must be tied in 'Frozen' mode
⎕DMX.(Category EN)≡'Component file system'97	Unsupported transaction type
⎕DMX.(Category EN)≡'Component file system'98	Small-span files are read-only; ⎕FCOPY can create a writable large-span copy
⎕DMX.(Category EN)≡'Component file system'99	Invalid transaction level
⎕DMX.(Category EN)≡'Core to aplcore conversion'1	Invalid workspace address in core
⎕DMX.(Category EN)≡'Core to aplcore conversion'10	Cannot extract workspace information
⎕DMX.(Category EN)≡'Core to aplcore conversion'11	Failed to completely write the new aplcore
⎕DMX.(Category EN)≡'Core to aplcore conversion'12	Operation not allowed in post-mortem mode
⎕DMX.(Category EN)≡'Core to aplcore conversion'13	Core too aplcore not supported for this version
⎕DMX.(Category EN)≡'Core to aplcore conversion'14	Conversion of 32 bit core using 64 bit APL not supported
⎕DMX.(Category EN)≡'Core to aplcore conversion'2	Workspace structure in core has wrong length
⎕DMX.(Category EN)≡'Core to aplcore conversion'3	Conversion of 64 bit core using 32 bit APL not supported
⎕DMX.(Category EN)≡'Core to aplcore conversion'4	Problem with left argument
⎕DMX.(Category EN)≡'Core to aplcore conversion'5	Problem with right argument
⎕DMX.(Category EN)≡'Core to aplcore conversion'6	Core file is empty
⎕DMX.(Category EN)≡'Core to aplcore conversion'7	Not enough address space to map core file
⎕DMX.(Category EN)≡'Core to aplcore conversion'8	Not a proper core file
⎕DMX.(Category EN)≡'Core to aplcore conversion'9	Core does not contain Dyalog's own address block
⎕DMX.(Category EN)≡'Data binding'1	Binding types cannot be redefined
⎕DMX.(Category EN)≡'Data binding'2	The variable's name is too long
⎕DMX.(Category EN)≡'Data binding'3	Cannot change rank of a databound array
⎕DMX.(Category EN)≡'Data binding'4	Cannot change the number of columns in a databound matrix
⎕DMX.(Category EN)≡'Data binding'5	Cannot databind to an array with rank greater than two
⎕DMX.(Category EN)≡'Data compression'1	Invalid left argument
⎕DMX.(Category EN)≡'Data compression'10	Invalid compression level
⎕DMX.(Category EN)≡'Data compression'11	Unable to decompress the source of a scripted object
⎕DMX.(Category EN)≡'Data compression'2	Invalid compression library
⎕DMX.(Category EN)≡'Data compression'3	Compression level cannot be specified for this compression library
⎕DMX.(Category EN)≡'Data compression'4	Data too long for selected compressor
⎕DMX.(Category EN)≡'Data compression'5	Invalid right argument
⎕DMX.(Category EN)≡'Data compression'6	Invalid compressed data
⎕DMX.(Category EN)≡'Data compression'7	Invalid compressed data and/or mismatched left argument
⎕DMX.(Category EN)≡'Data compression'8	Compression library ran out of memory
⎕DMX.(Category EN)≡'Data compression'9	Compression library reported an unexpected error
⎕DMX.(Category EN)≡'Data exchange'1	Array was created by a later version of the interpreter and cannot be processed
⎕DMX.(Category EN)≡'Data exchange'10	DECF will not fit into a double
⎕DMX.(Category EN)≡'Data exchange'11	Function is too old to convert with this version of APL
⎕DMX.(Category EN)≡'Data exchange'12	Object oriented namespace cannot be serialised
⎕DMX.(Category EN)≡'Data exchange'13	GUI Object cannot be serialised
⎕DMX.(Category EN)≡'Data exchange'14	Cannot send or receive complex arrays because APL_COMPLEX_AS_V12 is set
⎕DMX.(Category EN)≡'Data exchange'2	Read function terminated early. End of file
⎕DMX.(Category EN)≡'Data exchange'3	Read function returned error
⎕DMX.(Category EN)≡'Data exchange'4	Write function terminated early
⎕DMX.(Category EN)≡'Data exchange'5	Write function returned error
⎕DMX.(Category EN)≡'Data exchange'6	Array cannot be serialised
⎕DMX.(Category EN)≡'Data exchange'7	Incoming array is invalid
⎕DMX.(Category EN)≡'Data exchange'8	Namespace is not self contained
⎕DMX.(Category EN)≡'Data exchange'9	Attempt to pass complex array
⎕DMX.(Category EN)≡'Development environment'1	The editor can only be used within a Session
⎕DMX.(Category EN)≡'External workspace'1	Not supported on 32 bit or Classic Editions
⎕DMX.(Category EN)≡'External workspace'10	Failed to unload one or more existing files
⎕DMX.(Category EN)≡'External workspace'11	List of names contains invalid name
⎕DMX.(Category EN)≡'External workspace'12	List of names can be a vector of vectors or a matrix
⎕DMX.(Category EN)≡'External workspace'13	List of names must be character
⎕DMX.(Category EN)≡'External workspace'14	Cannot obtain memory statistics from operating system
⎕DMX.(Category EN)≡'External workspace'15	Operating system has provided more information than can be processed
⎕DMX.(Category EN)≡'External workspace'16	External workspace unusable
⎕DMX.(Category EN)≡'External workspace'17	External workspace failed to load: unsuitable address
⎕DMX.(Category EN)≡'External workspace'18	External workspace failed to map
⎕DMX.(Category EN)≡'External workspace'19	Different external workspace already loaded
⎕DMX.(Category EN)≡'External workspace'3	Unexpected data
⎕DMX.(Category EN)≡'External workspace'4	Filename should be a vector
⎕DMX.(Category EN)≡'External workspace'5	Left argument should be a slot identifier
⎕DMX.(Category EN)≡'External workspace'6	When used monadically the right argument must be an empty vector
⎕DMX.(Category EN)≡'External workspace'7	Right argument should be a slot identifier and a file name
⎕DMX.(Category EN)≡'External workspace'8	Right argument should be a vector of file names
⎕DMX.(Category EN)≡'External workspace'9	More filenames than are supported
⎕DMX.(Category EN)≡'Externalise data'1	Namespace/object references are not allowed
⎕DMX.(Category EN)≡'File Watcher functions'1	No support
⎕DMX.(Category EN)≡'File Watcher functions'2	Can't watch this path
⎕DMX.(Category EN)≡'File Watcher functions'3	Can't unwatch this
⎕DMX.(Category EN)≡'File mapping'1	Cannot map file
⎕DMX.(Category EN)≡'File mapping'10	Shape needs to be fully specified
⎕DMX.(Category EN)≡'File mapping'11	File name must be a  character vector
⎕DMX.(Category EN)≡'File mapping'12	Right argument must be a vector
⎕DMX.(Category EN)≡'File mapping'13	Right argument has too many elements
⎕DMX.(Category EN)≡'File mapping'14	Access code must be 'R' or 'W'
⎕DMX.(Category EN)≡'File mapping'15	Offset must be numeric and a multiple of page size
⎕DMX.(Category EN)≡'File mapping'16	Offset with 'W' not supported
⎕DMX.(Category EN)≡'File mapping'17	Offset alignment must be a multiple of the word size (8 on 64 bit versions)
⎕DMX.(Category EN)≡'File mapping'18	Offset exceeds file size
⎕DMX.(Category EN)≡'File mapping'19	Left argument must have 1 to 16 elements
⎕DMX.(Category EN)≡'File mapping'2	GetFileSizeEx() failed
⎕DMX.(Category EN)≡'File mapping'20	Only one undefined shape element allowed in left argument
⎕DMX.(Category EN)≡'File mapping'3	File too big
⎕DMX.(Category EN)≡'File mapping'4	File too small
⎕DMX.(Category EN)≡'File mapping'5	Too many Boolean elements
⎕DMX.(Category EN)≡'File mapping'6	Cannot unmap file
⎕DMX.(Category EN)≡'File mapping'7	Cannot map pages
⎕DMX.(Category EN)≡'File mapping'8	Cannot synchronise file
⎕DMX.(Category EN)≡'File mapping'9	Flushing file to disk failed
⎕DMX.(Category EN)≡'GUI'10	This property cannot be set on this type of object
⎕DMX.(Category EN)≡'GUI'11	The object name is too long
⎕DMX.(Category EN)≡'GUI'12	The event contains an invalid object or event name
⎕DMX.(Category EN)≡'GUI'13	The object could not be created
⎕DMX.(Category EN)≡'GUI'14	An incompatible comctl32.dll is loaded
⎕DMX.(Category EN)≡'GUI'15	The specified file is of the wrong type
⎕DMX.(Category EN)≡'GUI'16	MDI child limit reached
⎕DMX.(Category EN)≡'GUI'17	VScroll and HScroll must be between 0 and -3, depending on object type
⎕DMX.(Category EN)≡'GUI'18	Cannot clone a namespace with a GUI component
⎕DMX.(Category EN)≡'GUI'19	Cannot exclusively lock the clipboard
⎕DMX.(Category EN)≡'GUI'2	There was an error processing a property of the right argument
⎕DMX.(Category EN)≡'GUI'3	Font specifier must be a character scalar or vector or an object reference
⎕DMX.(Category EN)≡'GUI'4	RTFText must be a vector of 8 bit characters
⎕DMX.(Category EN)≡'GUI'5	⎕DQ can only process objects created on the same thread
⎕DMX.(Category EN)≡'GUI'6	Invalid property name
⎕DMX.(Category EN)≡'GUI'7	Invalid argument passed: character array expected
⎕DMX.(Category EN)≡'GUI'8	Invalid argument passed: numeric value or ICON object expected
⎕DMX.(Category EN)≡'GUI'9	This object cannot be saved to this type of file
⎕DMX.(Category EN)≡'General'1	Divide by zero
⎕DMX.(Category EN)≡'General'10	Unexpected name in signalled ⎕DMX specification
⎕DMX.(Category EN)≡'General'100	Unpaired syntactic element
⎕DMX.(Category EN)≡'General'101	⎕FR=645 limits arithmetic to the range +/-1.79E308 (approx)
⎕DMX.(Category EN)≡'General'102	Where right argument must be integer
⎕DMX.(Category EN)≡'General'11	Duplicate name in signalled ⎕DMX specification
⎕DMX.(Category EN)≡'General'12	Unexpected value in signalled ⎕DMX specification
⎕DMX.(Category EN)≡'General'13	Incorrect ⎕DMX specification format
⎕DMX.(Category EN)≡'General'14	Cannot provide a left argument with the given right argument
⎕DMX.(Category EN)≡'General'15	A signalled message must be a character vector or scalar
⎕DMX.(Category EN)≡'General'16	The selected random number generator is not implemented on this platform
⎕DMX.(Category EN)≡'General'17	Roll right argument must consist of non-negative integer(s)
⎕DMX.(Category EN)≡'General'18	Deal left argument must be non-negative
⎕DMX.(Category EN)≡'General'19	Deal right argument must be greater than or equal to the left argument
⎕DMX.(Category EN)≡'General'2	Invalid use of variant
⎕DMX.(Category EN)≡'General'20	The selected random number generator does not produce a sufficient range of values
⎕DMX.(Category EN)≡'General'21	Invalid random number generator selected
⎕DMX.(Category EN)≡'General'22	No result was provided when the context expected one
⎕DMX.(Category EN)≡'General'23	The function requires a left argument
⎕DMX.(Category EN)≡'General'24	The function does not take a left argument
⎕DMX.(Category EN)≡'General'25	Invalid use of variant: bad option value
⎕DMX.(Category EN)≡'General'26	An error occurred creating the ⎕DMX information
⎕DMX.(Category EN)≡'General'27	Deal right argument must be non-negative
⎕DMX.(Category EN)≡'General'28	Cannot :Hold within a high priority callback
⎕DMX.(Category EN)≡'General'29	Cannot TSYNC within a high priority callback
⎕DMX.(Category EN)≡'General'3	Out of memory
⎕DMX.(Category EN)≡'General'30	Cannot fork with more than one APL thread
⎕DMX.(Category EN)≡'General'31	Unable to format result
⎕DMX.(Category EN)≡'General'32	Argument must be single
⎕DMX.(Category EN)≡'General'33	Argument must be positive
⎕DMX.(Category EN)≡'General'34	Argument must be a symbol name
⎕DMX.(Category EN)≡'General'35	External function no longer exists
⎕DMX.(Category EN)≡'General'36	Unicode character not in ⎕AVU
⎕DMX.(Category EN)≡'General'39	Repeated axis
⎕DMX.(Category EN)≡'General'4	Not supported on this platform
⎕DMX.(Category EN)≡'General'40	Function tree too deep or contains cycle
⎕DMX.(Category EN)≡'General'41	Invalid left argument
⎕DMX.(Category EN)≡'General'42	Invalid right argument
⎕DMX.(Category EN)≡'General'43	Invalid axis
⎕DMX.(Category EN)≡'General'44	Missing right argument
⎕DMX.(Category EN)≡'General'45	Invalid date/time
⎕DMX.(Category EN)≡'General'46	Rank of resultant array would exceed maximum permitted
⎕DMX.(Category EN)≡'General'47	Execute did not return a result
⎕DMX.(Category EN)≡'General'48	Argument must be non-empty
⎕DMX.(Category EN)≡'General'49	Left argument must be non-empty
⎕DMX.(Category EN)≡'General'5	Invalid I-Beam function selection
⎕DMX.(Category EN)≡'General'50	Right argument must be non-empty
⎕DMX.(Category EN)≡'General'51	The CPU does not have the required SSE instructions
⎕DMX.(Category EN)≡'General'52	It must be that either the left and right frames match or one of them has length 0
⎕DMX.(Category EN)≡'General'53	File name is too long
⎕DMX.(Category EN)≡'General'54	Use of Interface is inappropriate
⎕DMX.(Category EN)≡'General'55	Use of Instance is inappropriate
⎕DMX.(Category EN)≡'General'56	Use of ⎕SE is inappropriate
⎕DMX.(Category EN)≡'General'57	Use of # is inappropriate
⎕DMX.(Category EN)≡'General'58	Use of ⎕DM is inappropriate
⎕DMX.(Category EN)≡'General'59	Argument type only supported for Classic versions
⎕DMX.(Category EN)≡'General'6	Can't change nameclass on assignment
⎕DMX.(Category EN)≡'General'60	I-Beam function has been withdrawn
⎕DMX.(Category EN)≡'General'61	I-Beam function is not supported by this interpreter
⎕DMX.(Category EN)≡'General'62	Operation cannot be completed with an "external" call on the stack
⎕DMX.(Category EN)≡'General'63	Command interpreter failed to start
⎕DMX.(Category EN)≡'General'64	Output truncated: line too long
⎕DMX.(Category EN)≡'General'65	Command interpreter failed to execute command
⎕DMX.(Category EN)≡'General'66	Command interpreter returned failure code
⎕DMX.(Category EN)≡'General'67	⎕RL indexed and selective assignment is not permitted
⎕DMX.(Category EN)≡'General'68	Invalid UTF-8 sequence
⎕DMX.(Category EN)≡'General'69	The program could not be created
⎕DMX.(Category EN)≡'General'7	Invalid modified assignment, or an attempt was made to change nameclass on assignment
⎕DMX.(Category EN)≡'General'70	The name is too long
⎕DMX.(Category EN)≡'General'71	Right operand: no result
⎕DMX.(Category EN)≡'General'72	Right operand: not Boolean
⎕DMX.(Category EN)≡'General'73	Right operand and argument ranks differ
⎕DMX.(Category EN)≡'General'74	Right operand and argument lengths differ
⎕DMX.(Category EN)≡'General'75	Array left argument conflicts with array left operand
⎕DMX.(Category EN)≡'General'77	Right operand rank too high
⎕DMX.(Category EN)≡'General'78	Unable to generate an initial random value because the system RNG is not available; ⎕RL must be set to provide an initial seed value
⎕DMX.(Category EN)≡'General'79	Left argument must be less than 2147483.648 seconds (2*31 milliseconds)
⎕DMX.(Category EN)≡'General'8	Invalid seed value
⎕DMX.(Category EN)≡'General'80	There is not enough space in the buffer. Increase the setting
⎕DMX.(Category EN)≡'General'81	Mismatched left and right argument lengths
⎕DMX.(Category EN)≡'General'82	Mismatched left and right argument shapes
⎕DMX.(Category EN)≡'General'83	Unmatched control structure
⎕DMX.(Category EN)≡'General'84	Unmatched {}
⎕DMX.(Category EN)≡'General'85	Undefined name
⎕DMX.(Category EN)≡'General'86	Mismatched left and right argument ranks
⎕DMX.(Category EN)≡'General'87	Cannot wait for an isolate within a high priority callback
⎕DMX.(Category EN)≡'General'88	Left argument must be sorted ascending
⎕DMX.(Category EN)≡'General'89	Invalid syntactic element
⎕DMX.(Category EN)≡'General'9	Invalid error number for signal
⎕DMX.(Category EN)≡'General'90	Invalid token
⎕DMX.(Category EN)≡'General'91	Right argument must be a vector of correct length
⎕DMX.(Category EN)≡'General'92	Where right argument must be non-negative
⎕DMX.(Category EN)≡'General'99	Invalid: The function may need to be refixed
⎕DMX.(Category EN)≡'Load and save'1	Windows are open
⎕DMX.(Category EN)≡'Load and save'10	Session namespace is referenced by #
⎕DMX.(Category EN)≡'Load and save'11	Active calls to or from external functions or certain callbacks are present
⎕DMX.(Category EN)≡'Load and save'12	There are pendent compiled functions
⎕DMX.(Category EN)≡'Load and save'13	An external workspace is present
⎕DMX.(Category EN)≡'Load and save'14	File exists
⎕DMX.(Category EN)≡'Load and save'15	File exists and is not a workspace or session file
⎕DMX.(Category EN)≡'Load and save'16	File could not be created
⎕DMX.(Category EN)≡'Load and save'17	Open file limit has been reached
⎕DMX.(Category EN)≡'Load and save'18	Write failed
⎕DMX.(Category EN)≡'Load and save'19	Workspace not found
⎕DMX.(Category EN)≡'Load and save'2	Variables are shared
⎕DMX.(Category EN)≡'Load and save'20	Not a workspace
⎕DMX.(Category EN)≡'Load and save'21	Workspace too large
⎕DMX.(Category EN)≡'Load and save'22	A session object is connected to a shared or external variable
⎕DMX.(Category EN)≡'Load and save'23	Insufficient resources
⎕DMX.(Category EN)≡'Load and save'24	Workspace generated by a later version of the interpreter
⎕DMX.(Category EN)≡'Load and save'25	Cannot load a Conference Edition workspace
⎕DMX.(Category EN)≡'Load and save'27	Only aplcores/dumps generated by the same architecture can be loaded
⎕DMX.(Category EN)≡'Load and save'3	Connection exists to an external object in session namespace
⎕DMX.(Category EN)≡'Load and save'30	⎕DM references session namespace
⎕DMX.(Category EN)≡'Load and save'33	Post-mortem workspace is loaded
⎕DMX.(Category EN)≡'Load and save'34	Cannot attempt to load a new workspace over a post-mortem workspace
⎕DMX.(Category EN)≡'Load and save'35	Workspace cannot be saved in post-mortem mode
⎕DMX.(Category EN)≡'Load and save'36	External workspace already exists
⎕DMX.(Category EN)≡'Load and save'38	Load failed
⎕DMX.(Category EN)≡'Load and save'39	Name not found
⎕DMX.(Category EN)≡'Load and save'4	In session namespace
⎕DMX.(Category EN)≡'Load and save'40	Name not copied
⎕DMX.(Category EN)≡'Load and save'41	Workspace predates version 11.0
⎕DMX.(Category EN)≡'Load and save'42	Workspace references externalised data
⎕DMX.(Category EN)≡'Load and save'43	64-bit version is needed to load this workspace
⎕DMX.(Category EN)≡'Load and save'44	Workspace contains an unsupported execution stack
⎕DMX.(Category EN)≡'Load and save'5	State indicator contains a session namespace
⎕DMX.(Category EN)≡'Load and save'6	OLE clients are attached
⎕DMX.(Category EN)≡'Load and save'7	Threads are running
⎕DMX.(Category EN)≡'Load and save'8	Mapped files are present
⎕DMX.(Category EN)≡'Load and save'9	# is referenced by session namespace
⎕DMX.(Category EN)≡'OLE'10	This property can only be accessed with indexers
⎕DMX.(Category EN)≡'OLE'11	There is no IUnknown available from the server
⎕DMX.(Category EN)≡'OLE'12	Cannot set a readonly property
⎕DMX.(Category EN)≡'OLE'13	Cannot convert argument type
⎕DMX.(Category EN)≡'OLE'14	The call to the object succeeded but an error occurred saving the result in the workspace
⎕DMX.(Category EN)≡'OLE'2	The CLSID is not in a valid format
⎕DMX.(Category EN)≡'OLE'3	Cannot resolve name to a CLSID
⎕DMX.(Category EN)≡'OLE'4	There is no class factory for the server
⎕DMX.(Category EN)≡'OLE'5	There is no type library for the server
⎕DMX.(Category EN)≡'OLE'6	There is no running instance of the server
⎕DMX.(Category EN)≡'OLE'7	There is no IDispatch available from the server
⎕DMX.(Category EN)≡'OLE'8	There is not enough memory
⎕DMX.(Category EN)≡'OLE'9	There was a problem creating the object
⎕DMX.(Category EN)≡'Object oriented programming'1	Access error
⎕DMX.(Category EN)≡'Object oriented programming'10	field values must be a name-value matrix
⎕DMX.(Category EN)≡'Object oriented programming'100	a private function cannot be defined in an interface
⎕DMX.(Category EN)≡'Object oriented programming'101	:Include can only be used in a class definition
⎕DMX.(Category EN)≡'Object oriented programming'102	diamonds are not permitted in this expression
⎕DMX.(Category EN)≡'Object oriented programming'103	this name or class is not permitted here
⎕DMX.(Category EN)≡'Object oriented programming'104	a dfn cannot be declared within dels
⎕DMX.(Category EN)≡'Object oriented programming'105	recursive class definition detected
⎕DMX.(Category EN)≡'Object oriented programming'106	too many Implements keywords detected
⎕DMX.(Category EN)≡'Object oriented programming'107	this function needs to take an argument
⎕DMX.(Category EN)≡'Object oriented programming'108	:Access is not permitted in this function
⎕DMX.(Category EN)≡'Object oriented programming'109	unbalanced quotes detected
⎕DMX.(Category EN)≡'Object oriented programming'11	a type must be specified
⎕DMX.(Category EN)≡'Object oriented programming'110	interface method has not been implemented
⎕DMX.(Category EN)≡'Object oriented programming'111	the included function has an invalid :Signature statement
⎕DMX.(Category EN)≡'Object oriented programming'112	the included function has an invalid :Implements statement
⎕DMX.(Category EN)≡'Object oriented programming'113	the line is too long
⎕DMX.(Category EN)≡'Object oriented programming'114	override or overridable is not permitted in a shared function
⎕DMX.(Category EN)≡'Object oriented programming'115	fix was cancelled by user
⎕DMX.(Category EN)≡'Object oriented programming'116	cannot read required file
⎕DMX.(Category EN)≡'Object oriented programming'117	:Require not permitted at this location
⎕DMX.(Category EN)≡'Object oriented programming'118	name already has a value, and cannot be overwritten by :Require
⎕DMX.(Category EN)≡'Object oriented programming'119	assignment is not permitted in a :Required file
⎕DMX.(Category EN)≡'Object oriented programming'12	invalid character
⎕DMX.(Category EN)≡'Object oriented programming'120	assignment is not permitted outside of a :Class or :Namespace
⎕DMX.(Category EN)≡'Object oriented programming'121	unnamed namespaces are not permitted when fixing multiple objects
⎕DMX.(Category EN)≡'Object oriented programming'122	cannot terminate this definition with :EndSection
⎕DMX.(Category EN)≡'Object oriented programming'123	Class was not successfully fixed
⎕DMX.(Category EN)≡'Object oriented programming'124	Base class has not been resolved
⎕DMX.(Category EN)≡'Object oriented programming'125	Include has not been resolved
⎕DMX.(Category EN)≡'Object oriented programming'126	Invalid :Using expression
⎕DMX.(Category EN)≡'Object oriented programming'13	invalid statement for return type
⎕DMX.(Category EN)≡'Object oriented programming'14	return type not specified
⎕DMX.(Category EN)≡'Object oriented programming'15	bad access type
⎕DMX.(Category EN)≡'Object oriented programming'16	bad implements type
⎕DMX.(Category EN)≡'Object oriented programming'17	invalid property name[s]
⎕DMX.(Category EN)≡'Object oriented programming'18	base class is not a class
⎕DMX.(Category EN)≡'Object oriented programming'19	base class is sealed
⎕DMX.(Category EN)≡'Object oriented programming'2	There were errors processing the script
⎕DMX.(Category EN)≡'Object oriented programming'20	: base expected
⎕DMX.(Category EN)≡'Object oriented programming'21	conflicting attributes given
⎕DMX.(Category EN)≡'Object oriented programming'22	invalid trigger target name[s]
⎕DMX.(Category EN)≡'Object oriented programming'23	declared interface member not found. Either the member does not exist or the function syntax is incompatible
⎕DMX.(Category EN)≡'Object oriented programming'24	no acceptable method to override. Either the method does not exist or the function syntax is incompatible
⎕DMX.(Category EN)≡'Object oriented programming'25	:Returns is no longer supported. Use :Signature instead
⎕DMX.(Category EN)≡'Object oriented programming'26	:ParameterList is no longer supported. Use :Signature instead
⎕DMX.(Category EN)≡'Object oriented programming'27	invalid name list
⎕DMX.(Category EN)≡'Object oriented programming'28	cannot find type
⎕DMX.(Category EN)≡'Object oriented programming'29	invalid interface name
⎕DMX.(Category EN)≡'Object oriented programming'3	No matching constructor
⎕DMX.(Category EN)≡'Object oriented programming'30	invalid base class or interface declaration
⎕DMX.(Category EN)≡'Object oriented programming'31	only interfaces can be declared after the base class
⎕DMX.(Category EN)≡'Object oriented programming'32	recursive class definitions not permitted
⎕DMX.(Category EN)≡'Object oriented programming'33	invalid GUI base class specified
⎕DMX.(Category EN)≡'Object oriented programming'34	duplicate access statements not permitted
⎕DMX.(Category EN)≡'Object oriented programming'35	duplicate implements statements not permitted
⎕DMX.(Category EN)≡'Object oriented programming'36	unexpected access statement encountered
⎕DMX.(Category EN)≡'Object oriented programming'37	unrecognised keyword encountered
⎕DMX.(Category EN)≡'Object oriented programming'38	statement not permitted in an interface
⎕DMX.(Category EN)≡'Object oriented programming'39	name already has a value
⎕DMX.(Category EN)≡'Object oriented programming'4	attribute target must be ended with ">"
⎕DMX.(Category EN)≡'Object oriented programming'40	could not fix function
⎕DMX.(Category EN)≡'Object oriented programming'41	implementation in an interface is not allowed
⎕DMX.(Category EN)≡'Object oriented programming'42	function not terminated
⎕DMX.(Category EN)≡'Object oriented programming'43	error initializing field
⎕DMX.(Category EN)≡'Object oriented programming'44	a field must have a name
⎕DMX.(Category EN)≡'Object oriented programming'45	only initializer available after field name
⎕DMX.(Category EN)≡'Object oriented programming'46	an event must have a name
⎕DMX.(Category EN)≡'Object oriented programming'47	invalid property function header
⎕DMX.(Category EN)≡'Object oriented programming'48	invalid or empty property declaration
⎕DMX.(Category EN)≡'Object oriented programming'49	property not terminated
⎕DMX.(Category EN)≡'Object oriented programming'5	attribute target must be named
⎕DMX.(Category EN)≡'Object oriented programming'50	duplicate property type specified
⎕DMX.(Category EN)≡'Object oriented programming'51	contradictory property type specified
⎕DMX.(Category EN)≡'Object oriented programming'52	unrecognized property type
⎕DMX.(Category EN)≡'Object oriented programming'53	a property must have a name
⎕DMX.(Category EN)≡'Object oriented programming'54	filename must be enclosed in double quotes
⎕DMX.(Category EN)≡'Object oriented programming'55	unrecognised pragma
⎕DMX.(Category EN)≡'Object oriented programming'56	line pragma must include line number
⎕DMX.(Category EN)≡'Object oriented programming'57	line end pragma must include line count
⎕DMX.(Category EN)≡'Object oriented programming'58	filename not given in line pragma
⎕DMX.(Category EN)≡'Object oriented programming'59	include target can only be a namespace
⎕DMX.(Category EN)≡'Object oriented programming'6	invalid sub-target for attribute
⎕DMX.(Category EN)≡'Object oriented programming'60	include overwrites existing name.
⎕DMX.(Category EN)≡'Object oriented programming'61	no include target specified
⎕DMX.(Category EN)≡'Object oriented programming'62	statement not expected at this location
⎕DMX.(Category EN)≡'Object oriented programming'63	:Using or :Access must appear before all other statements in a class definition
⎕DMX.(Category EN)≡'Object oriented programming'64	statements are not permitted outside of a definition
⎕DMX.(Category EN)≡'Object oriented programming'65	item not permitted in an interface
⎕DMX.(Category EN)≡'Object oriented programming'66	this function cannot return a result
⎕DMX.(Category EN)≡'Object oriented programming'67	this function cannot take a left argument
⎕DMX.(Category EN)≡'Object oriented programming'68	this function cannot take an argument
⎕DMX.(Category EN)≡'Object oriented programming'69	a destructor cannot be public
⎕DMX.(Category EN)≡'Object oriented programming'7	attribute Type must be specified
⎕DMX.(Category EN)≡'Object oriented programming'70	a constructor cannot be private
⎕DMX.(Category EN)≡'Object oriented programming'71	a constructor cannot be shared
⎕DMX.(Category EN)≡'Object oriented programming'72	a destructor cannot be shared
⎕DMX.(Category EN)≡'Object oriented programming'73	public operators are not permitted
⎕DMX.(Category EN)≡'Object oriented programming'74	cannot terminate this definition with :EndNamespace
⎕DMX.(Category EN)≡'Object oriented programming'75	cannot terminate this definition with :EndClass
⎕DMX.(Category EN)≡'Object oriented programming'76	cannot terminate this definition with :EndInterface
⎕DMX.(Category EN)≡'Object oriented programming'77	cannot terminate this definition with :End
⎕DMX.(Category EN)≡'Object oriented programming'78	incomplete :Property declaration
⎕DMX.(Category EN)≡'Object oriented programming'79	only a Class can contain a field
⎕DMX.(Category EN)≡'Object oriented programming'8	error executing line
⎕DMX.(Category EN)≡'Object oriented programming'80	bad value for a field
⎕DMX.(Category EN)≡'Object oriented programming'81	:Access types can only be specified once
⎕DMX.(Category EN)≡'Object oriented programming'82	invalid :Access for a class
⎕DMX.(Category EN)≡'Object oriented programming'83	namespace, class, or interface not terminated
⎕DMX.(Category EN)≡'Object oriented programming'84	mismatched dels in definition
⎕DMX.(Category EN)≡'Object oriented programming'85	further statements not permitted
⎕DMX.(Category EN)≡'Object oriented programming'86	all line pragmas must refer to the same file
⎕DMX.(Category EN)≡'Object oriented programming'87	incomplete line pragma
⎕DMX.(Category EN)≡'Object oriented programming'88	an empty field initializer was encountered
⎕DMX.(Category EN)≡'Object oriented programming'89	a nested class cannot be unnamed
⎕DMX.(Category EN)≡'Object oriented programming'9	error retrieving field values
⎕DMX.(Category EN)≡'Object oriented programming'90	there must be white space between : and class name
⎕DMX.(Category EN)≡'Object oriented programming'91	invalid array specification
⎕DMX.(Category EN)≡'Object oriented programming'92	a namespace is not permitted at this location
⎕DMX.(Category EN)≡'Object oriented programming'93	a private class cannot be used in a signature
⎕DMX.(Category EN)≡'Object oriented programming'94	specified interface is not implemented
⎕DMX.(Category EN)≡'Object oriented programming'95	a property then implements an interface property can only define one property
⎕DMX.(Category EN)≡'Object oriented programming'96	a default property can only implement one named property
⎕DMX.(Category EN)≡'Object oriented programming'97	this property type should not implement a "shape" function
⎕DMX.(Category EN)≡'Object oriented programming'98	this property type must implement a "shape" function
⎕DMX.(Category EN)≡'Object oriented programming'99	a function implementing an interface member cannot be private
⎕DMX.(Category EN)≡'Profiling'1	Cannot change timer without first clearing collected data
⎕DMX.(Category EN)≡'Profiling'2	No timer in use
⎕DMX.(Category EN)≡'RIDE'1	Disabled in this environment
⎕DMX.(Category EN)≡'Random Number Generation'1	Right argument must be a name and a shape. Example: 'Beta' (3 15)
⎕DMX.(Category EN)≡'Random Number Generation'10	Left argument for the Cauchy distribution is a location value followed by a non-zero scale value
⎕DMX.(Category EN)≡'Random Number Generation'11	Left argument for the Chi Squared distribution is a non-negative degree of freedom number
⎕DMX.(Category EN)≡'Random Number Generation'12	Left argument for the Exponential distribution is a non-negative rate number
⎕DMX.(Category EN)≡'Random Number Generation'13	Left argument for the F distribution is two positive numbers larger than epsilon
⎕DMX.(Category EN)≡'Random Number Generation'14	Left argument for the Gamma distribution is two non-negative numbers
⎕DMX.(Category EN)≡'Random Number Generation'15	Left argument for the Inverse Gamma distribution is two non-negative numbers
⎕DMX.(Category EN)≡'Random Number Generation'16	Left argument for the Laplace distribution is a location value followed by a non-negative scale value
⎕DMX.(Category EN)≡'Random Number Generation'17	Left argument for the Logistic distribution is a location value followed by a non-negative scale value
⎕DMX.(Category EN)≡'Random Number Generation'18	Left argument for the Log Normal distribution is a location value followed by a non-negative scale value
⎕DMX.(Category EN)≡'Random Number Generation'19	Left argument for the Normal distribution is a location value followed by a non-negative scale value
⎕DMX.(Category EN)≡'Random Number Generation'2	Supplied name is not a supported distribution
⎕DMX.(Category EN)≡'Random Number Generation'20	Left argument for the Poisson distribution is a non-negative rate value
⎕DMX.(Category EN)≡'Random Number Generation'21	Left argument for the Student T distribution is a positive degree-of-freedom value greater than epsilon
⎕DMX.(Category EN)≡'Random Number Generation'22	Left argument for the Weibull distribution is two positive numbers greater than epsilon
⎕DMX.(Category EN)≡'Random Number Generation'3	Distribution name must be a character vector
⎕DMX.(Category EN)≡'Random Number Generation'4	Distribution is not yet implemented
⎕DMX.(Category EN)≡'Random Number Generation'5	Left argument for the Beta distribution must be two numbers
⎕DMX.(Category EN)≡'Random Number Generation'6	Parameters for the Beta distribution must be positive numbers
⎕DMX.(Category EN)≡'Random Number Generation'7	Left argument must be numeric interval. Example: 1.0  7.6
⎕DMX.(Category EN)≡'Random Number Generation'8	The parameter for the Bernoulli distribution is a probablity value between 0 and 1
⎕DMX.(Category EN)≡'Random Number Generation'9	Left argument for the Binomial distribution is the number of trials and a probability value
⎕DMX.(Category EN)≡'Search Replace'1	Invalid escape sequence in transformation string
⎕DMX.(Category EN)≡'Search Replace'10	Text too long
⎕DMX.(Category EN)≡'Search Replace'11	Input stream not tied
⎕DMX.(Category EN)≡'Search Replace'12	Output stream not tied
⎕DMX.(Category EN)≡'Search Replace'13	Input stream error
⎕DMX.(Category EN)≡'Search Replace'14	Output array cannot be written to a stream
⎕DMX.(Category EN)≡'Search Replace'15	Invalid regular expression format
⎕DMX.(Category EN)≡'Search Replace'16	Invalid transformation format
⎕DMX.(Category EN)≡'Search Replace'17	Invalid output destination
⎕DMX.(Category EN)≡'Search Replace'18	Invalid input source
⎕DMX.(Category EN)≡'Search Replace'19	Execution cannot resume because the version of the PCRE library has changed
⎕DMX.(Category EN)≡'Search Replace'2	Regular expression needed
⎕DMX.(Category EN)≡'Search Replace'20	Unicode to UTF-8 translation error
⎕DMX.(Category EN)≡'Search Replace'21	UTF-8 to Unicode translation error
⎕DMX.(Category EN)≡'Search Replace'22	Output stream translation error
⎕DMX.(Category EN)≡'Search Replace'24	Unterminated sequence in transformation string
⎕DMX.(Category EN)≡'Search Replace'25	Subpattern reference out of range in transformation string
⎕DMX.(Category EN)≡'Search Replace'26	Invalid numeric in transformation string
⎕DMX.(Category EN)≡'Search Replace'27	Name expected between '<' and '>' in transformation string
⎕DMX.(Category EN)≡'Search Replace'28	Invalid subpattern name in transformation string
⎕DMX.(Category EN)≡'Search Replace'29	Invalid character in input stream
⎕DMX.(Category EN)≡'Search Replace'3	Regular expression optimisation
⎕DMX.(Category EN)≡'Search Replace'30	Too many regular expressions
⎕DMX.(Category EN)≡'Search Replace'31	Too many blocks
⎕DMX.(Category EN)≡'Search Replace'32	Too many subpatterns
⎕DMX.(Category EN)≡'Search Replace'33	Transformation function should return a value
⎕DMX.(Category EN)≡'Search Replace'34	Transformation function should return a character vector
⎕DMX.(Category EN)≡'Search Replace'35	Cannot optimise pattern
⎕DMX.(Category EN)≡'Search Replace'36	Invalid option value
⎕DMX.(Category EN)≡'Search Replace'37	Invalid hexadecimal codepoint
⎕DMX.(Category EN)≡'Search Replace'38	Invalid pattern
⎕DMX.(Category EN)≡'Search Replace'39	Regex support is not implemented on this platform
⎕DMX.(Category EN)≡'Search Replace'4	Invalid option value
⎕DMX.(Category EN)≡'Search Replace'5	Option only allowed with search
⎕DMX.(Category EN)≡'Search Replace'6	Option only allowed with replace
⎕DMX.(Category EN)≡'Search Replace'7	Option not allowed in line mode
⎕DMX.(Category EN)≡'Search Replace'8	PCRE library fatal error
⎕DMX.(Category EN)≡'Search Replace'9	Invalid subpattern name
⎕DMX.(Category EN)≡'Source Code Files'1	The file could not be opened
⎕DMX.(Category EN)≡'Source Code Files'2	The file could not be opened for writing
⎕DMX.(Category EN)≡'Source Code Files'3	An error occurred writing to the file
⎕DMX.(Category EN)≡'Source Code Files'4	Only text can be written to a file
⎕DMX.(Category EN)≡'Source Code Files'5	The prefix "file://" was expected
⎕DMX.(Category EN)≡'Source Code Files'6	The type of code could not be inferred
⎕DMX.(Category EN)≡'Source Code Files'7	The content of the file has changed since the object was fixed
⎕DMX.(Category EN)≡'Word expansion'1	Left argument is not NOCMD or SHOWERR or UNDEF
⎕DMX.(Category EN)≡'Word expansion'2	Left argument has more than 1 numeric
⎕DMX.(Category EN)≡'Word expansion'3	Left argument numeric value has more than 1 element
⎕DMX.(Category EN)≡'Word expansion'4	Left argument contains non simple array
⎕DMX.(Category EN)≡'Word expansion'5	Number of result elements not as requested
⎕DMX.(Category EN)≡'Word expansion'6	Unexpected failure to convert argument to or from UTF-8
⎕DMX.(Category EN)≡'Word expansion'7	Word expansion failed
⎕DMX.(Category EN)≡'Word expansion'8	Right argument not character
⎕DMX.(Category EN)≡'Word expansion'9	Element of right argument not vector
(⎕NEW⊂'Clipboard').Text	Get text from Windows clipboard
⊢2⎕NQ#'GetEnvironment' 'DYALOG'	Install directory
)SI {n} {-tid=tdno}	Display (first n /last if n<0 lines of) state indicator (for tdno)
)SINL {n} {-tid=tdno}	Display (first n /last if n<0 lines of) state indicator (for thread tdno) with local names
:Require file://[path]<file>	Load other source files prior to this one
⎕DMX.(Category EN)≡'Date/Time functions'1	Unable to read system clock
⎕DMX.(Category EN)≡'Date/Time functions'10	Invalid character in format string
⎕DMX.(Category EN)≡'Date/Time functions'11	Invalid language declaration in format string
⎕DMX.(Category EN)≡'Date/Time functions'12	Invalid predefined pattern declaration in format string
⎕DMX.(Category EN)≡'Date/Time functions'13	Predefined pattern declarations must not be nested
⎕DMX.(Category EN)≡'Date/Time functions'14	Unknown language
⎕DMX.(Category EN)≡'Date/Time functions'15	Unterminated string in format string
⎕DMX.(Category EN)≡'Date/Time functions'16	'Dictionary' option value is not a namespace
⎕DMX.(Category EN)≡'Date/Time functions'17	'Language' option value is invalid
⎕DMX.(Category EN)≡'Date/Time functions'18	Member in the dictionary is not a namespace
⎕DMX.(Category EN)≡'Date/Time functions'19	Not defined in the dictionary
⎕DMX.(Category EN)≡'Date/Time functions'2	Invalid date-time
⎕DMX.(Category EN)≡'Date/Time functions'20	Member in the dictionary is malformed
⎕DMX.(Category EN)≡'Date/Time functions'3	Invalid input date-time type specification
⎕DMX.(Category EN)≡'Date/Time functions'4	Invalid output date-time type specification
⎕DMX.(Category EN)≡'Date/Time functions'5	Date-times which have year, month and day components or are formatted must be between 1 January 0001 and 28 February 4000 in the proleptic Gregorian calendar
⎕DMX.(Category EN)≡'Date/Time functions'6	Date-times must not be before 24 November -4714 in the Proleptic Gregorian Calendar
⎕DMX.(Category EN)≡'Date/Time functions'7	Time number type does not allow negative values
⎕DMX.(Category EN)≡'Date/Time functions'8	Invalid format string
⎕DMX.(Category EN)≡'Date/Time functions'9	Invalid substitution format string
⎕DMX.(Category EN)≡'.NET interface'1	Only IDispatch can be obtained from a .NET object
⎕DMX.(Category EN)≡'.NET interface'2	A .NET exception has occurred. Check ⎕EXCEPTION for details
⎕DMX.(Category EN)≡'.NET interface'3	The .NET framework does not provide a function for this operation
⎕DMX.(Category EN)≡'.NET interface'4	There are no constructors available for the specified type
⎕DMX.(Category EN)≡'.NET interface'5	Can't fork with active bridge
⎕DMX.(Category EN)≡'.NET interface'6	Array must be a namespace reference or nested array
⍞↓⍨≢⍞←'What? '	Prompt and response on same line
:Signature <rslttype←><name><arg1type arg1name>,…	Identify name and signature by which this function is exported as a method
(⊃÷100÷⊢/)⎕WG'DevCaps'	Current real screen resolution before scaling
'-64'~⍨⊃#⎕WG'APLVersion'	Report Operating System
32×1+'4'∊⊃#⎕WG'APLVersion'	Report Interpreter bit-width
'%ISO%'(1200⌶)1⎕DT'J'	Current ISO timestamp
(⎕NS⍬).(_←enableSALT⊣⎕CY'salt')	Enable SALT when not in session file
{(⍎⍵⎕NS⍬).⎕CY ⍵}'dfns'	Import dfns workspace into a namespace called dfns so dfn can be called using dfns.name
({⍵⊣⍵.⎕CY'dfns'}⎕NS⍬).name	Call function “name” from the dfns workspace without polluting the current workspace
1⌽,⍨9⍴'''1⌽,⍨9⍴'''	An expression giving itself
Is{3⊃⊃¯1⎕DT ¯1+1⎕DT⊂1+0 12⊤1+12⊥⍺,⍵-1}Js	Number of days in month Js of year Is
⍎⊖⍕⊃⊂|⌊-*+○⌈×÷!⌽⍉⌹~⍴⍋⍒,⍟?⍳0	Meaning of life (traditional)
'-'@(4+5×⍳4)⊢(⎕D,⎕C⎕A)[4(9+|)@20⊢5@15?36⍴16]	Generate random UUID
⎕SIGNAL⊂⎕DMX.(('EN'EN)('EM'EM)('Message'(OSError{⍵,2⌽(×≢⊃⍬⍴2⌽⍺,⊂'')/'") ("',⊃⍬⍴2⌽⍺}Message)))	Re-signal last caught error to caller (works with any ⎕IO and ⎕ML)
⎕DMX.(OSError{⍵,2⌽(×≢⊃⍬⍴2⌽⍺,⊂'')/'") ("',⊃⍬⍴2⌽⊆⍺}Message{⍵,⍺,⍨': '/⍨×≢⍺}⊃⍬⍴DM,⊂'')	Construct first line of printed error message (works with any ⎕IO and ⎕ML)

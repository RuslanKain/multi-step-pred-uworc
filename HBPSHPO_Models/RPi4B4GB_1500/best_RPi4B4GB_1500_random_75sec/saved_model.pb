ца;
╦Ь
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
л
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ьв7
~
training/Adagrad/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_nametraining/Adagrad/iter
w
)training/Adagrad/iter/Read/ReadVariableOpReadVariableOptraining/Adagrad/iter*
_output_shapes
: *
dtype0	
А
training/Adagrad/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nametraining/Adagrad/decay
y
*training/Adagrad/decay/Read/ReadVariableOpReadVariableOptraining/Adagrad/decay*
_output_shapes
: *
dtype0
Р
training/Adagrad/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name training/Adagrad/learning_rate
Й
2training/Adagrad/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adagrad/learning_rate*
_output_shapes
: *
dtype0
З
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ф*&
shared_namelstm/lstm_cell/kernel
А
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	Ф*
dtype0
Ь
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*0
shared_name!lstm/lstm_cell/recurrent_kernel
Х
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
еФ*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ф*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:Ф*
dtype0
Р
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ**
shared_namelstm_1/lstm_cell_1/kernel
Й
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel* 
_output_shapes
:
еФ*
dtype0
д
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
Э
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
еФ*
dtype0
З
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ф*(
shared_namelstm_1/lstm_cell_1/bias
А
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:Ф*
dtype0
Р
lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ**
shared_namelstm_2/lstm_cell_2/kernel
Й
-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel* 
_output_shapes
:
еФ*
dtype0
д
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel
Э
7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel* 
_output_shapes
:
еФ*
dtype0
З
lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ф*(
shared_namelstm_2/lstm_cell_2/bias
А
+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:Ф*
dtype0
М
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
е╥*(
shared_nametime_distributed/kernel
Е
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel* 
_output_shapes
:
е╥*
dtype0
Г
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╥*&
shared_nametime_distributed/bias
|
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes	
:╥*
dtype0
П
time_distributed_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╥i**
shared_nametime_distributed_2/kernel
И
-time_distributed_2/kernel/Read/ReadVariableOpReadVariableOptime_distributed_2/kernel*
_output_shapes
:	╥i*
dtype0
Ж
time_distributed_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*(
shared_nametime_distributed_2/bias

+time_distributed_2/bias/Read/ReadVariableOpReadVariableOptime_distributed_2/bias*
_output_shapes
:i*
dtype0
О
time_distributed_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:i4**
shared_nametime_distributed_4/kernel
З
-time_distributed_4/kernel/Read/ReadVariableOpReadVariableOptime_distributed_4/kernel*
_output_shapes

:i4*
dtype0
Ж
time_distributed_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*(
shared_nametime_distributed_4/bias

+time_distributed_4/bias/Read/ReadVariableOpReadVariableOptime_distributed_4/bias*
_output_shapes
:4*
dtype0
О
time_distributed_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4**
shared_nametime_distributed_6/kernel
З
-time_distributed_6/kernel/Read/ReadVariableOpReadVariableOptime_distributed_6/kernel*
_output_shapes

:4*
dtype0
Ж
time_distributed_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_6/bias

+time_distributed_6/bias/Read/ReadVariableOpReadVariableOptime_distributed_6/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
┴
2training/Adagrad/lstm/lstm_cell/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ф*C
shared_name42training/Adagrad/lstm/lstm_cell/kernel/accumulator
║
Ftraining/Adagrad/lstm/lstm_cell/kernel/accumulator/Read/ReadVariableOpReadVariableOp2training/Adagrad/lstm/lstm_cell/kernel/accumulator*
_output_shapes
:	Ф*
dtype0
╓
<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*M
shared_name><training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator
╧
Ptraining/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator/Read/ReadVariableOpReadVariableOp<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator* 
_output_shapes
:
еФ*
dtype0
╣
0training/Adagrad/lstm/lstm_cell/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ф*A
shared_name20training/Adagrad/lstm/lstm_cell/bias/accumulator
▓
Dtraining/Adagrad/lstm/lstm_cell/bias/accumulator/Read/ReadVariableOpReadVariableOp0training/Adagrad/lstm/lstm_cell/bias/accumulator*
_output_shapes	
:Ф*
dtype0
╩
6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*G
shared_name86training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator
├
Jtraining/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator* 
_output_shapes
:
еФ*
dtype0
▐
@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*Q
shared_nameB@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator
╫
Ttraining/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator/Read/ReadVariableOpReadVariableOp@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator* 
_output_shapes
:
еФ*
dtype0
┴
4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ф*E
shared_name64training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator
║
Htraining/Adagrad/lstm_1/lstm_cell_1/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator*
_output_shapes	
:Ф*
dtype0
╩
6training/Adagrad/lstm_2/lstm_cell_2/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*G
shared_name86training/Adagrad/lstm_2/lstm_cell_2/kernel/accumulator
├
Jtraining/Adagrad/lstm_2/lstm_cell_2/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/lstm_2/lstm_cell_2/kernel/accumulator* 
_output_shapes
:
еФ*
dtype0
▐
@training/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
еФ*Q
shared_nameB@training/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulator
╫
Ttraining/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulator/Read/ReadVariableOpReadVariableOp@training/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulator* 
_output_shapes
:
еФ*
dtype0
┴
4training/Adagrad/lstm_2/lstm_cell_2/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ф*E
shared_name64training/Adagrad/lstm_2/lstm_cell_2/bias/accumulator
║
Htraining/Adagrad/lstm_2/lstm_cell_2/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/lstm_2/lstm_cell_2/bias/accumulator*
_output_shapes	
:Ф*
dtype0
╞
4training/Adagrad/time_distributed/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:
е╥*E
shared_name64training/Adagrad/time_distributed/kernel/accumulator
┐
Htraining/Adagrad/time_distributed/kernel/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed/kernel/accumulator* 
_output_shapes
:
е╥*
dtype0
╜
2training/Adagrad/time_distributed/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:╥*C
shared_name42training/Adagrad/time_distributed/bias/accumulator
╢
Ftraining/Adagrad/time_distributed/bias/accumulator/Read/ReadVariableOpReadVariableOp2training/Adagrad/time_distributed/bias/accumulator*
_output_shapes	
:╥*
dtype0
╔
6training/Adagrad/time_distributed_2/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╥i*G
shared_name86training/Adagrad/time_distributed_2/kernel/accumulator
┬
Jtraining/Adagrad/time_distributed_2/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/time_distributed_2/kernel/accumulator*
_output_shapes
:	╥i*
dtype0
└
4training/Adagrad/time_distributed_2/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*E
shared_name64training/Adagrad/time_distributed_2/bias/accumulator
╣
Htraining/Adagrad/time_distributed_2/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed_2/bias/accumulator*
_output_shapes
:i*
dtype0
╚
6training/Adagrad/time_distributed_4/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:i4*G
shared_name86training/Adagrad/time_distributed_4/kernel/accumulator
┴
Jtraining/Adagrad/time_distributed_4/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/time_distributed_4/kernel/accumulator*
_output_shapes

:i4*
dtype0
└
4training/Adagrad/time_distributed_4/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*E
shared_name64training/Adagrad/time_distributed_4/bias/accumulator
╣
Htraining/Adagrad/time_distributed_4/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed_4/bias/accumulator*
_output_shapes
:4*
dtype0
╚
6training/Adagrad/time_distributed_6/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4*G
shared_name86training/Adagrad/time_distributed_6/kernel/accumulator
┴
Jtraining/Adagrad/time_distributed_6/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/time_distributed_6/kernel/accumulator*
_output_shapes

:4*
dtype0
└
4training/Adagrad/time_distributed_6/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64training/Adagrad/time_distributed_6/bias/accumulator
╣
Htraining/Adagrad/time_distributed_6/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed_6/bias/accumulator*
_output_shapes
:*
dtype0

NoOpNoOp
╒h
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Рh
valueЖhBГh B№g
╖
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
 	variables
!trainable_variables
"regularization_losses
#	keras_api
]
	$layer
%	variables
&trainable_variables
'regularization_losses
(	keras_api
]
	)layer
*	variables
+trainable_variables
,regularization_losses
-	keras_api
]
	.layer
/	variables
0trainable_variables
1regularization_losses
2	keras_api
]
	3layer
4	variables
5trainable_variables
6regularization_losses
7	keras_api
]
	8layer
9	variables
:trainable_variables
;regularization_losses
<	keras_api
]
	=layer
>	variables
?trainable_variables
@regularization_losses
A	keras_api
]
	Blayer
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
R
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
№
Kiter
	Ldecay
Mlearning_rateNaccumulatorЗOaccumulatorИPaccumulatorЙQaccumulatorКRaccumulatorЛSaccumulatorМTaccumulatorНUaccumulatorОVaccumulatorПWaccumulatorРXaccumulatorСYaccumulatorТZaccumulatorУ[accumulatorФ\accumulatorХ]accumulatorЦ^accumulatorЧ
~
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
~
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16
 
н
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
 
О
d
state_size

Nkernel
Orecurrent_kernel
Pbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
 

N0
O1
P2

N0
O1
P2
 
╣

istates
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
О
o
state_size

Qkernel
Rrecurrent_kernel
Sbias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
 

Q0
R1
S2

Q0
R1
S2
 
╣

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
О
z
state_size

Tkernel
Urecurrent_kernel
Vbias
{	variables
|trainable_variables
}regularization_losses
~	keras_api
 

T0
U1
V2

T0
U1
V2
 
╛

states
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
 	variables
!trainable_variables
"regularization_losses
l

Wkernel
Xbias
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api

W0
X1

W0
X1
 
▓
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
%	variables
&trainable_variables
'regularization_losses
V
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
 
 
 
▓
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
*	variables
+trainable_variables
,regularization_losses
l

Ykernel
Zbias
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api

Y0
Z1

Y0
Z1
 
▓
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
/	variables
0trainable_variables
1regularization_losses
V
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
 
 
 
▓
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
4	variables
5trainable_variables
6regularization_losses
l

[kernel
\bias
й	variables
кtrainable_variables
лregularization_losses
м	keras_api

[0
\1

[0
\1
 
▓
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
9	variables
:trainable_variables
;regularization_losses
V
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
 
 
 
▓
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
>	variables
?trainable_variables
@regularization_losses
l

]kernel
^bias
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api

]0
^1

]0
^1
 
▓
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
 
 
 
▓
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
TR
VARIABLE_VALUEtraining/Adagrad/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtraining/Adagrad/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEtraining/Adagrad/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_2/lstm_cell_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_2/lstm_cell_2/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_2/lstm_cell_2/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEtime_distributed/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_2/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_2/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_4/kernel'variables/13/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_4/bias'variables/14/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_6/kernel'variables/15/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_6/bias'variables/16/.ATTRIBUTES/VARIABLE_VALUE
 
N
0
1
2
3
4
5
6
7
	8

9
10

╔0
╩1
 
 
 

N0
O1
P2

N0
O1
P2
 
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
e	variables
ftrainable_variables
gregularization_losses
 
 

0
 
 
 
 

Q0
R1
S2

Q0
R1
S2
 
▓
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
p	variables
qtrainable_variables
rregularization_losses
 
 

0
 
 
 
 

T0
U1
V2

T0
U1
V2
 
▓
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
{	variables
|trainable_variables
}regularization_losses
 
 

0
 
 
 

W0
X1

W0
X1
 
╡
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
 

$0
 
 
 
 
 
 
╡
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
 

)0
 
 
 

Y0
Z1

Y0
Z1
 
╡
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
 

.0
 
 
 
 
 
 
╡
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
 

30
 
 
 

[0
\1

[0
\1
 
╡
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
й	variables
кtrainable_variables
лregularization_losses
 

80
 
 
 
 
 
 
╡
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
 

=0
 
 
 

]0
^1

]0
^1
 
╡
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
 

B0
 
 
 
 
 
 
 
 
I

¤total

■count
 
_fn_kwargs
А	variables
Б	keras_api
I

Вtotal

Гcount
Д
_fn_kwargs
Е	variables
Ж	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 

¤0
■1

А	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

В0
Г1

Е	variables
ХТ
VARIABLE_VALUE2training/Adagrad/lstm/lstm_cell/kernel/accumulatorLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЯЬ
VARIABLE_VALUE<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulatorLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE0training/Adagrad/lstm/lstm_cell/bias/accumulatorLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulatorLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
га
VARIABLE_VALUE@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulatorLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulatorLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЩЦ
VARIABLE_VALUE6training/Adagrad/lstm_2/lstm_cell_2/kernel/accumulatorLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
га
VARIABLE_VALUE@training/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulatorLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE4training/Adagrad/lstm_2/lstm_cell_2/bias/accumulatorLvariables/8/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE4training/Adagrad/time_distributed/kernel/accumulatorLvariables/9/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE2training/Adagrad/time_distributed/bias/accumulatorMvariables/10/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6training/Adagrad/time_distributed_2/kernel/accumulatorMvariables/11/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE4training/Adagrad/time_distributed_2/bias/accumulatorMvariables/12/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6training/Adagrad/time_distributed_4/kernel/accumulatorMvariables/13/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE4training/Adagrad/time_distributed_4/bias/accumulatorMvariables/14/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ЪЧ
VARIABLE_VALUE6training/Adagrad/time_distributed_6/kernel/accumulatorMvariables/15/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
ШХ
VARIABLE_VALUE4training/Adagrad/time_distributed_6/bias/accumulatorMvariables/16/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
Е
serving_default_lstm_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
е
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastime_distributed/kerneltime_distributed/biastime_distributed_2/kerneltime_distributed_2/biastime_distributed_4/kerneltime_distributed_4/biastime_distributed_6/kerneltime_distributed_6/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_37989
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
щ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)training/Adagrad/iter/Read/ReadVariableOp*training/Adagrad/decay/Read/ReadVariableOp2training/Adagrad/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_2/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_2/kernel/Read/ReadVariableOp+time_distributed_2/bias/Read/ReadVariableOp-time_distributed_4/kernel/Read/ReadVariableOp+time_distributed_4/bias/Read/ReadVariableOp-time_distributed_6/kernel/Read/ReadVariableOp+time_distributed_6/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpFtraining/Adagrad/lstm/lstm_cell/kernel/accumulator/Read/ReadVariableOpPtraining/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator/Read/ReadVariableOpDtraining/Adagrad/lstm/lstm_cell/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator/Read/ReadVariableOpTtraining/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/lstm_1/lstm_cell_1/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/lstm_2/lstm_cell_2/kernel/accumulator/Read/ReadVariableOpTtraining/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/lstm_2/lstm_cell_2/bias/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed/kernel/accumulator/Read/ReadVariableOpFtraining/Adagrad/time_distributed/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/time_distributed_2/kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed_2/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/time_distributed_4/kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed_4/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/time_distributed_6/kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed_6/bias/accumulator/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_41915
░
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametraining/Adagrad/itertraining/Adagrad/decaytraining/Adagrad/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastime_distributed/kerneltime_distributed/biastime_distributed_2/kerneltime_distributed_2/biastime_distributed_4/kerneltime_distributed_4/biastime_distributed_6/kerneltime_distributed_6/biastotalcounttotal_1count_12training/Adagrad/lstm/lstm_cell/kernel/accumulator<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator0training/Adagrad/lstm/lstm_cell/bias/accumulator6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator6training/Adagrad/lstm_2/lstm_cell_2/kernel/accumulator@training/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulator4training/Adagrad/lstm_2/lstm_cell_2/bias/accumulator4training/Adagrad/time_distributed/kernel/accumulator2training/Adagrad/time_distributed/bias/accumulator6training/Adagrad/time_distributed_2/kernel/accumulator4training/Adagrad/time_distributed_2/bias/accumulator6training/Adagrad/time_distributed_4/kernel/accumulator4training/Adagrad/time_distributed_4/bias/accumulator6training/Adagrad/time_distributed_6/kernel/accumulator4training/Adagrad/time_distributed_6/bias/accumulator*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_42048╡и5
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37245

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:i
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Ц
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ie
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         iЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╥: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
═1
к
while_body_40537
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
 
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37072

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4b
dropout_2/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   Б
	Reshape_1Reshapedropout_2/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         4"
identityIdentity:output:0**
_input_shapes
:         4:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
ш
┌
*__inference_sequential_layer_call_fn_37125

lstm_input(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biaslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37105s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
п
`
B__inference_dropout_layer_call_and_return_conditional_losses_36143

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ╥\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ╥"!

identity_1Identity_1:output:0*'
_input_shapes
:         ╥:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
ыI
╥
A__inference_lstm_2_layer_call_and_return_conditional_losses_40480
inputs_0O
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40398*
condR
while_cond_40397*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  е╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
п2
█
lstm_1_while_body_38707
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_1_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_1_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ц
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :\
add_1AddV2lstm_1_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: _

Identity_1Identitylstm_1_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"2
lstm_1_strided_slice_1lstm_1_strided_slice_1_0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"к
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
Ф
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40924

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   w
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         ╥"
identityIdentity:output:0*+
_input_shapes
:         ╥:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
Ш
Ў
while_cond_36895
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_36895___redundant_placeholder0-
)while_cond_36895___redundant_placeholder1-
)while_cond_36895___redundant_placeholder2-
)while_cond_36895___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ю
┐
2__inference_time_distributed_6_layer_call_fn_41263

inputs+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_36494|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  4: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
Ш
Ў
while_cond_35806
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_35806___redundant_placeholder0-
)while_cond_35806___redundant_placeholder1-
)while_cond_35806___redundant_placeholder2-
)while_cond_35806___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
┼
Ю
lstm_while_cond_38089
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_strided_slice_12
.lstm_while_cond_38089___redundant_placeholder02
.lstm_while_cond_38089___redundant_placeholder12
.lstm_while_cond_38089___redundant_placeholder22
.lstm_while_cond_38089___redundant_placeholder3
identity
U
LessLessplaceholderless_lstm_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╓
т
$__inference_lstm_layer_call_fn_39010
inputs_0(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_35403}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
м
щ
K__inference_time_distributed_layer_call_and_return_conditional_losses_36086

inputs1
dense_time_distributed_kernel:
е╥*
dense_time_distributed_bias:	╥
identityИвdense/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еО
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_time_distributed_kerneldense_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_36077\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ц
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╥f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  е: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
П
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41090

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         i^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         i"
identityIdentity:output:0**
_input_shapes
:         i:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
Щ
N
2__inference_time_distributed_1_layer_call_fn_40871

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37010e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ╥"
identityIdentity:output:0*+
_input_shapes
:         ╥:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
Ц
┴
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_41614

inputs
states_0
states_1C
/matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФO
;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
Щ
N
2__inference_time_distributed_1_layer_call_fn_40876

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37265e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ╥"
identityIdentity:output:0*+
_input_shapes
:         ╥:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
Ю
┐
2__inference_time_distributed_4_layer_call_fn_41097

inputs+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_36358|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  4`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  i: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_4_layer_call_fn_41111

inputs+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37058s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         4`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         i: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
═1
к
while_body_39949
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╨ 
╫
while_body_35981
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'lstm_cell_2_lstm_2_lstm_cell_2_kernel_0:
еФE
1lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФ4
%lstm_cell_2_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%lstm_cell_2_lstm_2_lstm_cell_2_kernel:
еФC
/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ2
#lstm_cell_2_lstm_2_lstm_cell_2_bias:	ФИв#lstm_cell_2/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0╟
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_2_lstm_2_lstm_cell_2_kernel_01lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel_0%lstm_cell_2_lstm_2_lstm_cell_2_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35928├
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder,lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: ~

Identity_4Identity,lstm_cell_2/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         е~

Identity_5Identity,lstm_cell_2/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         еl
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"L
#lstm_cell_2_lstm_2_lstm_cell_2_bias%lstm_cell_2_lstm_2_lstm_cell_2_bias_0"P
%lstm_cell_2_lstm_2_lstm_cell_2_kernel'lstm_cell_2_lstm_2_lstm_cell_2_kernel_0"d
/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel1lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
п2
█
lstm_1_while_body_38225
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_1_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_1_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ц
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :\
add_1AddV2lstm_1_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: _

Identity_1Identitylstm_1_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"2
lstm_1_strided_slice_1lstm_1_strided_slice_1_0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"к
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
М0
■
while_body_39361
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
═1
к
while_body_37363
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
П
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41256

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         4"
identityIdentity:output:0**
_input_shapes
:         4:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
┬
Є
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_36358

inputs3
!dense_2_time_distributed_4_kernel:i4-
dense_2_time_distributed_4_bias:4
identityИвdense_2/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iЩ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_2_time_distributed_4_kerneldense_2_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_36349\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  4h
NoOpNoOp ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  i: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
═
F
*__inference_cropping1d_layer_call_fn_41359

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_36544v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
И
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_40973

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:i
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Ц
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  in
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  iЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╥: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
┐
░
+__inference_lstm_cell_1_layer_call_fn_41482

inputs
states_0
states_1-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф
identity

identity_1

identity_2ИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35474p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         еr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         еr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
═1
к
while_body_40259
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
┬
Є
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_36494

inputs3
!dense_3_time_distributed_6_kernel:4-
dense_3_time_distributed_6_bias:
identityИвdense_3/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Щ
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_3_time_distributed_6_kerneldense_3_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_36485\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  4: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
г
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_36422

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4├
dropout_2/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_36415\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  4"
identityIdentity:output:0*3
_input_shapes"
 :                  4:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
┐
░
+__inference_lstm_cell_2_layer_call_fn_41584

inputs
states_0
states_1-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф
identity

identity_1

identity_2ИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35928p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         еr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         еr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
нI
╨
A__inference_lstm_2_layer_call_and_return_conditional_losses_40758

inputsO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40676*
condR
while_cond_40675*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
Э]
╘
__inference__traced_save_41915
file_prefix4
0savev2_training_adagrad_iter_read_readvariableop	5
1savev2_training_adagrad_decay_read_readvariableop=
9savev2_training_adagrad_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop8
4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop8
4savev2_time_distributed_2_kernel_read_readvariableop6
2savev2_time_distributed_2_bias_read_readvariableop8
4savev2_time_distributed_4_kernel_read_readvariableop6
2savev2_time_distributed_4_bias_read_readvariableop8
4savev2_time_distributed_6_kernel_read_readvariableop6
2savev2_time_distributed_6_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopQ
Msavev2_training_adagrad_lstm_lstm_cell_kernel_accumulator_read_readvariableop[
Wsavev2_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulator_read_readvariableopO
Ksavev2_training_adagrad_lstm_lstm_cell_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulator_read_readvariableop_
[savev2_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_lstm_1_lstm_cell_1_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_lstm_2_lstm_cell_2_kernel_accumulator_read_readvariableop_
[savev2_training_adagrad_lstm_2_lstm_cell_2_recurrent_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_lstm_2_lstm_cell_2_bias_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_kernel_accumulator_read_readvariableopQ
Msavev2_training_adagrad_time_distributed_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_time_distributed_2_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_2_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_time_distributed_4_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_4_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_time_distributed_6_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_6_bias_accumulator_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ╤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*·
valueЁBэ*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/8/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/9/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/10/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/11/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/12/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/13/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/14/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/15/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/16/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┴
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ю
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_training_adagrad_iter_read_readvariableop1savev2_training_adagrad_decay_read_readvariableop9savev2_training_adagrad_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_2_kernel_read_readvariableop2savev2_time_distributed_2_bias_read_readvariableop4savev2_time_distributed_4_kernel_read_readvariableop2savev2_time_distributed_4_bias_read_readvariableop4savev2_time_distributed_6_kernel_read_readvariableop2savev2_time_distributed_6_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopMsavev2_training_adagrad_lstm_lstm_cell_kernel_accumulator_read_readvariableopWsavev2_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulator_read_readvariableopKsavev2_training_adagrad_lstm_lstm_cell_bias_accumulator_read_readvariableopQsavev2_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulator_read_readvariableop[savev2_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_lstm_1_lstm_cell_1_bias_accumulator_read_readvariableopQsavev2_training_adagrad_lstm_2_lstm_cell_2_kernel_accumulator_read_readvariableop[savev2_training_adagrad_lstm_2_lstm_cell_2_recurrent_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_lstm_2_lstm_cell_2_bias_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_kernel_accumulator_read_readvariableopMsavev2_training_adagrad_time_distributed_bias_accumulator_read_readvariableopQsavev2_training_adagrad_time_distributed_2_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_2_bias_accumulator_read_readvariableopQsavev2_training_adagrad_time_distributed_4_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_4_bias_accumulator_read_readvariableopQsavev2_training_adagrad_time_distributed_6_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_6_bias_accumulator_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ч
_input_shapes╒
╥: : : : :	Ф:
еФ:Ф:
еФ:
еФ:Ф:
еФ:
еФ:Ф:
е╥:╥:	╥i:i:i4:4:4:: : : : :	Ф:
еФ:Ф:
еФ:
еФ:Ф:
еФ:
еФ:Ф:
е╥:╥:	╥i:i:i4:4:4:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ф:&"
 
_output_shapes
:
еФ:!

_output_shapes	
:Ф:&"
 
_output_shapes
:
еФ:&"
 
_output_shapes
:
еФ:!	

_output_shapes	
:Ф:&
"
 
_output_shapes
:
еФ:&"
 
_output_shapes
:
еФ:!

_output_shapes	
:Ф:&"
 
_output_shapes
:
е╥:!

_output_shapes	
:╥:%!

_output_shapes
:	╥i: 

_output_shapes
:i:$ 

_output_shapes

:i4: 

_output_shapes
:4:$ 

_output_shapes

:4: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Ф:&"
 
_output_shapes
:
еФ:!

_output_shapes	
:Ф:&"
 
_output_shapes
:
еФ:&"
 
_output_shapes
:
еФ:!

_output_shapes	
:Ф:&"
 
_output_shapes
:
еФ:& "
 
_output_shapes
:
еФ:!!

_output_shapes	
:Ф:&""
 
_output_shapes
:
е╥:!#

_output_shapes	
:╥:%$!

_output_shapes
:	╥i: %

_output_shapes
:i:$& 

_output_shapes

:i4: '

_output_shapes
:4:$( 

_output_shapes

:4: )

_output_shapes
::*

_output_shapes
: 
М0
■
while_body_39500
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41174

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:i4D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:4
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         4З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         i: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
╘
┤
'__inference_dense_3_layer_call_fn_41759

inputs+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_36485o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         4: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
Ш
Ў
while_cond_35336
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_35336___redundant_placeholder0-
)while_cond_35336___redundant_placeholder1-
)while_cond_35336___redundant_placeholder2-
)while_cond_35336___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
н
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_41712

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         i[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         i"!

identity_1Identity_1:output:0*&
_input_shapes
:         i:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
Ш
Ў
while_cond_39221
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39221___redundant_placeholder0-
)while_cond_39221___redundant_placeholder1-
)while_cond_39221___redundant_placeholder2-
)while_cond_39221___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
═1
к
while_body_37518
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
К╬
И
E__inference_sequential_layer_call_and_return_conditional_losses_38515

inputsM
:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФZ
Flstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФH
9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФV
Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФb
Nlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФP
Alstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФV
Blstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФb
Nlstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФP
Alstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФX
Dtime_distributed_dense_matmul_readvariableop_time_distributed_kernel:
е╥R
Ctime_distributed_dense_biasadd_readvariableop_time_distributed_bias:	╥]
Jtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iW
Itime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:i\
Jtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:i4W
Itime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:4\
Jtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel:4W
Itime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИв%lstm/lstm_cell/BiasAdd/ReadVariableOpв$lstm/lstm_cell/MatMul/ReadVariableOpв&lstm/lstm_cell/MatMul_1/ReadVariableOpв
lstm/whileв)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpв(lstm_1/lstm_cell_1/MatMul/ReadVariableOpв*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpвlstm_1/whileв)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpв(lstm_2/lstm_cell_2/MatMul/ReadVariableOpв*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpвlstm_2/whileв-time_distributed/dense/BiasAdd/ReadVariableOpв,time_distributed/dense/MatMul/ReadVariableOpв1time_distributed_2/dense_1/BiasAdd/ReadVariableOpв0time_distributed_2/dense_1/MatMul/ReadVariableOpв1time_distributed_4/dense_2/BiasAdd/ReadVariableOpв0time_distributed_4/dense_2/MatMul/ReadVariableOpв1time_distributed_6/dense_3/BiasAdd/ReadVariableOpв0time_distributed_6/dense_3/MatMul/ReadVariableOp@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еВ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         еX
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еЖ
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:         N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Л
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:В
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskа
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Я
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0Щ
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФТ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0Ы
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splits
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:         еu
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:         еБ
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:         еЙ
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:         еВ
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еu
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:         еЖ
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еs
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╟
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_38090*!
condR
lstm_while_cond_38089*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Ж
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╥
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ж
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         е`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    P
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еИ
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:         еZ
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еМ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          К
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:         еR
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ї
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskн
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpBlstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0й
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф╗
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0г
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЮ
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         Фи
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0з
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_split{
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:         е}
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еЛ
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:         еХ
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еО
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         е}
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:         еТ
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еu
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ═
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ю
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_38225*#
condR
lstm_1_while_cond_38224*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations И
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╪
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еb
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    R
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еИ
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:         еZ
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еМ
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еj
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          М
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:         еR
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:f
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ї
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskн
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpBlstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0й
lstm_2/lstm_cell_2/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф╗
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpNlstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0г
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЮ
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         Фи
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAlstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0з
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фd
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_split{
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:         е}
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еЛ
lstm_2/lstm_cell_2/mulMul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:         еХ
lstm_2/lstm_cell_2/mul_1Mullstm_2/lstm_cell_2/Sigmoid:y:0!lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еО
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul:z:0lstm_2/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         е}
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:         еТ
lstm_2/lstm_cell_2/mul_2Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0lstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еu
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ═
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ю
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Blstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelNlstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelAlstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_2_while_body_38360*#
condR
lstm_2_while_cond_38359*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations И
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╪
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0o
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskl
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еb
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ч
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е│
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOpDtime_distributed_dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0│
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥о
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpCtime_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0╝
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   ░
time_distributed/Reshape_1Reshape'time_distributed/dense/BiasAdd:output:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ы
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         еq
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   и
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥З
#time_distributed_1/dropout/IdentityIdentity#time_distributed_1/Reshape:output:0*
T0*(
_output_shapes
:         ╥w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   ╣
time_distributed_1/Reshape_1Reshape,time_distributed_1/dropout/Identity:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   м
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╥q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   к
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥╝
0time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpJtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0╝
!time_distributed_2/dense_1/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i╖
1time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0╟
"time_distributed_2/dense_1/BiasAddBiasAdd+time_distributed_2/dense_1/MatMul:product:09time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iw
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ╖
time_distributed_2/Reshape_1Reshape+time_distributed_2/dense_1/BiasAdd:output:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         is
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   о
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╥q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   й
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iИ
%time_distributed_3/dropout_1/IdentityIdentity#time_distributed_3/Reshape:output:0*
T0*'
_output_shapes
:         iw
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ║
time_distributed_3/Reshape_1Reshape.time_distributed_3/dropout_1/Identity:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         is
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   н
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         iq
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   й
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i╗
0time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpJtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0╝
!time_distributed_4/dense_2/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4╖
1time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0╟
"time_distributed_4/dense_2/BiasAddBiasAdd+time_distributed_4/dense_2/MatMul:product:09time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4w
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ╖
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_2/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4s
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   н
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         iq
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   й
time_distributed_5/ReshapeReshape%time_distributed_4/Reshape_1:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4И
%time_distributed_5/dropout_2/IdentityIdentity#time_distributed_5/Reshape:output:0*
T0*'
_output_shapes
:         4w
"time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ║
time_distributed_5/Reshape_1Reshape.time_distributed_5/dropout_2/Identity:output:0+time_distributed_5/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4s
"time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   н
time_distributed_5/Reshape_2Reshape%time_distributed_4/Reshape_1:output:0+time_distributed_5/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         4q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   й
time_distributed_6/ReshapeReshape%time_distributed_5/Reshape_1:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4╗
0time_distributed_6/dense_3/MatMul/ReadVariableOpReadVariableOpJtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0╝
!time_distributed_6/dense_3/MatMulMatMul#time_distributed_6/Reshape:output:08time_distributed_6/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╖
1time_distributed_6/dense_3/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0╟
"time_distributed_6/dense_3/BiasAddBiasAdd+time_distributed_6/dense_3/MatMul:product:09time_distributed_6/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
"time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
time_distributed_6/Reshape_1Reshape+time_distributed_6/dense_3/BiasAdd:output:0+time_distributed_6/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   н
time_distributed_6/Reshape_2Reshape%time_distributed_5/Reshape_1:output:0+time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         4s
cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       u
 cropping1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            u
 cropping1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         │
cropping1d/strided_sliceStridedSlice%time_distributed_6/Reshape_1:output:0'cropping1d/strided_slice/stack:output:0)cropping1d/strided_slice/stack_1:output:0)cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskt
IdentityIdentity!cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:         Е
NoOpNoOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_2/dense_1/BiasAdd/ReadVariableOp1^time_distributed_2/dense_1/MatMul/ReadVariableOp2^time_distributed_4/dense_2/BiasAdd/ReadVariableOp1^time_distributed_4/dense_2/MatMul/ReadVariableOp2^time_distributed_6/dense_3/BiasAdd/ReadVariableOp1^time_distributed_6/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_2/dense_1/BiasAdd/ReadVariableOp1time_distributed_2/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_2/dense_1/MatMul/ReadVariableOp0time_distributed_2/dense_1/MatMul/ReadVariableOp2f
1time_distributed_4/dense_2/BiasAdd/ReadVariableOp1time_distributed_4/dense_2/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_2/MatMul/ReadVariableOp0time_distributed_4/dense_2/MatMul/ReadVariableOp2f
1time_distributed_6/dense_3/BiasAdd/ReadVariableOp1time_distributed_6/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_6/dense_3/MatMul/ReadVariableOp0time_distributed_6/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ї
ё
&__inference_lstm_1_layer_call_fn_39590
inputs_0-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_35551}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
┐
░
+__inference_lstm_cell_1_layer_call_fn_41496

inputs
states_0
states_1-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф
identity

identity_1

identity_2ИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35606p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         еr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         еr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
с	
Ф
B__inference_dense_1_layer_call_and_return_conditional_losses_41697

inputsB
/matmul_readvariableop_time_distributed_2_kernel:	╥i<
.biasadd_readvariableop_time_distributed_2_bias:i
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЖ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iБ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         iw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         ╥: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
┼
Ю
lstm_while_cond_38571
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_strided_slice_12
.lstm_while_cond_38571___redundant_placeholder02
.lstm_while_cond_38571___redundant_placeholder12
.lstm_while_cond_38571___redundant_placeholder22
.lstm_while_cond_38571___redundant_placeholder3
identity
U
LessLessplaceholderless_lstm_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
∙I
╗

E__inference_sequential_layer_call_and_return_conditional_losses_37919

lstm_input-
lstm_lstm_lstm_cell_kernel:	Ф8
$lstm_lstm_lstm_cell_recurrent_kernel:
еФ'
lstm_lstm_lstm_cell_bias:	Ф4
 lstm_1_lstm_1_lstm_cell_1_kernel:
еФ>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ-
lstm_1_lstm_1_lstm_cell_1_bias:	Ф4
 lstm_2_lstm_2_lstm_cell_2_kernel:
еФ>
*lstm_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ-
lstm_2_lstm_2_lstm_cell_2_bias:	Ф<
(time_distributed_time_distributed_kernel:
е╥5
&time_distributed_time_distributed_bias:	╥?
,time_distributed_2_time_distributed_2_kernel:	╥i8
*time_distributed_2_time_distributed_2_bias:i>
,time_distributed_4_time_distributed_4_kernel:i48
*time_distributed_4_time_distributed_4_bias:4>
,time_distributed_6_time_distributed_6_kernel:48
*time_distributed_6_time_distributed_6_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallвlstm_2/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallм
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_36692▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_36835▀
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0 lstm_2_lstm_2_lstm_cell_2_kernel*lstm_2_lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_36978╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_36996o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  и
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е√
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37010q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥ф
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37027q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ░
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥№
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37041q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iф
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37058q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   п
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i№
"time_distributed_5/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37072q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ф
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_5/PartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37089q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   п
time_distributed_6/ReshapeReshape+time_distributed_5/PartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_37102v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         ┘
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
Б
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40916

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥a
dropout/IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   А
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         ╥"
identityIdentity:output:0*+
_input_shapes
:         ╥:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
ыI
╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_39892
inputs_0O
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identityИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39810*
condR
while_cond_39809*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  е╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
ї
ё
&__inference_lstm_2_layer_call_fn_40178
inputs_0-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_35873}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
ї
ё
&__inference_lstm_2_layer_call_fn_40186
inputs_0-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_36047}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
Ш
Ў
while_cond_35658
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_35658___redundant_placeholder0-
)while_cond_35658___redundant_placeholder1-
)while_cond_35658___redundant_placeholder2-
)while_cond_35658___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ц
┴
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_41556

inputs
states_0
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФO
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
нI
╨
A__inference_lstm_2_layer_call_and_return_conditional_losses_40619

inputsO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40537*
condR
while_cond_40536*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
Е
F
*__inference_cropping1d_layer_call_fn_41364

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_37102d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄
╓
*__inference_sequential_layer_call_fn_38011

inputs(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biaslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37105s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
б
└
2__inference_time_distributed_2_layer_call_fn_40938

inputs,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_36255|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  i`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╥: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
╓
т
$__inference_lstm_layer_call_fn_39002
inputs_0(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф
identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_35229}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Ш
Ў
while_cond_39360
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39360___redundant_placeholder0-
)while_cond_39360___redundant_placeholder1-
)while_cond_39360___redundant_placeholder2-
)while_cond_39360___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ф
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37265

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   w
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         ╥"
identityIdentity:output:0*+
_input_shapes
:         ╥:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
О
┐
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35474

inputs

states
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФO
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:PL
(
_output_shapes
:         е
 
_user_specified_namestates:PL
(
_output_shapes
:         е
 
_user_specified_namestates
∙I
╗

E__inference_sequential_layer_call_and_return_conditional_losses_37965

lstm_input-
lstm_lstm_lstm_cell_kernel:	Ф8
$lstm_lstm_lstm_cell_recurrent_kernel:
еФ'
lstm_lstm_lstm_cell_bias:	Ф4
 lstm_1_lstm_1_lstm_cell_1_kernel:
еФ>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ-
lstm_1_lstm_1_lstm_cell_1_bias:	Ф4
 lstm_2_lstm_2_lstm_cell_2_kernel:
еФ>
*lstm_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ-
lstm_2_lstm_2_lstm_cell_2_bias:	Ф<
(time_distributed_time_distributed_kernel:
е╥5
&time_distributed_time_distributed_bias:	╥?
,time_distributed_2_time_distributed_2_kernel:	╥i8
*time_distributed_2_time_distributed_2_bias:i>
,time_distributed_4_time_distributed_4_kernel:i48
*time_distributed_4_time_distributed_4_bias:4>
,time_distributed_6_time_distributed_6_kernel:48
*time_distributed_6_time_distributed_6_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallвlstm_2/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallм
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_37755▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_37600▀
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0 lstm_2_lstm_2_lstm_cell_2_kernel*lstm_2_lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_37445╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_37291o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  и
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е√
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37265q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥ф
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37245q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ░
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥№
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37219q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iф
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37199q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   п
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i№
"time_distributed_5/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37173q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ф
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_5/PartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37153q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   п
time_distributed_6/ReshapeReshape+time_distributed_5/PartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_37102v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         ┘
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
░м
Є
!__inference__traced_restore_42048
file_prefix0
&assignvariableop_training_adagrad_iter:	 3
)assignvariableop_1_training_adagrad_decay: ;
1assignvariableop_2_training_adagrad_learning_rate: ;
(assignvariableop_3_lstm_lstm_cell_kernel:	ФF
2assignvariableop_4_lstm_lstm_cell_recurrent_kernel:
еФ5
&assignvariableop_5_lstm_lstm_cell_bias:	Ф@
,assignvariableop_6_lstm_1_lstm_cell_1_kernel:
еФJ
6assignvariableop_7_lstm_1_lstm_cell_1_recurrent_kernel:
еФ9
*assignvariableop_8_lstm_1_lstm_cell_1_bias:	Ф@
,assignvariableop_9_lstm_2_lstm_cell_2_kernel:
еФK
7assignvariableop_10_lstm_2_lstm_cell_2_recurrent_kernel:
еФ:
+assignvariableop_11_lstm_2_lstm_cell_2_bias:	Ф?
+assignvariableop_12_time_distributed_kernel:
е╥8
)assignvariableop_13_time_distributed_bias:	╥@
-assignvariableop_14_time_distributed_2_kernel:	╥i9
+assignvariableop_15_time_distributed_2_bias:i?
-assignvariableop_16_time_distributed_4_kernel:i49
+assignvariableop_17_time_distributed_4_bias:4?
-assignvariableop_18_time_distributed_6_kernel:49
+assignvariableop_19_time_distributed_6_bias:#
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: Y
Fassignvariableop_24_training_adagrad_lstm_lstm_cell_kernel_accumulator:	Фd
Passignvariableop_25_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulator:
еФS
Dassignvariableop_26_training_adagrad_lstm_lstm_cell_bias_accumulator:	Ф^
Jassignvariableop_27_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulator:
еФh
Tassignvariableop_28_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulator:
еФW
Hassignvariableop_29_training_adagrad_lstm_1_lstm_cell_1_bias_accumulator:	Ф^
Jassignvariableop_30_training_adagrad_lstm_2_lstm_cell_2_kernel_accumulator:
еФh
Tassignvariableop_31_training_adagrad_lstm_2_lstm_cell_2_recurrent_kernel_accumulator:
еФW
Hassignvariableop_32_training_adagrad_lstm_2_lstm_cell_2_bias_accumulator:	Ф\
Hassignvariableop_33_training_adagrad_time_distributed_kernel_accumulator:
е╥U
Fassignvariableop_34_training_adagrad_time_distributed_bias_accumulator:	╥]
Jassignvariableop_35_training_adagrad_time_distributed_2_kernel_accumulator:	╥iV
Hassignvariableop_36_training_adagrad_time_distributed_2_bias_accumulator:i\
Jassignvariableop_37_training_adagrad_time_distributed_4_kernel_accumulator:i4V
Hassignvariableop_38_training_adagrad_time_distributed_4_bias_accumulator:4\
Jassignvariableop_39_training_adagrad_time_distributed_6_kernel_accumulator:4V
Hassignvariableop_40_training_adagrad_time_distributed_6_bias_accumulator:
identity_42ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╘
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*·
valueЁBэ*B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/8/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/9/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/10/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/11/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/12/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/13/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/14/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/15/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/16/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH─
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B є
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╛
_output_shapesл
и::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:С
AssignVariableOpAssignVariableOp&assignvariableop_training_adagrad_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_1AssignVariableOp)assignvariableop_1_training_adagrad_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_2AssignVariableOp1assignvariableop_2_training_adagrad_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_3AssignVariableOp(assignvariableop_3_lstm_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_4AssignVariableOp2assignvariableop_4_lstm_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_5AssignVariableOp&assignvariableop_5_lstm_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_6AssignVariableOp,assignvariableop_6_lstm_1_lstm_cell_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_7AssignVariableOp6assignvariableop_7_lstm_1_lstm_cell_1_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_8AssignVariableOp*assignvariableop_8_lstm_1_lstm_cell_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_2_lstm_cell_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_10AssignVariableOp7assignvariableop_10_lstm_2_lstm_cell_2_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_11AssignVariableOp+assignvariableop_11_lstm_2_lstm_cell_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_12AssignVariableOp+assignvariableop_12_time_distributed_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_13AssignVariableOp)assignvariableop_13_time_distributed_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_14AssignVariableOp-assignvariableop_14_time_distributed_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_15AssignVariableOp+assignvariableop_15_time_distributed_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_16AssignVariableOp-assignvariableop_16_time_distributed_4_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_17AssignVariableOp+assignvariableop_17_time_distributed_4_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_18AssignVariableOp-assignvariableop_18_time_distributed_6_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_19AssignVariableOp+assignvariableop_19_time_distributed_6_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_24AssignVariableOpFassignvariableop_24_training_adagrad_lstm_lstm_cell_kernel_accumulatorIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_25AssignVariableOpPassignvariableop_25_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulatorIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_26AssignVariableOpDassignvariableop_26_training_adagrad_lstm_lstm_cell_bias_accumulatorIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_27AssignVariableOpJassignvariableop_27_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulatorIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_28AssignVariableOpTassignvariableop_28_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulatorIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_29AssignVariableOpHassignvariableop_29_training_adagrad_lstm_1_lstm_cell_1_bias_accumulatorIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_30AssignVariableOpJassignvariableop_30_training_adagrad_lstm_2_lstm_cell_2_kernel_accumulatorIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_31AssignVariableOpTassignvariableop_31_training_adagrad_lstm_2_lstm_cell_2_recurrent_kernel_accumulatorIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_32AssignVariableOpHassignvariableop_32_training_adagrad_lstm_2_lstm_cell_2_bias_accumulatorIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_33AssignVariableOpHassignvariableop_33_training_adagrad_time_distributed_kernel_accumulatorIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_34AssignVariableOpFassignvariableop_34_training_adagrad_time_distributed_bias_accumulatorIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_35AssignVariableOpJassignvariableop_35_training_adagrad_time_distributed_2_kernel_accumulatorIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_36AssignVariableOpHassignvariableop_36_training_adagrad_time_distributed_2_bias_accumulatorIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_37AssignVariableOpJassignvariableop_37_training_adagrad_time_distributed_4_kernel_accumulatorIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_38AssignVariableOpHassignvariableop_38_training_adagrad_time_distributed_4_bias_accumulatorIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_39AssignVariableOpJassignvariableop_39_training_adagrad_time_distributed_6_kernel_accumulatorIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_40AssignVariableOpHassignvariableop_40_training_adagrad_time_distributed_6_bias_accumulatorIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╒
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_42IdentityIdentity_41:output:0^NoOp_1*
T0*
_output_shapes
: ┬
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Г
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41139

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:i4D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:4
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  4З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  i: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_40031

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identityИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39949*
condR
while_cond_39948*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
¤
└
2__inference_time_distributed_2_layer_call_fn_40952

inputs,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37245s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         i`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╥: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
╫
о
lstm_1_while_cond_38706
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_1_strided_slice_14
0lstm_1_while_cond_38706___redundant_placeholder04
0lstm_1_while_cond_38706___redundant_placeholder14
0lstm_1_while_cond_38706___redundant_placeholder24
0lstm_1_while_cond_38706___redundant_placeholder3
identity
W
LessLessplaceholderless_lstm_1_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╦╩
И
E__inference_sequential_layer_call_and_return_conditional_losses_38994

inputsM
:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФZ
Flstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФH
9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФV
Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФb
Nlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФP
Alstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФV
Blstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФb
Nlstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФP
Alstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФX
Dtime_distributed_dense_matmul_readvariableop_time_distributed_kernel:
е╥R
Ctime_distributed_dense_biasadd_readvariableop_time_distributed_bias:	╥]
Jtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iW
Itime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:i\
Jtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:i4W
Itime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:4\
Jtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel:4W
Itime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИв%lstm/lstm_cell/BiasAdd/ReadVariableOpв$lstm/lstm_cell/MatMul/ReadVariableOpв&lstm/lstm_cell/MatMul_1/ReadVariableOpв
lstm/whileв)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpв(lstm_1/lstm_cell_1/MatMul/ReadVariableOpв*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpвlstm_1/whileв)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpв(lstm_2/lstm_cell_2/MatMul/ReadVariableOpв*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpвlstm_2/whileв-time_distributed/dense/BiasAdd/ReadVariableOpв,time_distributed/dense/MatMul/ReadVariableOpв1time_distributed_2/dense_1/BiasAdd/ReadVariableOpв0time_distributed_2/dense_1/MatMul/ReadVariableOpв1time_distributed_4/dense_2/BiasAdd/ReadVariableOpв0time_distributed_4/dense_2/MatMul/ReadVariableOpв1time_distributed_6/dense_3/BiasAdd/ReadVariableOpв0time_distributed_6/dense_3/MatMul/ReadVariableOp@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еВ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         еX
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еЖ
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:         N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Л
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:В
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskа
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Я
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0Щ
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФТ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0Ы
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splits
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:         еu
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:         еБ
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:         еЙ
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:         еВ
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еu
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:         еЖ
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еs
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╟
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_38572*!
condR
lstm_while_cond_38571*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Ж
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╥
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ж
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         е`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    P
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еИ
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:         еZ
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еМ
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          К
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:         еR
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ї
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskн
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpBlstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0й
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф╗
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0г
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЮ
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         Фи
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0з
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_split{
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:         е}
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еЛ
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:         еХ
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еО
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         е}
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:         еТ
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еu
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ═
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ю
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_38707*#
condR
lstm_1_while_cond_38706*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations И
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╪
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еb
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    R
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еИ
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:         еZ
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еМ
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еj
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          М
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:         еR
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:f
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ї
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskн
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpBlstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0й
lstm_2/lstm_cell_2/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф╗
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpNlstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0г
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЮ
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         Фи
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpAlstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0з
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фd
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_split{
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:         е}
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еЛ
lstm_2/lstm_cell_2/mulMul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:         еХ
lstm_2/lstm_cell_2/mul_1Mullstm_2/lstm_cell_2/Sigmoid:y:0!lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еО
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul:z:0lstm_2/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         е}
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:         еТ
lstm_2/lstm_cell_2/mul_2Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0lstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еu
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ═
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ю
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Blstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelNlstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelAlstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_2_while_body_38842*#
condR
lstm_2_while_cond_38841*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations И
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╪
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0o
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskl
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еb
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ч
time_distributed/ReshapeReshapelstm_2/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е│
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOpDtime_distributed_dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0│
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥о
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpCtime_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0╝
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   ░
time_distributed/Reshape_1Reshape'time_distributed/dense/BiasAdd:output:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ы
time_distributed/Reshape_2Reshapelstm_2/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         еq
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   и
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   ░
time_distributed_1/Reshape_1Reshape#time_distributed_1/Reshape:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   м
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╥q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   к
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥╝
0time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpJtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0╝
!time_distributed_2/dense_1/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i╖
1time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0╟
"time_distributed_2/dense_1/BiasAddBiasAdd+time_distributed_2/dense_1/MatMul:product:09time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iw
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ╖
time_distributed_2/Reshape_1Reshape+time_distributed_2/dense_1/BiasAdd:output:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         is
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   о
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╥q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   й
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iw
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   п
time_distributed_3/Reshape_1Reshape#time_distributed_3/Reshape:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         is
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   н
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         iq
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   й
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i╗
0time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpJtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0╝
!time_distributed_4/dense_2/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4╖
1time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0╟
"time_distributed_4/dense_2/BiasAddBiasAdd+time_distributed_4/dense_2/MatMul:product:09time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4w
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ╖
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_2/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4s
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   н
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         iq
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   й
time_distributed_5/ReshapeReshape%time_distributed_4/Reshape_1:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4w
"time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   п
time_distributed_5/Reshape_1Reshape#time_distributed_5/Reshape:output:0+time_distributed_5/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4s
"time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   н
time_distributed_5/Reshape_2Reshape%time_distributed_4/Reshape_1:output:0+time_distributed_5/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         4q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   й
time_distributed_6/ReshapeReshape%time_distributed_5/Reshape_1:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4╗
0time_distributed_6/dense_3/MatMul/ReadVariableOpReadVariableOpJtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0╝
!time_distributed_6/dense_3/MatMulMatMul#time_distributed_6/Reshape:output:08time_distributed_6/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╖
1time_distributed_6/dense_3/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0╟
"time_distributed_6/dense_3/BiasAddBiasAdd+time_distributed_6/dense_3/MatMul:product:09time_distributed_6/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
"time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
time_distributed_6/Reshape_1Reshape+time_distributed_6/dense_3/BiasAdd:output:0+time_distributed_6/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   н
time_distributed_6/Reshape_2Reshape%time_distributed_5/Reshape_1:output:0+time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         4s
cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       u
 cropping1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            u
 cropping1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         │
cropping1d/strided_sliceStridedSlice%time_distributed_6/Reshape_1:output:0'cropping1d/strided_slice/stack:output:0)cropping1d/strided_slice/stack_1:output:0)cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskt
IdentityIdentity!cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:         Е
NoOpNoOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_2/dense_1/BiasAdd/ReadVariableOp1^time_distributed_2/dense_1/MatMul/ReadVariableOp2^time_distributed_4/dense_2/BiasAdd/ReadVariableOp1^time_distributed_4/dense_2/MatMul/ReadVariableOp2^time_distributed_6/dense_3/BiasAdd/ReadVariableOp1^time_distributed_6/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_2/dense_1/BiasAdd/ReadVariableOp1time_distributed_2/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_2/dense_1/MatMul/ReadVariableOp0time_distributed_2/dense_1/MatMul/ReadVariableOp2f
1time_distributed_4/dense_2/BiasAdd/ReadVariableOp1time_distributed_4/dense_2/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_2/MatMul/ReadVariableOp0time_distributed_4/dense_2/MatMul/ReadVariableOp2f
1time_distributed_6/dense_3/BiasAdd/ReadVariableOp1time_distributed_6/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_6/dense_3/MatMul/ReadVariableOp0time_distributed_6/dense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш
Ў
while_cond_40675
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_40675___redundant_placeholder0-
)while_cond_40675___redundant_placeholder1-
)while_cond_40675___redundant_placeholder2-
)while_cond_40675___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ш
Ў
while_cond_35162
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_35162___redundant_placeholder0-
)while_cond_35162___redundant_placeholder1-
)while_cond_35162___redundant_placeholder2-
)while_cond_35162___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ц
┴
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_41644

inputs
states_0
states_1C
/matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФO
;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
н
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_36415

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         4[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         4"!

identity_1Identity_1:output:0*&
_input_shapes
:         4:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
Х
N
2__inference_time_distributed_3_layer_call_fn_41037

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37041d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         i"
identityIdentity:output:0**
_input_shapes
:         i:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
с
п
while_body_35163
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!lstm_cell_lstm_lstm_cell_kernel_0:	Ф?
+lstm_cell_lstm_lstm_cell_recurrent_kernel_0:
еФ.
lstm_cell_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
lstm_cell_lstm_lstm_cell_kernel:	Ф=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
еФ,
lstm_cell_lstm_lstm_cell_bias:	ФИв!lstm_cell/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3!lstm_cell_lstm_lstm_cell_kernel_0+lstm_cell_lstm_lstm_cell_recurrent_kernel_0lstm_cell_lstm_lstm_cell_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35152┴
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder*lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: |

Identity_4Identity*lstm_cell/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         е|

Identity_5Identity*lstm_cell/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         еj
NoOpNoOp"^lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"@
lstm_cell_lstm_lstm_cell_biaslstm_cell_lstm_lstm_cell_bias_0"D
lstm_cell_lstm_lstm_cell_kernel!lstm_cell_lstm_lstm_cell_kernel_0"X
)lstm_cell_lstm_lstm_cell_recurrent_kernel+lstm_cell_lstm_lstm_cell_recurrent_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╨ 
╫
while_body_35659
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0:
еФE
1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФ4
%lstm_cell_1_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
еФC
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	ФИв#lstm_cell_1/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0╟
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_1_lstm_1_lstm_cell_1_kernel_01lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0%lstm_cell_1_lstm_1_lstm_cell_1_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35606├
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder,lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: ~

Identity_4Identity,lstm_cell_1/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         е~

Identity_5Identity,lstm_cell_1/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         еl
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"L
#lstm_cell_1_lstm_1_lstm_cell_1_bias%lstm_cell_1_lstm_1_lstm_cell_1_bias_0"P
%lstm_cell_1_lstm_1_lstm_cell_1_kernel'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0"d
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
Ш
Ў
while_cond_40258
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_40258___redundant_placeholder0-
)while_cond_40258___redundant_placeholder1-
)while_cond_40258___redundant_placeholder2-
)while_cond_40258___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
▐	
Р
@__inference_dense_layer_call_and_return_conditional_losses_41661

inputsA
-matmul_readvariableop_time_distributed_kernel:
е╥;
,biasadd_readvariableop_time_distributed_bias:	╥
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp-matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥А
BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         ╥w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         е: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs
╫
о
lstm_1_while_cond_38224
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_1_strided_slice_14
0lstm_1_while_cond_38224___redundant_placeholder04
0lstm_1_while_cond_38224___redundant_placeholder14
0lstm_1_while_cond_38224___redundant_placeholder24
0lstm_1_while_cond_38224___redundant_placeholder3
identity
W
LessLessplaceholderless_lstm_1_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╜
N
2__inference_time_distributed_1_layer_call_fn_40861

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_36150n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:                  ╥"
identityIdentity:output:0*4
_input_shapes#
!:                  ╥:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
Ш
Ў
while_cond_39670
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39670___redundant_placeholder0-
)while_cond_39670___redundant_placeholder1-
)while_cond_39670___redundant_placeholder2-
)while_cond_39670___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
┐
░
+__inference_lstm_cell_2_layer_call_fn_41570

inputs
states_0
states_1-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф
identity

identity_1

identity_2ИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35796p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         еr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         еr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
║
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41058

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         ib
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         i\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  ig
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  i"
identityIdentity:output:0*3
_input_shapes"
 :                  i:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
ї
╝
0__inference_time_distributed_layer_call_fn_40786

inputs+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_37291t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ╥`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         е: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╦
я
&__inference_lstm_1_layer_call_fn_39614

inputs-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_37600t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
є
E
)__inference_dropout_2_layer_call_fn_41743

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_36437`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         4"
identityIdentity:output:0*&
_input_shapes
:         4:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
▄
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_36544

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ·
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*=
_output_shapes+
):'                           *

begin_mask*
end_maskt
IdentityIdentitystrided_slice:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
╩
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41239

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  4"
identityIdentity:output:0*3
_input_shapes"
 :                  4:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
Г
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41305

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:4D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  4: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
╩
`
D__inference_dropout_1_layer_call_and_return_conditional_losses_41716

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:         i"
identityIdentity:output:0*&
_input_shapes
:         i:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
Г
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41326

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:4D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  4: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
с
п
while_body_35337
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!lstm_cell_lstm_lstm_cell_kernel_0:	Ф?
+lstm_cell_lstm_lstm_cell_recurrent_kernel_0:
еФ.
lstm_cell_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
lstm_cell_lstm_lstm_cell_kernel:	Ф=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
еФ,
lstm_cell_lstm_lstm_cell_bias:	ФИв!lstm_cell/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3!lstm_cell_lstm_lstm_cell_kernel_0+lstm_cell_lstm_lstm_cell_recurrent_kernel_0lstm_cell_lstm_lstm_cell_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35284┴
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder*lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: |

Identity_4Identity*lstm_cell/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         е|

Identity_5Identity*lstm_cell/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         еj
NoOpNoOp"^lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"@
lstm_cell_lstm_lstm_cell_biaslstm_cell_lstm_lstm_cell_bias_0"D
lstm_cell_lstm_lstm_cell_kernel!lstm_cell_lstm_lstm_cell_kernel_0"X
)lstm_cell_lstm_lstm_cell_recurrent_kernel+lstm_cell_lstm_lstm_cell_recurrent_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
И
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_40994

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:i
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Ц
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  in
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  iЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╥: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
Х
N
2__inference_time_distributed_3_layer_call_fn_41042

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37219d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         i"
identityIdentity:output:0**
_input_shapes
:         i:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
╫
╡
'__inference_dense_1_layer_call_fn_41687

inputs,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_36213o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         i`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         ╥: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
╦
^
B__inference_dropout_layer_call_and_return_conditional_losses_41680

inputs
identityO
IdentityIdentityinputs*
T0*(
_output_shapes
:         ╥"
identityIdentity:output:0*'
_input_shapes
:         ╥:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
ыI
╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_39753
inputs_0O
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identityИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39671*
condR
while_cond_39670*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  е╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
▄
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_41372

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ·
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*=
_output_shapes+
):'                           *

begin_mask*
end_maskt
IdentityIdentitystrided_slice:output:0*
T0*=
_output_shapes+
):'                           "
identityIdentity:output:0*<
_input_shapes+
):'                           :e a
=
_output_shapes+
):'                           
 
_user_specified_nameinputs
Ш
Ў
while_cond_39082
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39082___redundant_placeholder0-
)while_cond_39082___redundant_placeholder1-
)while_cond_39082___redundant_placeholder2-
)while_cond_39082___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
ш
┌
*__inference_sequential_layer_call_fn_37873

lstm_input(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biaslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37831s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╨H
╖
?__inference_lstm_layer_call_and_return_conditional_losses_39304
inputs_0H
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фе
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФТ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39222*
condR
while_cond_39221*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  е╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_37600

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identityИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_37518*
condR
while_cond_37517*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
м9
┬
A__inference_lstm_2_layer_call_and_return_conditional_losses_36047

inputs9
%lstm_cell_2_lstm_2_lstm_cell_2_kernel:
еФC
/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ2
#lstm_cell_2_lstm_2_lstm_cell_2_bias:	Ф
identityИв#lstm_cell_2/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_mask│
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_2_lstm_2_lstm_cell_2_kernel/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel#lstm_cell_2_lstm_2_lstm_cell_2_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35928n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0%lstm_cell_2_lstm_2_lstm_cell_2_kernel/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel#lstm_cell_2_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_35981*
condR
while_cond_35980*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  еt
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
▀Д
■
 __inference__wrapped_model_35087

lstm_inputX
Esequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	Фe
Qsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФS
Dsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Фa
Msequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФm
Ysequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФ[
Lsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Фa
Msequential_lstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФm
Ysequential_lstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФ[
Lsequential_lstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Фc
Osequential_time_distributed_dense_matmul_readvariableop_time_distributed_kernel:
е╥]
Nsequential_time_distributed_dense_biasadd_readvariableop_time_distributed_bias:	╥h
Usequential_time_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥ib
Tsequential_time_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:ig
Usequential_time_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:i4b
Tsequential_time_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:4g
Usequential_time_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel:4b
Tsequential_time_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИв0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpв/sequential/lstm/lstm_cell/MatMul/ReadVariableOpв1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpвsequential/lstm/whileв4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpв3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpв5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpвsequential/lstm_1/whileв4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpв3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOpв5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpвsequential/lstm_2/whileв8sequential/time_distributed/dense/BiasAdd/ReadVariableOpв7sequential/time_distributed/dense/MatMul/ReadVariableOpв<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOpв;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOpв<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOpв;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOpв<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOpв;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOpO
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ег
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         еc
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ез
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    г
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еs
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:         d
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ф
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ц
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Р
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥o
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╢
/sequential/lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOpEsequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0└
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:07sequential/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф┼
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpQsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0║
"sequential/lstm/lstm_cell/MatMul_1MatMulsequential/lstm/zeros:output:09sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф│
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/MatMul:product:0,sequential/lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Ф▓
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpDsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0╝
!sequential/lstm/lstm_cell/BiasAddBiasAdd!sequential/lstm/lstm_cell/add:z:08sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фk
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:0*sequential/lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitЙ
!sequential/lstm/lstm_cell/SigmoidSigmoid(sequential/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:         еЛ
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid(sequential/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ев
sequential/lstm/lstm_cell/mulMul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*(
_output_shapes
:         ек
sequential/lstm/lstm_cell/mul_1Mul%sequential/lstm/lstm_cell/Sigmoid:y:0(sequential/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ег
sequential/lstm/lstm_cell/add_1AddV2!sequential/lstm/lstm_cell/mul:z:0#sequential/lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еЛ
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid(sequential/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ез
sequential/lstm/lstm_cell/mul_2Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0#sequential/lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         е~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ш
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥V
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Esequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelQsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelDsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 sequential_lstm_while_body_34662*,
cond$R"
 sequential_lstm_while_cond_34661*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations С
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  є
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╪
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╟
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еk
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    f
sequential/lstm_1/ShapeShapesequential/lstm/transpose_1:y:0*
T0*
_output_shapes
:o
%sequential/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
sequential/lstm_1/strided_sliceStridedSlice sequential/lstm_1/Shape:output:0.sequential/lstm_1/strided_slice/stack:output:00sequential/lstm_1/strided_slice/stack_1:output:00sequential/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 sequential/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ей
sequential/lstm_1/zeros/packedPack(sequential/lstm_1/strided_slice:output:0)sequential/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    г
sequential/lstm_1/zerosFill'sequential/lstm_1/zeros/packed:output:0&sequential/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:         еe
"sequential/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ен
 sequential/lstm_1/zeros_1/packedPack(sequential/lstm_1/strided_slice:output:0+sequential/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    й
sequential/lstm_1/zeros_1Fill)sequential/lstm_1/zeros_1/packed:output:0(sequential/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еu
 sequential/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
sequential/lstm_1/transpose	Transposesequential/lstm/transpose_1:y:0)sequential/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:         еh
sequential/lstm_1/Shape_1Shapesequential/lstm_1/transpose:y:0*
T0*
_output_shapes
:q
'sequential/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!sequential/lstm_1/strided_slice_1StridedSlice"sequential/lstm_1/Shape_1:output:00sequential/lstm_1/strided_slice_1/stack:output:02sequential/lstm_1/strided_slice_1/stack_1:output:02sequential/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-sequential/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ъ
sequential/lstm_1/TensorArrayV2TensorListReserve6sequential/lstm_1/TensorArrayV2/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ш
Gsequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ц
9sequential/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_1/transpose:y:0Psequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥q
'sequential/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
!sequential/lstm_1/strided_slice_2StridedSlicesequential/lstm_1/transpose:y:00sequential/lstm_1/strided_slice_2/stack:output:02sequential/lstm_1/strided_slice_2/stack_1:output:02sequential/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_mask├
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpMsequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0╩
$sequential/lstm_1/lstm_cell_1/MatMulMatMul*sequential/lstm_1/strided_slice_2:output:0;sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф╤
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpYsequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0─
&sequential/lstm_1/lstm_cell_1/MatMul_1MatMul sequential/lstm_1/zeros:output:0=sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф┐
!sequential/lstm_1/lstm_cell_1/addAddV2.sequential/lstm_1/lstm_cell_1/MatMul:product:00sequential/lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         Ф╛
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpLsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0╚
%sequential/lstm_1/lstm_cell_1/BiasAddBiasAdd%sequential/lstm_1/lstm_cell_1/add:z:0<sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фo
-sequential/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
#sequential/lstm_1/lstm_cell_1/splitSplit6sequential/lstm_1/lstm_cell_1/split/split_dim:output:0.sequential/lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitС
%sequential/lstm_1/lstm_cell_1/SigmoidSigmoid,sequential/lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еУ
'sequential/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ем
!sequential/lstm_1/lstm_cell_1/mulMul+sequential/lstm_1/lstm_cell_1/Sigmoid_1:y:0"sequential/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:         е╢
#sequential/lstm_1/lstm_cell_1/mul_1Mul)sequential/lstm_1/lstm_cell_1/Sigmoid:y:0,sequential/lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еп
#sequential/lstm_1/lstm_cell_1/add_1AddV2%sequential/lstm_1/lstm_cell_1/mul:z:0'sequential/lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еУ
'sequential/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е│
#sequential/lstm_1/lstm_cell_1/mul_2Mul+sequential/lstm_1/lstm_cell_1/Sigmoid_2:y:0'sequential/lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еА
/sequential/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ю
!sequential/lstm_1/TensorArrayV2_1TensorListReserve8sequential/lstm_1/TensorArrayV2_1/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥X
sequential/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : u
*sequential/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         f
$sequential/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╕
sequential/lstm_1/whileWhile-sequential/lstm_1/while/loop_counter:output:03sequential/lstm_1/while/maximum_iterations:output:0sequential/lstm_1/time:output:0*sequential/lstm_1/TensorArrayV2_1:handle:0 sequential/lstm_1/zeros:output:0"sequential/lstm_1/zeros_1:output:0*sequential/lstm_1/strided_slice_1:output:0Isequential/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelYsequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelLsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"sequential_lstm_1_while_body_34797*.
cond&R$
"sequential_lstm_1_while_cond_34796*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations У
Bsequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ∙
4sequential/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_1/while:output:3Ksequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0z
'sequential/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         s
)sequential/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
!sequential/lstm_1/strided_slice_3StridedSlice=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_1/strided_slice_3/stack:output:02sequential/lstm_1/strided_slice_3/stack_1:output:02sequential/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskw
"sequential/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ═
sequential/lstm_1/transpose_1	Transpose=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еm
sequential/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
sequential/lstm_2/ShapeShape!sequential/lstm_1/transpose_1:y:0*
T0*
_output_shapes
:o
%sequential/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
sequential/lstm_2/strided_sliceStridedSlice sequential/lstm_2/Shape:output:0.sequential/lstm_2/strided_slice/stack:output:00sequential/lstm_2/strided_slice/stack_1:output:00sequential/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 sequential/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ей
sequential/lstm_2/zeros/packedPack(sequential/lstm_2/strided_slice:output:0)sequential/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    г
sequential/lstm_2/zerosFill'sequential/lstm_2/zeros/packed:output:0&sequential/lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:         еe
"sequential/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ен
 sequential/lstm_2/zeros_1/packedPack(sequential/lstm_2/strided_slice:output:0+sequential/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    й
sequential/lstm_2/zeros_1Fill)sequential/lstm_2/zeros_1/packed:output:0(sequential/lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:         еu
 sequential/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          н
sequential/lstm_2/transpose	Transpose!sequential/lstm_1/transpose_1:y:0)sequential/lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:         еh
sequential/lstm_2/Shape_1Shapesequential/lstm_2/transpose:y:0*
T0*
_output_shapes
:q
'sequential/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!sequential/lstm_2/strided_slice_1StridedSlice"sequential/lstm_2/Shape_1:output:00sequential/lstm_2/strided_slice_1/stack:output:02sequential/lstm_2/strided_slice_1/stack_1:output:02sequential/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-sequential/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ъ
sequential/lstm_2/TensorArrayV2TensorListReserve6sequential/lstm_2/TensorArrayV2/element_shape:output:0*sequential/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ш
Gsequential/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ц
9sequential/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_2/transpose:y:0Psequential/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥q
'sequential/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
!sequential/lstm_2/strided_slice_2StridedSlicesequential/lstm_2/transpose:y:00sequential/lstm_2/strided_slice_2/stack:output:02sequential/lstm_2/strided_slice_2/stack_1:output:02sequential/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_mask├
3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpMsequential_lstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0╩
$sequential/lstm_2/lstm_cell_2/MatMulMatMul*sequential/lstm_2/strided_slice_2:output:0;sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф╤
5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpYsequential_lstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0─
&sequential/lstm_2/lstm_cell_2/MatMul_1MatMul sequential/lstm_2/zeros:output:0=sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф┐
!sequential/lstm_2/lstm_cell_2/addAddV2.sequential/lstm_2/lstm_cell_2/MatMul:product:00sequential/lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         Ф╛
4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpLsequential_lstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0╚
%sequential/lstm_2/lstm_cell_2/BiasAddBiasAdd%sequential/lstm_2/lstm_cell_2/add:z:0<sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фo
-sequential/lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
#sequential/lstm_2/lstm_cell_2/splitSplit6sequential/lstm_2/lstm_cell_2/split/split_dim:output:0.sequential/lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitС
%sequential/lstm_2/lstm_cell_2/SigmoidSigmoid,sequential/lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еУ
'sequential/lstm_2/lstm_cell_2/Sigmoid_1Sigmoid,sequential/lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:         ем
!sequential/lstm_2/lstm_cell_2/mulMul+sequential/lstm_2/lstm_cell_2/Sigmoid_1:y:0"sequential/lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:         е╢
#sequential/lstm_2/lstm_cell_2/mul_1Mul)sequential/lstm_2/lstm_cell_2/Sigmoid:y:0,sequential/lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еп
#sequential/lstm_2/lstm_cell_2/add_1AddV2%sequential/lstm_2/lstm_cell_2/mul:z:0'sequential/lstm_2/lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еУ
'sequential/lstm_2/lstm_cell_2/Sigmoid_2Sigmoid,sequential/lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е│
#sequential/lstm_2/lstm_cell_2/mul_2Mul+sequential/lstm_2/lstm_cell_2/Sigmoid_2:y:0'sequential/lstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еА
/sequential/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ю
!sequential/lstm_2/TensorArrayV2_1TensorListReserve8sequential/lstm_2/TensorArrayV2_1/element_shape:output:0*sequential/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥X
sequential/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : u
*sequential/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         f
$sequential/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╕
sequential/lstm_2/whileWhile-sequential/lstm_2/while/loop_counter:output:03sequential/lstm_2/while/maximum_iterations:output:0sequential/lstm_2/time:output:0*sequential/lstm_2/TensorArrayV2_1:handle:0 sequential/lstm_2/zeros:output:0"sequential/lstm_2/zeros_1:output:0*sequential/lstm_2/strided_slice_1:output:0Isequential/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_lstm_2_lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelYsequential_lstm_2_lstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelLsequential_lstm_2_lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"sequential_lstm_2_while_body_34932*.
cond&R$
"sequential_lstm_2_while_cond_34931*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations У
Bsequential/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ∙
4sequential/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_2/while:output:3Ksequential/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0z
'sequential/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         s
)sequential/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
!sequential/lstm_2/strided_slice_3StridedSlice=sequential/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_2/strided_slice_3/stack:output:02sequential/lstm_2/strided_slice_3/stack_1:output:02sequential/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskw
"sequential/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ═
sequential/lstm_2/transpose_1	Transpose=sequential/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:         еm
sequential/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    z
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
#sequential/time_distributed/ReshapeReshape!sequential/lstm_2/transpose_1:y:02sequential/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е╔
7sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOpOsequential_time_distributed_dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0╘
(sequential/time_distributed/dense/MatMulMatMul,sequential/time_distributed/Reshape:output:0?sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥─
8sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpNsequential_time_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0▌
)sequential/time_distributed/dense/BiasAddBiasAdd2sequential/time_distributed/dense/MatMul:product:0@sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥А
+sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   ╤
%sequential/time_distributed/Reshape_1Reshape2sequential/time_distributed/dense/BiasAdd:output:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥|
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╝
%sequential/time_distributed/Reshape_2Reshape!sequential/lstm_2/transpose_1:y:04sequential/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         е|
+sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╔
%sequential/time_distributed_1/ReshapeReshape.sequential/time_distributed/Reshape_1:output:04sequential/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥Э
.sequential/time_distributed_1/dropout/IdentityIdentity.sequential/time_distributed_1/Reshape:output:0*
T0*(
_output_shapes
:         ╥В
-sequential/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   ┌
'sequential/time_distributed_1/Reshape_1Reshape7sequential/time_distributed_1/dropout/Identity:output:06sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥~
-sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ═
'sequential/time_distributed_1/Reshape_2Reshape.sequential/time_distributed/Reshape_1:output:06sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╥|
+sequential/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╦
%sequential/time_distributed_2/ReshapeReshape0sequential/time_distributed_1/Reshape_1:output:04sequential/time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥╥
;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0▌
,sequential/time_distributed_2/dense_1/MatMulMatMul.sequential/time_distributed_2/Reshape:output:0Csequential/time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i═
<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0ш
-sequential/time_distributed_2/dense_1/BiasAddBiasAdd6sequential/time_distributed_2/dense_1/MatMul:product:0Dsequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iВ
-sequential/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ╪
'sequential/time_distributed_2/Reshape_1Reshape6sequential/time_distributed_2/dense_1/BiasAdd:output:06sequential/time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         i~
-sequential/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╧
'sequential/time_distributed_2/Reshape_2Reshape0sequential/time_distributed_1/Reshape_1:output:06sequential/time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╥|
+sequential/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╩
%sequential/time_distributed_3/ReshapeReshape0sequential/time_distributed_2/Reshape_1:output:04sequential/time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iЮ
0sequential/time_distributed_3/dropout_1/IdentityIdentity.sequential/time_distributed_3/Reshape:output:0*
T0*'
_output_shapes
:         iВ
-sequential/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   █
'sequential/time_distributed_3/Reshape_1Reshape9sequential/time_distributed_3/dropout_1/Identity:output:06sequential/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         i~
-sequential/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╬
'sequential/time_distributed_3/Reshape_2Reshape0sequential/time_distributed_2/Reshape_1:output:06sequential/time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         i|
+sequential/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╩
%sequential/time_distributed_4/ReshapeReshape0sequential/time_distributed_3/Reshape_1:output:04sequential/time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i╤
;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0▌
,sequential/time_distributed_4/dense_2/MatMulMatMul.sequential/time_distributed_4/Reshape:output:0Csequential/time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4═
<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0ш
-sequential/time_distributed_4/dense_2/BiasAddBiasAdd6sequential/time_distributed_4/dense_2/MatMul:product:0Dsequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4В
-sequential/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ╪
'sequential/time_distributed_4/Reshape_1Reshape6sequential/time_distributed_4/dense_2/BiasAdd:output:06sequential/time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4~
-sequential/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╬
'sequential/time_distributed_4/Reshape_2Reshape0sequential/time_distributed_3/Reshape_1:output:06sequential/time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         i|
+sequential/time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╩
%sequential/time_distributed_5/ReshapeReshape0sequential/time_distributed_4/Reshape_1:output:04sequential/time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4Ю
0sequential/time_distributed_5/dropout_2/IdentityIdentity.sequential/time_distributed_5/Reshape:output:0*
T0*'
_output_shapes
:         4В
-sequential/time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   █
'sequential/time_distributed_5/Reshape_1Reshape9sequential/time_distributed_5/dropout_2/Identity:output:06sequential/time_distributed_5/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4~
-sequential/time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╬
'sequential/time_distributed_5/Reshape_2Reshape0sequential/time_distributed_4/Reshape_1:output:06sequential/time_distributed_5/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         4|
+sequential/time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╩
%sequential/time_distributed_6/ReshapeReshape0sequential/time_distributed_5/Reshape_1:output:04sequential/time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4╤
;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0▌
,sequential/time_distributed_6/dense_3/MatMulMatMul.sequential/time_distributed_6/Reshape:output:0Csequential/time_distributed_6/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ═
<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0ш
-sequential/time_distributed_6/dense_3/BiasAddBiasAdd6sequential/time_distributed_6/dense_3/MatMul:product:0Dsequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
-sequential/time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╪
'sequential/time_distributed_6/Reshape_1Reshape6sequential/time_distributed_6/dense_3/BiasAdd:output:06sequential/time_distributed_6/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ~
-sequential/time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╬
'sequential/time_distributed_6/Reshape_2Reshape0sequential/time_distributed_5/Reshape_1:output:06sequential/time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         4~
)sequential/cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       А
+sequential/cropping1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            А
+sequential/cropping1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ъ
#sequential/cropping1d/strided_sliceStridedSlice0sequential/time_distributed_6/Reshape_1:output:02sequential/cropping1d/strided_slice/stack:output:04sequential/cropping1d/strided_slice/stack_1:output:04sequential/cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_mask
IdentityIdentity,sequential/cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:         с
NoOpNoOp1^sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0^sequential/lstm/lstm_cell/MatMul/ReadVariableOp2^sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp^sequential/lstm/while5^sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4^sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp6^sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^sequential/lstm_1/while5^sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp4^sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp6^sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^sequential/lstm_2/while9^sequential/time_distributed/dense/BiasAdd/ReadVariableOp8^sequential/time_distributed/dense/MatMul/ReadVariableOp=^sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp<^sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp=^sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp<^sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp=^sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp<^sequential/time_distributed_6/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2d
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp2b
/sequential/lstm/lstm_cell/MatMul/ReadVariableOp/sequential/lstm/lstm_cell/MatMul/ReadVariableOp2f
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while2l
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2j
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp2n
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp22
sequential/lstm_1/whilesequential/lstm_1/while2l
4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2j
3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp2n
5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp22
sequential/lstm_2/whilesequential/lstm_2/while2t
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp8sequential/time_distributed/dense/BiasAdd/ReadVariableOp2r
7sequential/time_distributed/dense/MatMul/ReadVariableOp7sequential/time_distributed/dense/MatMul/ReadVariableOp2|
<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp2|
<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp2|
<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOp;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOp:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
┬
Є
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_36391

inputs3
!dense_2_time_distributed_4_kernel:i4-
dense_2_time_distributed_4_bias:4
identityИвdense_2/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iЩ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_2_time_distributed_4_kerneldense_2_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_36349\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  4h
NoOpNoOp ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  i: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41354

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:4D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         4: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
у8
л
?__inference_lstm_layer_call_and_return_conditional_losses_35403

inputs2
lstm_cell_lstm_lstm_cell_kernel:	Ф=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
еФ,
lstm_cell_lstm_lstm_cell_bias:	Ф
identityИв!lstm_cell/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35284n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_35337*
condR
while_cond_35336*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  еr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
Ж
"sequential_lstm_1_while_cond_34796(
$sequential_lstm_1_while_loop_counter.
*sequential_lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3*
&less_sequential_lstm_1_strided_slice_1?
;sequential_lstm_1_while_cond_34796___redundant_placeholder0?
;sequential_lstm_1_while_cond_34796___redundant_placeholder1?
;sequential_lstm_1_while_cond_34796___redundant_placeholder2?
;sequential_lstm_1_while_cond_34796___redundant_placeholder3
identity
b
LessLessplaceholder&less_sequential_lstm_1_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
 
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37041

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         ib
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   Б
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         i^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         i"
identityIdentity:output:0**
_input_shapes
:         i:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
╫
о
lstm_2_while_cond_38359
lstm_2_while_loop_counter#
lstm_2_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_2_strided_slice_14
0lstm_2_while_cond_38359___redundant_placeholder04
0lstm_2_while_cond_38359___redundant_placeholder14
0lstm_2_while_cond_38359___redundant_placeholder24
0lstm_2_while_cond_38359___redundant_placeholder3
identity
W
LessLessplaceholderless_lstm_2_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
М0
■
while_body_39222
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
є
E
)__inference_dropout_1_layer_call_fn_41707

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_36301`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         i"
identityIdentity:output:0*&
_input_shapes
:         i:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
╣
N
2__inference_time_distributed_5_layer_call_fn_41193

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_36422m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  4"
identityIdentity:output:0*3
_input_shapes"
 :                  4:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41188

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:i4D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:4
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         4З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         i: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
ў
▓
D__inference_lstm_cell_layer_call_and_return_conditional_losses_41468

inputs
states_0
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	ФK
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФ9
*biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФС
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Ф~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41340

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:4D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         4: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
║
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41224

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4b
dropout_2/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         4\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_2/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  4"
identityIdentity:output:0*3
_input_shapes"
 :                  4:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
║
Ж
"sequential_lstm_2_while_cond_34931(
$sequential_lstm_2_while_loop_counter.
*sequential_lstm_2_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3*
&less_sequential_lstm_2_strided_slice_1?
;sequential_lstm_2_while_cond_34931___redundant_placeholder0?
;sequential_lstm_2_while_cond_34931___redundant_placeholder1?
;sequential_lstm_2_while_cond_34931___redundant_placeholder2?
;sequential_lstm_2_while_cond_34931___redundant_placeholder3
identity
b
LessLessplaceholder&less_sequential_lstm_2_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
г
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_36322

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         i├
dropout_1/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_36301\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_1/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  ig
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  i"
identityIdentity:output:0*3
_input_shapes"
 :                  i:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
Ш
Ў
while_cond_37517
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_37517___redundant_placeholder0-
)while_cond_37517___redundant_placeholder1-
)while_cond_37517___redundant_placeholder2-
)while_cond_37517___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╞
є
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_36222

inputs4
!dense_1_time_distributed_2_kernel:	╥i-
dense_1_time_distributed_2_bias:i
identityИвdense_1/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Щ
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_1_time_distributed_2_kerneldense_1_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_36213\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  in
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  ih
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╥: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
Ш
Ў
while_cond_37362
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_37362___redundant_placeholder0-
)while_cond_37362___redundant_placeholder1-
)while_cond_37362___redundant_placeholder2-
)while_cond_37362___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╥0
б
lstm_while_body_38090
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_strided_slice_1_0V
Rtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_strided_slice_1T
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
#TensorArrayV2Read/TensorListGetItemTensorListGetItemRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Z
add_1AddV2lstm_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: ]

Identity_1Identitylstm_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0".
lstm_strided_slice_1lstm_strided_slice_1_0"ж
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_36692

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фе
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФТ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_36610*
condR
while_cond_36609*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╧
▒
%__inference_dense_layer_call_fn_41651

inputs+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_36077p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╥`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         е: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs
Б
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37010

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥a
dropout/IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   А
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         ╥"
identityIdentity:output:0*+
_input_shapes
:         ╥:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
м
р
$__inference_lstm_layer_call_fn_39026

inputs(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф
identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_37755t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╨ 
╫
while_body_35485
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0:
еФE
1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФ4
%lstm_cell_1_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
еФC
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	ФИв#lstm_cell_1/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0╟
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_1_lstm_1_lstm_cell_1_kernel_01lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0%lstm_cell_1_lstm_1_lstm_cell_1_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35474├
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder,lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: ~

Identity_4Identity,lstm_cell_1/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         е~

Identity_5Identity,lstm_cell_1/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         еl
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"L
#lstm_cell_1_lstm_1_lstm_cell_1_bias%lstm_cell_1_lstm_1_lstm_cell_1_bias_0"P
%lstm_cell_1_lstm_1_lstm_cell_1_kernel'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0"d
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
н
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_36279

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         i[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         i"!

identity_1Identity_1:output:0*&
_input_shapes
:         i:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_36835

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identityИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_36753*
condR
while_cond_36752*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╦
я
&__inference_lstm_2_layer_call_fn_40202

inputs-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_37445t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
О
┐
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35606

inputs

states
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФO
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:PL
(
_output_shapes
:         е
 
_user_specified_namestates:PL
(
_output_shapes
:         е
 
_user_specified_namestates
м9
┬
A__inference_lstm_2_layer_call_and_return_conditional_losses_35873

inputs9
%lstm_cell_2_lstm_2_lstm_cell_2_kernel:
еФC
/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ2
#lstm_cell_2_lstm_2_lstm_cell_2_bias:	Ф
identityИв#lstm_cell_2/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_mask│
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_2_lstm_2_lstm_cell_2_kernel/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel#lstm_cell_2_lstm_2_lstm_cell_2_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35796n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0%lstm_cell_2_lstm_2_lstm_cell_2_kernel/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel#lstm_cell_2_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_35807*
condR
while_cond_35806*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  еt
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
П
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37173

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         4"
identityIdentity:output:0**
_input_shapes
:         4:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
М0
■
while_body_37673
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
ї
╝
0__inference_time_distributed_layer_call_fn_40779

inputs+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_36996t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ╥`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         е: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41082

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         ib
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   Б
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         i^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         i"
identityIdentity:output:0**
_input_shapes
:         i:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
Ш
Ў
while_cond_37672
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_37672___redundant_placeholder0-
)while_cond_37672___redundant_placeholder1-
)while_cond_37672___redundant_placeholder2-
)while_cond_37672___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
а
б
)__inference_lstm_cell_layer_call_fn_41394

inputs
states_0
states_1(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф
identity

identity_1

identity_2ИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35152p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         еr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         еr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         е:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
╦
^
B__inference_dropout_layer_call_and_return_conditional_losses_36165

inputs
identityO
IdentityIdentityinputs*
T0*(
_output_shapes
:         ╥"
identityIdentity:output:0*'
_input_shapes
:         ╥:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
б
└
2__inference_time_distributed_2_layer_call_fn_40931

inputs,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_36222|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  i`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╥: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
О
┐
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35796

inputs

states
states_1C
/matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФO
;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:PL
(
_output_shapes
:         е
 
_user_specified_namestates:PL
(
_output_shapes
:         е
 
_user_specified_namestates
╥0
б
lstm_while_body_38572
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_strided_slice_1_0V
Rtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_strided_slice_1T
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       У
#TensorArrayV2Read/TensorListGetItemTensorListGetItemRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Z
add_1AddV2lstm_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: ]

Identity_1Identitylstm_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0".
lstm_strided_slice_1lstm_strided_slice_1_0"ж
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_41022

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:i
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Ц
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ie
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         iЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╥: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
Ш
Ў
while_cond_35484
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_35484___redundant_placeholder0-
)while_cond_35484___redundant_placeholder1-
)while_cond_35484___redundant_placeholder2-
)while_cond_35484___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╣
N
2__inference_time_distributed_3_layer_call_fn_41027

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_36286m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  i"
identityIdentity:output:0*3
_input_shapes"
 :                  i:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
Ш
Ў
while_cond_36609
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_36609___redundant_placeholder0-
)while_cond_36609___redundant_placeholder1-
)while_cond_36609___redundant_placeholder2-
)while_cond_36609___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
я
░
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35152

inputs

states
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	ФK
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФ9
*biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФС
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Ф~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         е
 
_user_specified_namestates:PL
(
_output_shapes
:         е
 
_user_specified_namestates
·
┐
2__inference_time_distributed_6_layer_call_fn_41277

inputs+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37089s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         4: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
Ш
Ў
while_cond_36752
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_36752___redundant_placeholder0-
)while_cond_36752___redundant_placeholder1-
)while_cond_36752___redundant_placeholder2-
)while_cond_36752___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37199

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:i4D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:4
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         4З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         i: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
д
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_36186

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥└
dropout/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36165\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Р
	Reshape_1Reshape dropout/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥h
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  ╥"
identityIdentity:output:0*4
_input_shapes#
!:                  ╥:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
¤
└
2__inference_time_distributed_2_layer_call_fn_40945

inputs,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37027s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         i`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╥: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
ї
ё
&__inference_lstm_1_layer_call_fn_39598
inputs_0-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф
identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_35725}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
═1
к
while_body_39810
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╦
я
&__inference_lstm_1_layer_call_fn_39606

inputs-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_36835t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
г
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_36458

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4├
dropout_2/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_36437\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  4"
identityIdentity:output:0*3
_input_shapes"
 :                  4:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
Ц
┴
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_41526

inputs
states_0
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФO
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
╨ 
╫
while_body_35807
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'lstm_cell_2_lstm_2_lstm_cell_2_kernel_0:
еФE
1lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФ4
%lstm_cell_2_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%lstm_cell_2_lstm_2_lstm_cell_2_kernel:
еФC
/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ2
#lstm_cell_2_lstm_2_lstm_cell_2_bias:	ФИв#lstm_cell_2/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0╟
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_2_lstm_2_lstm_cell_2_kernel_01lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel_0%lstm_cell_2_lstm_2_lstm_cell_2_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35796├
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder,lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: ~

Identity_4Identity,lstm_cell_2/StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         е~

Identity_5Identity,lstm_cell_2/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         еl
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"L
#lstm_cell_2_lstm_2_lstm_cell_2_bias%lstm_cell_2_lstm_2_lstm_cell_2_bias_0"P
%lstm_cell_2_lstm_2_lstm_cell_2_kernel'lstm_cell_2_lstm_2_lstm_cell_2_kernel_0"d
/lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel1lstm_cell_2_lstm_2_lstm_cell_2_recurrent_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
═1
к
while_body_36753
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
є
E
)__inference_dropout_2_layer_call_fn_41738

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_36415`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         4"
identityIdentity:output:0*&
_input_shapes
:         4:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
М0
■
while_body_39083
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╦
я
&__inference_lstm_2_layer_call_fn_40194

inputs-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф
identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_36978t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37058

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:i4D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:4
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         4З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         i: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
эI
╖

E__inference_sequential_layer_call_and_return_conditional_losses_37831

inputs-
lstm_lstm_lstm_cell_kernel:	Ф8
$lstm_lstm_lstm_cell_recurrent_kernel:
еФ'
lstm_lstm_lstm_cell_bias:	Ф4
 lstm_1_lstm_1_lstm_cell_1_kernel:
еФ>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ-
lstm_1_lstm_1_lstm_cell_1_bias:	Ф4
 lstm_2_lstm_2_lstm_cell_2_kernel:
еФ>
*lstm_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ-
lstm_2_lstm_2_lstm_cell_2_bias:	Ф<
(time_distributed_time_distributed_kernel:
е╥5
&time_distributed_time_distributed_bias:	╥?
,time_distributed_2_time_distributed_2_kernel:	╥i8
*time_distributed_2_time_distributed_2_bias:i>
,time_distributed_4_time_distributed_4_kernel:i48
*time_distributed_4_time_distributed_4_bias:4>
,time_distributed_6_time_distributed_6_kernel:48
*time_distributed_6_time_distributed_6_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallвlstm_2/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallи
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_37755▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_37600▀
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0 lstm_2_lstm_2_lstm_cell_2_kernel*lstm_2_lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_37445╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_37291o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  и
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е√
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37265q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥ф
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37245q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ░
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥№
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37219q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iф
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37199q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   п
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i№
"time_distributed_5/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37173q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ф
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_5/PartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37153q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   п
time_distributed_6/ReshapeReshape+time_distributed_5/PartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_37102v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         ┘
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_2_layer_call_and_return_conditional_losses_36978

inputsO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_36896*
condR
while_cond_36895*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╔3
и	
"sequential_lstm_1_while_body_34797(
$sequential_lstm_1_while_loop_counter.
*sequential_lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3'
#sequential_lstm_1_strided_slice_1_0c
_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5%
!sequential_lstm_1_strided_slice_1a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  б
#TensorArrayV2Read/TensorListGetItemTensorListGetItem_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
add_1AddV2$sequential_lstm_1_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: j

Identity_1Identity*sequential_lstm_1_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"H
!sequential_lstm_1_strided_slice_1#sequential_lstm_1_strided_slice_1_0"└
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
п
`
B__inference_dropout_layer_call_and_return_conditional_losses_41676

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         ╥\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         ╥"!

identity_1Identity_1:output:0*'
_input_shapes
:         ╥:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
Ш
Ў
while_cond_39948
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39948___redundant_placeholder0-
)while_cond_39948___redundant_placeholder1-
)while_cond_39948___redundant_placeholder2-
)while_cond_39948___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ш
Ў
while_cond_40087
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_40087___redundant_placeholder0-
)while_cond_40087___redundant_placeholder1-
)while_cond_40087___redundant_placeholder2-
)while_cond_40087___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╩
`
D__inference_dropout_1_layer_call_and_return_conditional_losses_36301

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:         i"
identityIdentity:output:0*&
_input_shapes
:         i:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
м9
┬
A__inference_lstm_1_layer_call_and_return_conditional_losses_35551

inputs9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
еФC
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	Ф
identityИв#lstm_cell_1/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_mask│
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35474n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_35485*
condR
while_cond_35484*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  еt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
м9
┬
A__inference_lstm_1_layer_call_and_return_conditional_losses_35725

inputs9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
еФC
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	Ф
identityИв#lstm_cell_1/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_mask│
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_35606n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ў
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_35659*
condR
while_cond_35658*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  еt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
╩
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41073

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         i\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  ig
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  i"
identityIdentity:output:0*3
_input_shapes"
 :                  i:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
Щ
╝
0__inference_time_distributed_layer_call_fn_40772

inputs+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_36119}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╥`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  е: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
д
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_36150

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥└
dropout/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36143\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Р
	Reshape_1Reshape dropout/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥h
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  ╥"
identityIdentity:output:0*4
_input_shapes#
!:                  ╥:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
═1
к
while_body_40088
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
є
C
'__inference_dropout_layer_call_fn_41666

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36143a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ╥"
identityIdentity:output:0*'
_input_shapes
:         ╥:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
╩
`
D__inference_dropout_2_layer_call_and_return_conditional_losses_41752

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:         4"
identityIdentity:output:0*&
_input_shapes
:         4:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
Щ
╝
0__inference_time_distributed_layer_call_fn_40765

inputs+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_36086}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╥`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  е: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
Ф
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_41380

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш
Ў
while_cond_39499
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39499___redundant_placeholder0-
)while_cond_39499___redundant_placeholder1-
)while_cond_39499___redundant_placeholder2-
)while_cond_39499___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_40170

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ф
identityИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40088*
condR
while_cond_40087*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_40842

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
е╥A
2dense_biasadd_readvariableop_time_distributed_bias:	╥
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еС
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥М
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥f
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         ╥Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         е: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
ыI
╥
A__inference_lstm_2_layer_call_and_return_conditional_losses_40341
inputs_0O
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_40259*
condR
while_cond_40258*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  е╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  е: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  е
"
_user_specified_name
inputs/0
╘
┤
'__inference_dense_2_layer_call_fn_41723

inputs+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_36349o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         4`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         i: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
═1
к
while_body_40676
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
Ю
┐
2__inference_time_distributed_4_layer_call_fn_41104

inputs+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_36391|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  4`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  i: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
Ф
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_37102

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    	       j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         *

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
а
б
)__inference_lstm_cell_layer_call_fn_41408

inputs
states_0
states_1(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф
identity

identity_1

identity_2ИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35284p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         еr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         еr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         е:         е: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
ў
▓
D__inference_lstm_cell_layer_call_and_return_conditional_losses_41438

inputs
states_0
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	ФK
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФ9
*biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФС
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Ф~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         е
"
_user_specified_name
states/0:RN
(
_output_shapes
:         е
"
_user_specified_name
states/1
╨H
╖
?__inference_lstm_layer_call_and_return_conditional_losses_39165
inputs_0H
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фе
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФТ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39083*
condR
while_cond_39082*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  е╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37089

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:4D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         4: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
Ш
Ў
while_cond_39809
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_39809___redundant_placeholder0-
)while_cond_39809___redundant_placeholder1-
)while_cond_39809___redundant_placeholder2-
)while_cond_39809___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
╜
N
2__inference_time_distributed_1_layer_call_fn_40866

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_36186n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:                  ╥"
identityIdentity:output:0*4
_input_shapes#
!:                  ╥:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_4_layer_call_fn_41118

inputs+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37199s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         4`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         i: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
╞
є
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_36255

inputs4
!dense_1_time_distributed_2_kernel:	╥i-
dense_1_time_distributed_2_bias:i
identityИвdense_1/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Щ
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_1_time_distributed_2_kerneldense_1_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_36213\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  in
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  ih
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╥: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
▌	
У
B__inference_dense_2_layer_call_and_return_conditional_losses_36349

inputsA
/matmul_readvariableop_time_distributed_4_kernel:i4<
.biasadd_readvariableop_time_distributed_4_bias:4
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         4w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         i: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_2_layer_call_and_return_conditional_losses_37445

inputsO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         еD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maskЯ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0Ф
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фн
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0О
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЪ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еv
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╝
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernelGlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_37363*
condR
while_cond_37362*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         е: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╔3
и	
"sequential_lstm_2_while_body_34932(
$sequential_lstm_2_while_loop_counter.
*sequential_lstm_2_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3'
#sequential_lstm_2_strided_slice_1_0c
_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5%
!sequential_lstm_2_strided_slice_1a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  б
#TensorArrayV2Read/TensorListGetItemTensorListGetItem_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
add_1AddV2$sequential_lstm_2_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: j

Identity_1Identity*sequential_lstm_2_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"H
!sequential_lstm_2_strided_slice_1#sequential_lstm_2_strided_slice_1_0"└
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
м
щ
K__inference_time_distributed_layer_call_and_return_conditional_losses_36119

inputs1
dense_time_distributed_kernel:
е╥*
dense_time_distributed_bias:	╥
identityИвdense/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еО
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_time_distributed_kerneldense_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_36077\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ц
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╥f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  е: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
┬
Є
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_36527

inputs3
!dense_3_time_distributed_6_kernel:4-
dense_3_time_distributed_6_bias:
identityИвdense_3/StatefulPartitionedCall;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Щ
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_3_time_distributed_6_kerneldense_3_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_36485\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  4: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
▌	
У
B__inference_dense_3_layer_call_and_return_conditional_losses_36485

inputsA
/matmul_readvariableop_time_distributed_6_kernel:4<
.biasadd_readvariableop_time_distributed_6_bias:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         4: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
═1
к
while_body_40398
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
▀
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_40828

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
е╥A
2dense_biasadd_readvariableop_time_distributed_bias:	╥
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еС
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥М
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ж
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╥Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  е: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37027

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:i
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Ц
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ie
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         iЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╥: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_40856

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
е╥A
2dense_biasadd_readvariableop_time_distributed_bias:	╥
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еС
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥М
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥f
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         ╥Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         е: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
Ш
Ў
while_cond_40536
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_40536___redundant_placeholder0-
)while_cond_40536___redundant_placeholder1-
)while_cond_40536___redundant_placeholder2-
)while_cond_40536___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
Ю
┐
2__inference_time_distributed_6_layer_call_fn_41270

inputs+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_36527|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  4: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
М0
■
while_body_36610
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       О
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
▀
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_40807

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
е╥A
2dense_biasadd_readvariableop_time_distributed_bias:	╥
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еС
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥М
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ж
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥o
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╥Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  е: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  е
 
_user_specified_nameinputs
╩
`
D__inference_dropout_2_layer_call_and_return_conditional_losses_36437

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:         4"
identityIdentity:output:0*&
_input_shapes
:         4:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
▌	
У
B__inference_dense_2_layer_call_and_return_conditional_losses_41733

inputsA
/matmul_readvariableop_time_distributed_4_kernel:i4<
.biasadd_readvariableop_time_distributed_4_bias:4
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         4w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         i: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
Х
N
2__inference_time_distributed_5_layer_call_fn_41208

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37173d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         4"
identityIdentity:output:0**
_input_shapes
:         4:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
╤
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40907

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:А
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥h
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  ╥"
identityIdentity:output:0*4
_input_shapes#
!:                  ╥:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
П
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37219

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         i^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         i"
identityIdentity:output:0**
_input_shapes
:         i:S O
+
_output_shapes
:         i
 
_user_specified_nameinputs
н
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_41748

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         4[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         4"!

identity_1Identity_1:output:0*&
_input_shapes
:         4:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
п2
█
lstm_2_while_body_38360
lstm_2_while_loop_counter#
lstm_2_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_2_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_2_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ц
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :\
add_1AddV2lstm_2_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: _

Identity_1Identitylstm_2_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"2
lstm_2_strided_slice_1lstm_2_strided_slice_1_0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"к
Rtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorTtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
Ш
Ў
while_cond_35980
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_35980___redundant_placeholder0-
)while_cond_35980___redundant_placeholder1-
)while_cond_35980___redundant_placeholder2-
)while_cond_35980___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
▌	
У
B__inference_dense_3_layer_call_and_return_conditional_losses_41769

inputsA
/matmul_readvariableop_time_distributed_6_kernel:4<
.biasadd_readvariableop_time_distributed_6_bias:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         4: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         4
 
_user_specified_nameinputs
Г
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41160

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:i4D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:4
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         iХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:i4*
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:4*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         4\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :4Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  4n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  4З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  i: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
я
░
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35284

inputs

states
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	ФK
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФ9
*biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФС
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Ф~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         е
 
_user_specified_namestates:PL
(
_output_shapes
:         е
 
_user_specified_namestates
є
E
)__inference_dropout_1_layer_call_fn_41702

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_36279`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         i"
identityIdentity:output:0*&
_input_shapes
:         i:O K
'
_output_shapes
:         i
 
_user_specified_nameinputs
═1
к
while_body_39671
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
еФ]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
еФK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
еФ[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
еФI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	ФИв"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"Ф
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
г
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_36286

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         i├
dropout_1/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_36279\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         S
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :iХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_1/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  ig
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  i"
identityIdentity:output:0*3
_input_shapes"
 :                  i:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37153

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:4D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:4*
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         4: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
и
Ў
 sequential_lstm_while_cond_34661&
"sequential_lstm_while_loop_counter,
(sequential_lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3(
$less_sequential_lstm_strided_slice_1=
9sequential_lstm_while_cond_34661___redundant_placeholder0=
9sequential_lstm_while_cond_34661___redundant_placeholder1=
9sequential_lstm_while_cond_34661___redundant_placeholder2=
9sequential_lstm_while_cond_34661___redundant_placeholder3
identity
`
LessLessplaceholder$less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
═1
к
while_body_36896
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :U
add_1AddV2while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: X

Identity_1Identitywhile_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"$
strided_slice_1strided_slice_1_0"Ь
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_37291

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
е╥A
2dense_biasadd_readvariableop_time_distributed_bias:	╥
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еС
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥М
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥f
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         ╥Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         е: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
Х
N
2__inference_time_distributed_5_layer_call_fn_41203

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37072d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         4"
identityIdentity:output:0**
_input_shapes
:         4:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
с	
Ф
B__inference_dense_1_layer_call_and_return_conditional_losses_36213

inputsB
/matmul_readvariableop_time_distributed_2_kernel:	╥i<
.biasadd_readvariableop_time_distributed_2_bias:i
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЖ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iБ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         iw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         ╥: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_41008

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	╥iD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:i
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥Ц
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	╥i*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         iС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:i*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         id
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       i   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ie
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         iЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╥: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╥
 
_user_specified_nameinputs
эI
╖

E__inference_sequential_layer_call_and_return_conditional_losses_37105

inputs-
lstm_lstm_lstm_cell_kernel:	Ф8
$lstm_lstm_lstm_cell_recurrent_kernel:
еФ'
lstm_lstm_lstm_cell_bias:	Ф4
 lstm_1_lstm_1_lstm_cell_1_kernel:
еФ>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
еФ-
lstm_1_lstm_1_lstm_cell_1_bias:	Ф4
 lstm_2_lstm_2_lstm_cell_2_kernel:
еФ>
*lstm_2_lstm_2_lstm_cell_2_recurrent_kernel:
еФ-
lstm_2_lstm_2_lstm_cell_2_bias:	Ф<
(time_distributed_time_distributed_kernel:
е╥5
&time_distributed_time_distributed_bias:	╥?
,time_distributed_2_time_distributed_2_kernel:	╥i8
*time_distributed_2_time_distributed_2_bias:i>
,time_distributed_4_time_distributed_4_kernel:i48
*time_distributed_4_time_distributed_4_bias:4>
,time_distributed_6_time_distributed_6_kernel:48
*time_distributed_6_time_distributed_6_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallвlstm_2/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallи
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_36692▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_36835▀
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0 lstm_2_lstm_2_lstm_cell_2_kernel*lstm_2_lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_2_lstm_cell_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_2_layer_call_and_return_conditional_losses_36978╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_36996o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  и
time_distributed/ReshapeReshape'lstm_2/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         е√
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_37010q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥ф
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_37027q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   ░
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╥№
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_37041q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         iф
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_37058q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    i   п
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         i№
"time_distributed_5/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_37072q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ф
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_5/PartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37089q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   п
time_distributed_6/ReshapeReshape+time_distributed_5/PartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         4ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_37102v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         ┘
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
┐
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_35928

inputs

states
states_1C
/matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФO
;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФ=
.biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	Ф
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_2_lstm_cell_2_kernel* 
_output_shapes
:
еФ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФХ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ФВ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_2_lstm_cell_2_bias*
_output_shapes	
:Ф*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         еW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         еV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         е\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         еU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         еW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         еY
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         еY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         е[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         еС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         е:         е:         е: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs:PL
(
_output_shapes
:         е
 
_user_specified_namestates:PL
(
_output_shapes
:         е
 
_user_specified_namestates
є
C
'__inference_dropout_layer_call_fn_41671

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╥* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_36165a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ╥"
identityIdentity:output:0*'
_input_shapes
:         ╥:P L
(
_output_shapes
:         ╥
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_36996

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
е╥A
2dense_biasadd_readvariableop_time_distributed_bias:	╥
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         еС
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥М
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       ╥   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         ╥f
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         ╥Г
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         е: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         е
 
_user_specified_nameinputs
╫
о
lstm_2_while_cond_38841
lstm_2_while_loop_counter#
lstm_2_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_2_strided_slice_14
0lstm_2_while_cond_38841___redundant_placeholder04
0lstm_2_while_cond_38841___redundant_placeholder14
0lstm_2_while_cond_38841___redundant_placeholder24
0lstm_2_while_cond_38841___redundant_placeholder3
identity
W
LessLessplaceholderless_lstm_2_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
м
р
$__inference_lstm_layer_call_fn_39018

inputs(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф
identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_36692t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         е`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ь1
ю
 sequential_lstm_while_body_34662&
"sequential_lstm_while_loop_counter,
(sequential_lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3%
!sequential_lstm_strided_slice_1_0a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	ФW
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
еФE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5#
sequential_lstm_strided_slice_1_
[tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	ФИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ю
#TensorArrayV2Read/TensorListGetItemTensorListGetItem]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ш
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	Ф*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фз
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФФ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еo
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ек
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :e
add_1AddV2"sequential_lstm_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: h

Identity_1Identity(sequential_lstm_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: e

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еe

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         еп
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"n
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"И
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"D
sequential_lstm_strided_slice_1!sequential_lstm_strided_slice_1_0"╝
[tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
у8
л
?__inference_lstm_layer_call_and_return_conditional_losses_35229

inputs2
lstm_cell_lstm_lstm_cell_kernel:	Ф=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
еФ,
lstm_cell_lstm_lstm_cell_bias:	Ф
identityИв!lstm_cell/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЭ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         е:         е:         е*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_35152n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : х
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_35163*
condR
while_cond_35162*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  еr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41248

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    4   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         4b
dropout_2/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         4d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       4   Б
	Reshape_1Reshapedropout_2/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         4^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         4"
identityIdentity:output:0**
_input_shapes
:         4:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
╜
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40892

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    ╥   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╥a
dropout/IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╥\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
         T
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value
B :╥Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Й
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  ╥h
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  ╥"
identityIdentity:output:0*4
_input_shapes#
!:                  ╥:] Y
5
_output_shapes#
!:                  ╥
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_6_layer_call_fn_41284

inputs+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_37153s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         4: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         4
 
_user_specified_nameinputs
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_39443

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фе
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФТ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39361*
condR
while_cond_39360*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш
Ў
while_cond_40397
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_40397___redundant_placeholder0-
)while_cond_40397___redundant_placeholder1-
)while_cond_40397___redundant_placeholder2-
)while_cond_40397___redundant_placeholder3
identity
P
LessLessplaceholderless_strided_slice_1*
T0*
_output_shapes
: ?
IdentityIdentityLess:z:0*
T0
*
_output_shapes
: "
identityIdentity:output:0*U
_input_shapesD
B: : : : :         е:         е: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
:
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_37755

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фе
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФТ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_37673*
condR
while_cond_37672*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╝
╙
#__inference_signature_wrapper_37989

lstm_input(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biaslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_35087s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_39582

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	ФU
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
еФC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ф
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         еS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :еw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         еc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	Ф*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фе
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
еФ*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ФТ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:Ф*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         еr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         еz
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         еs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         еk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         еw
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         еn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         е:         е: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_39500*
condR
while_cond_39499*M
output_shapes<
:: : : : :         е:         е: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         е*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         е*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         е[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         е╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╣
N
2__inference_time_distributed_3_layer_call_fn_41032

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  i* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_36322m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  i"
identityIdentity:output:0*3
_input_shapes"
 :                  i:\ X
4
_output_shapes"
 :                  i
 
_user_specified_nameinputs
п2
█
lstm_2_while_body_38842
lstm_2_while_loop_counter#
lstm_2_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_2_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0:
еФ]
Ilstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0:
еФK
<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0:	Ф
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_2_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel:
еФ[
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel:
еФI
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias:	ФИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    е  Ц
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         е*
element_dtype0б
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0* 
_output_shapes
:
еФ*
dtype0ж
lstm_cell_2/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Фп
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0* 
_output_shapes
:
еФ*
dtype0Н
lstm_cell_2/MatMul_1MatMulplaceholder_2+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ФЙ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:         ФЬ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0*
_output_shapes	
:Ф*
dtype0Т
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ф]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*d
_output_shapesR
P:         е:         е:         е:         е*
	num_splitm
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*(
_output_shapes
:         еs
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         еА
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:         еy
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*(
_output_shapes
:         еo
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*(
_output_shapes
:         е}
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:         ем
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥G
add/yConst*
_output_shapes
: *
dtype0*
value	B :J
addAddV2placeholderadd/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :\
add_1AddV2lstm_2_while_loop_counteradd_1/y:output:0*
T0*
_output_shapes
: G
IdentityIdentity	add_1:z:0^NoOp*
T0*
_output_shapes
: _

Identity_1Identitylstm_2_while_maximum_iterations^NoOp*
T0*
_output_shapes
: G

Identity_2Identityadd:z:0^NoOp*
T0*
_output_shapes
: t

Identity_3Identity4TensorArrayV2Write/TensorListSetItem:output_handle:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identitylstm_cell_2/mul_2:z:0^NoOp*
T0*(
_output_shapes
:         еg

Identity_5Identitylstm_cell_2/add_1:z:0^NoOp*
T0*(
_output_shapes
:         е╡
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"2
lstm_2_strided_slice_1lstm_2_strided_slice_1_0"z
:lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias<lstm_cell_2_biasadd_readvariableop_lstm_2_lstm_cell_2_bias_0"Ф
Glstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernelIlstm_cell_2_matmul_1_readvariableop_lstm_2_lstm_cell_2_recurrent_kernel_0"|
;lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel=lstm_cell_2_matmul_readvariableop_lstm_2_lstm_cell_2_kernel_0"к
Rtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorTtensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*M
_input_shapes<
:: : : : :         е:         е: : : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         е:.*
(
_output_shapes
:         е:

_output_shapes
: :

_output_shapes
: 
╣
N
2__inference_time_distributed_5_layer_call_fn_41198

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  4* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_36458m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  4"
identityIdentity:output:0*3
_input_shapes"
 :                  4:\ X
4
_output_shapes"
 :                  4
 
_user_specified_nameinputs
▐	
Р
@__inference_dense_layer_call_and_return_conditional_losses_36077

inputsA
-matmul_readvariableop_time_distributed_kernel:
е╥;
,biasadd_readvariableop_time_distributed_bias:	╥
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp-matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
е╥*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥А
BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:╥*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╥`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         ╥w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         е: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         е
 
_user_specified_nameinputs
▄
╓
*__inference_sequential_layer_call_fn_38033

inputs(
lstm_lstm_cell_kernel:	Ф3
lstm_lstm_cell_recurrent_kernel:
еФ"
lstm_lstm_cell_bias:	Ф-
lstm_1_lstm_cell_1_kernel:
еФ7
#lstm_1_lstm_cell_1_recurrent_kernel:
еФ&
lstm_1_lstm_cell_1_bias:	Ф-
lstm_2_lstm_cell_2_kernel:
еФ7
#lstm_2_lstm_cell_2_recurrent_kernel:
еФ&
lstm_2_lstm_cell_2_bias:	Ф+
time_distributed_kernel:
е╥$
time_distributed_bias:	╥,
time_distributed_2_kernel:	╥i%
time_distributed_2_bias:i+
time_distributed_4_kernel:i4%
time_distributed_4_bias:4+
time_distributed_6_kernel:4%
time_distributed_6_bias:
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biaslstm_2_lstm_cell_2_kernel#lstm_2_lstm_cell_2_recurrent_kernellstm_2_lstm_cell_2_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_37831s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*L
_input_shapes;
9:         : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
E

lstm_input7
serving_default_lstm_input:0         B

cropping1d4
StatefulPartitionedCall:0         tensorflow/serving/predict:╖т
п
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
 	variables
!trainable_variables
"regularization_losses
#	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
▓
	$layer
%	variables
&trainable_variables
'regularization_losses
(	keras_api
б__call__
+в&call_and_return_all_conditional_losses"
_tf_keras_layer
▓
	)layer
*	variables
+trainable_variables
,regularization_losses
-	keras_api
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
▓
	.layer
/	variables
0trainable_variables
1regularization_losses
2	keras_api
е__call__
+ж&call_and_return_all_conditional_losses"
_tf_keras_layer
▓
	3layer
4	variables
5trainable_variables
6regularization_losses
7	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
▓
	8layer
9	variables
:trainable_variables
;regularization_losses
<	keras_api
й__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
▓
	=layer
>	variables
?trainable_variables
@regularization_losses
A	keras_api
л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
▓
	Blayer
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
н__call__
+о&call_and_return_all_conditional_losses"
_tf_keras_layer
з
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
п__call__
+░&call_and_return_all_conditional_losses"
_tf_keras_layer
П
Kiter
	Ldecay
Mlearning_rateNaccumulatorЗOaccumulatorИPaccumulatorЙQaccumulatorКRaccumulatorЛSaccumulatorМTaccumulatorНUaccumulatorОVaccumulatorПWaccumulatorРXaccumulatorСYaccumulatorТZaccumulatorУ[accumulatorФ\accumulatorХ]accumulatorЦ^accumulatorЧ"
	optimizer
Ю
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16"
trackable_list_wrapper
Ю
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
Z12
[13
\14
]15
^16"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
Ш__call__
Ъ_default_save_signature
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
-
▒serving_default"
signature_map
у
d
state_size

Nkernel
Orecurrent_kernel
Pbias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
▓__call__
+│&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

istates
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
trainable_variables
regularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
у
o
state_size

Qkernel
Rrecurrent_kernel
Sbias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
┤__call__
+╡&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
Q0
R1
S2"
trackable_list_wrapper
5
Q0
R1
S2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
у
z
state_size

Tkernel
Urecurrent_kernel
Vbias
{	variables
|trainable_variables
}regularization_losses
~	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
 "
trackable_list_wrapper
┴

states
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
 	variables
!trainable_variables
"regularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
┴

Wkernel
Xbias
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses"
_tf_keras_layer
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
%	variables
&trainable_variables
'regularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
л
О	variables
Пtrainable_variables
Рregularization_losses
С	keras_api
║__call__
+╗&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
*	variables
+trainable_variables
,regularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
┴

Ykernel
Zbias
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
╝__call__
+╜&call_and_return_all_conditional_losses"
_tf_keras_layer
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
/	variables
0trainable_variables
1regularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
л
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
╛__call__
+┐&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
4	variables
5trainable_variables
6regularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
┴

[kernel
\bias
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
└__call__
+┴&call_and_return_all_conditional_losses"
_tf_keras_layer
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
9	variables
:trainable_variables
;regularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
л
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
┬__call__
+├&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
>	variables
?trainable_variables
@regularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
┴

]kernel
^bias
╗	variables
╝trainable_variables
╜regularization_losses
╛	keras_api
─__call__
+┼&call_and_return_all_conditional_losses"
_tf_keras_layer
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
┐non_trainable_variables
└layers
┴metrics
 ┬layer_regularization_losses
├layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
:	 (2training/Adagrad/iter
 : (2training/Adagrad/decay
(:& (2training/Adagrad/learning_rate
(:&	Ф2lstm/lstm_cell/kernel
3:1
еФ2lstm/lstm_cell/recurrent_kernel
": Ф2lstm/lstm_cell/bias
-:+
еФ2lstm_1/lstm_cell_1/kernel
7:5
еФ2#lstm_1/lstm_cell_1/recurrent_kernel
&:$Ф2lstm_1/lstm_cell_1/bias
-:+
еФ2lstm_2/lstm_cell_2/kernel
7:5
еФ2#lstm_2/lstm_cell_2/recurrent_kernel
&:$Ф2lstm_2/lstm_cell_2/bias
+:)
е╥2time_distributed/kernel
$:"╥2time_distributed/bias
,:*	╥i2time_distributed_2/kernel
%:#i2time_distributed_2/bias
+:)i42time_distributed_4/kernel
%:#42time_distributed_4/bias
+:)42time_distributed_6/kernel
%:#2time_distributed_6/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
╔0
╩1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
e	variables
ftrainable_variables
gregularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
Q0
R1
S2"
trackable_list_wrapper
5
Q0
R1
S2"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
p	variables
qtrainable_variables
rregularization_losses
┤__call__
+╡&call_and_return_all_conditional_losses
'╡"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
{	variables
|trainable_variables
}regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
О	variables
Пtrainable_variables
Рregularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
╝__call__
+╜&call_and_return_all_conditional_losses
'╜"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
.0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
30"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
й	variables
кtrainable_variables
лregularization_losses
└__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
80"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
┬__call__
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
╗	variables
╝trainable_variables
╜regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
c

¤total

■count
 
_fn_kwargs
А	variables
Б	keras_api"
_tf_keras_metric
c

Вtotal

Гcount
Д
_fn_kwargs
Е	variables
Ж	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
¤0
■1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total_1
:  (2count_1
 "
trackable_dict_wrapper
0
В0
Г1"
trackable_list_wrapper
.
Е	variables"
_generic_user_object
C:A	Ф22training/Adagrad/lstm/lstm_cell/kernel/accumulator
N:L
еФ2<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator
=:;Ф20training/Adagrad/lstm/lstm_cell/bias/accumulator
H:F
еФ26training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator
R:P
еФ2@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator
A:?Ф24training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator
H:F
еФ26training/Adagrad/lstm_2/lstm_cell_2/kernel/accumulator
R:P
еФ2@training/Adagrad/lstm_2/lstm_cell_2/recurrent_kernel/accumulator
A:?Ф24training/Adagrad/lstm_2/lstm_cell_2/bias/accumulator
F:D
е╥24training/Adagrad/time_distributed/kernel/accumulator
?:=╥22training/Adagrad/time_distributed/bias/accumulator
G:E	╥i26training/Adagrad/time_distributed_2/kernel/accumulator
@:>i24training/Adagrad/time_distributed_2/bias/accumulator
F:Di426training/Adagrad/time_distributed_4/kernel/accumulator
@:>424training/Adagrad/time_distributed_4/bias/accumulator
F:D426training/Adagrad/time_distributed_6/kernel/accumulator
@:>24training/Adagrad/time_distributed_6/bias/accumulator
Ў2є
*__inference_sequential_layer_call_fn_37125
*__inference_sequential_layer_call_fn_38011
*__inference_sequential_layer_call_fn_38033
*__inference_sequential_layer_call_fn_37873└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
E__inference_sequential_layer_call_and_return_conditional_losses_38515
E__inference_sequential_layer_call_and_return_conditional_losses_38994
E__inference_sequential_layer_call_and_return_conditional_losses_37919
E__inference_sequential_layer_call_and_return_conditional_losses_37965└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬B╦
 __inference__wrapped_model_35087
lstm_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
$__inference_lstm_layer_call_fn_39002
$__inference_lstm_layer_call_fn_39010
$__inference_lstm_layer_call_fn_39018
$__inference_lstm_layer_call_fn_39026╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▀2▄
?__inference_lstm_layer_call_and_return_conditional_losses_39165
?__inference_lstm_layer_call_and_return_conditional_losses_39304
?__inference_lstm_layer_call_and_return_conditional_losses_39443
?__inference_lstm_layer_call_and_return_conditional_losses_39582╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√2°
&__inference_lstm_1_layer_call_fn_39590
&__inference_lstm_1_layer_call_fn_39598
&__inference_lstm_1_layer_call_fn_39606
&__inference_lstm_1_layer_call_fn_39614╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ч2ф
A__inference_lstm_1_layer_call_and_return_conditional_losses_39753
A__inference_lstm_1_layer_call_and_return_conditional_losses_39892
A__inference_lstm_1_layer_call_and_return_conditional_losses_40031
A__inference_lstm_1_layer_call_and_return_conditional_losses_40170╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√2°
&__inference_lstm_2_layer_call_fn_40178
&__inference_lstm_2_layer_call_fn_40186
&__inference_lstm_2_layer_call_fn_40194
&__inference_lstm_2_layer_call_fn_40202╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ч2ф
A__inference_lstm_2_layer_call_and_return_conditional_losses_40341
A__inference_lstm_2_layer_call_and_return_conditional_losses_40480
A__inference_lstm_2_layer_call_and_return_conditional_losses_40619
A__inference_lstm_2_layer_call_and_return_conditional_losses_40758╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
О2Л
0__inference_time_distributed_layer_call_fn_40765
0__inference_time_distributed_layer_call_fn_40772
0__inference_time_distributed_layer_call_fn_40779
0__inference_time_distributed_layer_call_fn_40786└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
·2ў
K__inference_time_distributed_layer_call_and_return_conditional_losses_40807
K__inference_time_distributed_layer_call_and_return_conditional_losses_40828
K__inference_time_distributed_layer_call_and_return_conditional_losses_40842
K__inference_time_distributed_layer_call_and_return_conditional_losses_40856└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
2__inference_time_distributed_1_layer_call_fn_40861
2__inference_time_distributed_1_layer_call_fn_40866
2__inference_time_distributed_1_layer_call_fn_40871
2__inference_time_distributed_1_layer_call_fn_40876└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40892
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40907
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40916
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40924└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
2__inference_time_distributed_2_layer_call_fn_40931
2__inference_time_distributed_2_layer_call_fn_40938
2__inference_time_distributed_2_layer_call_fn_40945
2__inference_time_distributed_2_layer_call_fn_40952└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_40973
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_40994
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_41008
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_41022└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
2__inference_time_distributed_3_layer_call_fn_41027
2__inference_time_distributed_3_layer_call_fn_41032
2__inference_time_distributed_3_layer_call_fn_41037
2__inference_time_distributed_3_layer_call_fn_41042└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41058
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41073
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41082
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41090└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
2__inference_time_distributed_4_layer_call_fn_41097
2__inference_time_distributed_4_layer_call_fn_41104
2__inference_time_distributed_4_layer_call_fn_41111
2__inference_time_distributed_4_layer_call_fn_41118└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41139
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41160
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41174
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41188└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
2__inference_time_distributed_5_layer_call_fn_41193
2__inference_time_distributed_5_layer_call_fn_41198
2__inference_time_distributed_5_layer_call_fn_41203
2__inference_time_distributed_5_layer_call_fn_41208└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41224
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41239
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41248
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41256└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ц2У
2__inference_time_distributed_6_layer_call_fn_41263
2__inference_time_distributed_6_layer_call_fn_41270
2__inference_time_distributed_6_layer_call_fn_41277
2__inference_time_distributed_6_layer_call_fn_41284└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
В2 
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41305
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41326
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41340
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41354└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
А2¤
*__inference_cropping1d_layer_call_fn_41359
*__inference_cropping1d_layer_call_fn_41364в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╢2│
E__inference_cropping1d_layer_call_and_return_conditional_losses_41372
E__inference_cropping1d_layer_call_and_return_conditional_losses_41380в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
═B╩
#__inference_signature_wrapper_37989
lstm_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ъ2Ч
)__inference_lstm_cell_layer_call_fn_41394
)__inference_lstm_cell_layer_call_fn_41408╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╨2═
D__inference_lstm_cell_layer_call_and_return_conditional_losses_41438
D__inference_lstm_cell_layer_call_and_return_conditional_losses_41468╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
+__inference_lstm_cell_1_layer_call_fn_41482
+__inference_lstm_cell_1_layer_call_fn_41496╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_41526
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_41556╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ю2Ы
+__inference_lstm_cell_2_layer_call_fn_41570
+__inference_lstm_cell_2_layer_call_fn_41584╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╘2╤
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_41614
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_41644╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╧2╠
%__inference_dense_layer_call_fn_41651в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъ2ч
@__inference_dense_layer_call_and_return_conditional_losses_41661в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
М2Й
'__inference_dropout_layer_call_fn_41666
'__inference_dropout_layer_call_fn_41671┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
┬2┐
B__inference_dropout_layer_call_and_return_conditional_losses_41676
B__inference_dropout_layer_call_and_return_conditional_losses_41680┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_dense_1_layer_call_fn_41687в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_1_layer_call_and_return_conditional_losses_41697в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Р2Н
)__inference_dropout_1_layer_call_fn_41702
)__inference_dropout_1_layer_call_fn_41707┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╞2├
D__inference_dropout_1_layer_call_and_return_conditional_losses_41712
D__inference_dropout_1_layer_call_and_return_conditional_losses_41716┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_dense_2_layer_call_fn_41723в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_2_layer_call_and_return_conditional_losses_41733в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Р2Н
)__inference_dropout_2_layer_call_fn_41738
)__inference_dropout_2_layer_call_fn_41743┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╞2├
D__inference_dropout_2_layer_call_and_return_conditional_losses_41748
D__inference_dropout_2_layer_call_and_return_conditional_losses_41752┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_dense_3_layer_call_fn_41759в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_dense_3_layer_call_and_return_conditional_losses_41769в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 о
 __inference__wrapped_model_35087ЙNOPQRSTUVWXYZ[\]^7в4
-в*
(К%

lstm_input         
к ";к8
6

cropping1d(К%

cropping1d         ╬
E__inference_cropping1d_layer_call_and_return_conditional_losses_41372ДEвB
;в8
6К3
inputs'                           
к ";в8
1К.
0'                           
Ъ й
E__inference_cropping1d_layer_call_and_return_conditional_losses_41380`3в0
)в&
$К!
inputs         
к ")в&
К
0         
Ъ е
*__inference_cropping1d_layer_call_fn_41359wEвB
;в8
6К3
inputs'                           
к ".К+'                           Б
*__inference_cropping1d_layer_call_fn_41364S3в0
)в&
$К!
inputs         
к "К         г
B__inference_dense_1_layer_call_and_return_conditional_losses_41697]YZ0в-
&в#
!К
inputs         ╥
к "%в"
К
0         i
Ъ {
'__inference_dense_1_layer_call_fn_41687PYZ0в-
&в#
!К
inputs         ╥
к "К         iв
B__inference_dense_2_layer_call_and_return_conditional_losses_41733\[\/в,
%в"
 К
inputs         i
к "%в"
К
0         4
Ъ z
'__inference_dense_2_layer_call_fn_41723O[\/в,
%в"
 К
inputs         i
к "К         4в
B__inference_dense_3_layer_call_and_return_conditional_losses_41769\]^/в,
%в"
 К
inputs         4
к "%в"
К
0         
Ъ z
'__inference_dense_3_layer_call_fn_41759O]^/в,
%в"
 К
inputs         4
к "К         в
@__inference_dense_layer_call_and_return_conditional_losses_41661^WX0в-
&в#
!К
inputs         е
к "&в#
К
0         ╥
Ъ z
%__inference_dense_layer_call_fn_41651QWX0в-
&в#
!К
inputs         е
к "К         ╥д
D__inference_dropout_1_layer_call_and_return_conditional_losses_41712\3в0
)в&
 К
inputs         i
p 
к "%в"
К
0         i
Ъ д
D__inference_dropout_1_layer_call_and_return_conditional_losses_41716\3в0
)в&
 К
inputs         i
p
к "%в"
К
0         i
Ъ |
)__inference_dropout_1_layer_call_fn_41702O3в0
)в&
 К
inputs         i
p 
к "К         i|
)__inference_dropout_1_layer_call_fn_41707O3в0
)в&
 К
inputs         i
p
к "К         iд
D__inference_dropout_2_layer_call_and_return_conditional_losses_41748\3в0
)в&
 К
inputs         4
p 
к "%в"
К
0         4
Ъ д
D__inference_dropout_2_layer_call_and_return_conditional_losses_41752\3в0
)в&
 К
inputs         4
p
к "%в"
К
0         4
Ъ |
)__inference_dropout_2_layer_call_fn_41738O3в0
)в&
 К
inputs         4
p 
к "К         4|
)__inference_dropout_2_layer_call_fn_41743O3в0
)в&
 К
inputs         4
p
к "К         4д
B__inference_dropout_layer_call_and_return_conditional_losses_41676^4в1
*в'
!К
inputs         ╥
p 
к "&в#
К
0         ╥
Ъ д
B__inference_dropout_layer_call_and_return_conditional_losses_41680^4в1
*в'
!К
inputs         ╥
p
к "&в#
К
0         ╥
Ъ |
'__inference_dropout_layer_call_fn_41666Q4в1
*в'
!К
inputs         ╥
p 
к "К         ╥|
'__inference_dropout_layer_call_fn_41671Q4в1
*в'
!К
inputs         ╥
p
к "К         ╥╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_39753МQRSPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p 

 
к "3в0
)К&
0                  е
Ъ ╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_39892МQRSPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p

 
к "3в0
)К&
0                  е
Ъ ╕
A__inference_lstm_1_layer_call_and_return_conditional_losses_40031sQRS@в=
6в3
%К"
inputs         е

 
p 

 
к "*в'
 К
0         е
Ъ ╕
A__inference_lstm_1_layer_call_and_return_conditional_losses_40170sQRS@в=
6в3
%К"
inputs         е

 
p

 
к "*в'
 К
0         е
Ъ й
&__inference_lstm_1_layer_call_fn_39590QRSPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p 

 
к "&К#                  ей
&__inference_lstm_1_layer_call_fn_39598QRSPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p

 
к "&К#                  еР
&__inference_lstm_1_layer_call_fn_39606fQRS@в=
6в3
%К"
inputs         е

 
p 

 
к "К         еР
&__inference_lstm_1_layer_call_fn_39614fQRS@в=
6в3
%К"
inputs         е

 
p

 
к "К         е╥
A__inference_lstm_2_layer_call_and_return_conditional_losses_40341МTUVPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p 

 
к "3в0
)К&
0                  е
Ъ ╥
A__inference_lstm_2_layer_call_and_return_conditional_losses_40480МTUVPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p

 
к "3в0
)К&
0                  е
Ъ ╕
A__inference_lstm_2_layer_call_and_return_conditional_losses_40619sTUV@в=
6в3
%К"
inputs         е

 
p 

 
к "*в'
 К
0         е
Ъ ╕
A__inference_lstm_2_layer_call_and_return_conditional_losses_40758sTUV@в=
6в3
%К"
inputs         е

 
p

 
к "*в'
 К
0         е
Ъ й
&__inference_lstm_2_layer_call_fn_40178TUVPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p 

 
к "&К#                  ей
&__inference_lstm_2_layer_call_fn_40186TUVPвM
FвC
5Ъ2
0К-
inputs/0                  е

 
p

 
к "&К#                  еР
&__inference_lstm_2_layer_call_fn_40194fTUV@в=
6в3
%К"
inputs         е

 
p 

 
к "К         еР
&__inference_lstm_2_layer_call_fn_40202fTUV@в=
6в3
%К"
inputs         е

 
p

 
к "К         е╧
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_41526ДQRSДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p 
к "vвs
lвi
К
0/0         е
GЪD
 К
0/1/0         е
 К
0/1/1         е
Ъ ╧
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_41556ДQRSДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p
к "vвs
lвi
К
0/0         е
GЪD
 К
0/1/0         е
 К
0/1/1         е
Ъ д
+__inference_lstm_cell_1_layer_call_fn_41482ЇQRSДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p 
к "fвc
К
0         е
CЪ@
К
1/0         е
К
1/1         ед
+__inference_lstm_cell_1_layer_call_fn_41496ЇQRSДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p
к "fвc
К
0         е
CЪ@
К
1/0         е
К
1/1         е╧
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_41614ДTUVДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p 
к "vвs
lвi
К
0/0         е
GЪD
 К
0/1/0         е
 К
0/1/1         е
Ъ ╧
F__inference_lstm_cell_2_layer_call_and_return_conditional_losses_41644ДTUVДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p
к "vвs
lвi
К
0/0         е
GЪD
 К
0/1/0         е
 К
0/1/1         е
Ъ д
+__inference_lstm_cell_2_layer_call_fn_41570ЇTUVДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p 
к "fвc
К
0         е
CЪ@
К
1/0         е
К
1/1         ед
+__inference_lstm_cell_2_layer_call_fn_41584ЇTUVДвА
yвv
!К
inputs         е
MвJ
#К 
states/0         е
#К 
states/1         е
p
к "fвc
К
0         е
CЪ@
К
1/0         е
К
1/1         е╦
D__inference_lstm_cell_layer_call_and_return_conditional_losses_41438ВNOPВв
xвu
 К
inputs         
MвJ
#К 
states/0         е
#К 
states/1         е
p 
к "vвs
lвi
К
0/0         е
GЪD
 К
0/1/0         е
 К
0/1/1         е
Ъ ╦
D__inference_lstm_cell_layer_call_and_return_conditional_losses_41468ВNOPВв
xвu
 К
inputs         
MвJ
#К 
states/0         е
#К 
states/1         е
p
к "vвs
lвi
К
0/0         е
GЪD
 К
0/1/0         е
 К
0/1/1         е
Ъ а
)__inference_lstm_cell_layer_call_fn_41394ЄNOPВв
xвu
 К
inputs         
MвJ
#К 
states/0         е
#К 
states/1         е
p 
к "fвc
К
0         е
CЪ@
К
1/0         е
К
1/1         еа
)__inference_lstm_cell_layer_call_fn_41408ЄNOPВв
xвu
 К
inputs         
MвJ
#К 
states/0         е
#К 
states/1         е
p
к "fвc
К
0         е
CЪ@
К
1/0         е
К
1/1         е╧
?__inference_lstm_layer_call_and_return_conditional_losses_39165ЛNOPOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "3в0
)К&
0                  е
Ъ ╧
?__inference_lstm_layer_call_and_return_conditional_losses_39304ЛNOPOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "3в0
)К&
0                  е
Ъ ╡
?__inference_lstm_layer_call_and_return_conditional_losses_39443rNOP?в<
5в2
$К!
inputs         

 
p 

 
к "*в'
 К
0         е
Ъ ╡
?__inference_lstm_layer_call_and_return_conditional_losses_39582rNOP?в<
5в2
$К!
inputs         

 
p

 
к "*в'
 К
0         е
Ъ ж
$__inference_lstm_layer_call_fn_39002~NOPOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "&К#                  еж
$__inference_lstm_layer_call_fn_39010~NOPOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "&К#                  еН
$__inference_lstm_layer_call_fn_39018eNOP?в<
5в2
$К!
inputs         

 
p 

 
к "К         еН
$__inference_lstm_layer_call_fn_39026eNOP?в<
5в2
$К!
inputs         

 
p

 
к "К         е╚
E__inference_sequential_layer_call_and_return_conditional_losses_37919NOPQRSTUVWXYZ[\]^?в<
5в2
(К%

lstm_input         
p 

 
к ")в&
К
0         
Ъ ╚
E__inference_sequential_layer_call_and_return_conditional_losses_37965NOPQRSTUVWXYZ[\]^?в<
5в2
(К%

lstm_input         
p

 
к ")в&
К
0         
Ъ ─
E__inference_sequential_layer_call_and_return_conditional_losses_38515{NOPQRSTUVWXYZ[\]^;в8
1в.
$К!
inputs         
p 

 
к ")в&
К
0         
Ъ ─
E__inference_sequential_layer_call_and_return_conditional_losses_38994{NOPQRSTUVWXYZ[\]^;в8
1в.
$К!
inputs         
p

 
к ")в&
К
0         
Ъ а
*__inference_sequential_layer_call_fn_37125rNOPQRSTUVWXYZ[\]^?в<
5в2
(К%

lstm_input         
p 

 
к "К         а
*__inference_sequential_layer_call_fn_37873rNOPQRSTUVWXYZ[\]^?в<
5в2
(К%

lstm_input         
p

 
к "К         Ь
*__inference_sequential_layer_call_fn_38011nNOPQRSTUVWXYZ[\]^;в8
1в.
$К!
inputs         
p 

 
к "К         Ь
*__inference_sequential_layer_call_fn_38033nNOPQRSTUVWXYZ[\]^;в8
1в.
$К!
inputs         
p

 
к "К         ┐
#__inference_signature_wrapper_37989ЧNOPQRSTUVWXYZ[\]^EвB
в 
;к8
6

lstm_input(К%

lstm_input         ";к8
6

cropping1d(К%

cropping1d         ═
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40892|EвB
;в8
.К+
inputs                  ╥
p 

 
к "3в0
)К&
0                  ╥
Ъ ═
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40907|EвB
;в8
.К+
inputs                  ╥
p

 
к "3в0
)К&
0                  ╥
Ъ ╗
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40916j<в9
2в/
%К"
inputs         ╥
p 

 
к "*в'
 К
0         ╥
Ъ ╗
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_40924j<в9
2в/
%К"
inputs         ╥
p

 
к "*в'
 К
0         ╥
Ъ е
2__inference_time_distributed_1_layer_call_fn_40861oEвB
;в8
.К+
inputs                  ╥
p 

 
к "&К#                  ╥е
2__inference_time_distributed_1_layer_call_fn_40866oEвB
;в8
.К+
inputs                  ╥
p

 
к "&К#                  ╥У
2__inference_time_distributed_1_layer_call_fn_40871]<в9
2в/
%К"
inputs         ╥
p 

 
к "К         ╥У
2__inference_time_distributed_1_layer_call_fn_40876]<в9
2в/
%К"
inputs         ╥
p

 
к "К         ╥╨
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_40973YZEвB
;в8
.К+
inputs                  ╥
p 

 
к "2в/
(К%
0                  i
Ъ ╨
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_40994YZEвB
;в8
.К+
inputs                  ╥
p

 
к "2в/
(К%
0                  i
Ъ ╛
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_41008mYZ<в9
2в/
%К"
inputs         ╥
p 

 
к ")в&
К
0         i
Ъ ╛
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_41022mYZ<в9
2в/
%К"
inputs         ╥
p

 
к ")в&
К
0         i
Ъ и
2__inference_time_distributed_2_layer_call_fn_40931rYZEвB
;в8
.К+
inputs                  ╥
p 

 
к "%К"                  iи
2__inference_time_distributed_2_layer_call_fn_40938rYZEвB
;в8
.К+
inputs                  ╥
p

 
к "%К"                  iЦ
2__inference_time_distributed_2_layer_call_fn_40945`YZ<в9
2в/
%К"
inputs         ╥
p 

 
к "К         iЦ
2__inference_time_distributed_2_layer_call_fn_40952`YZ<в9
2в/
%К"
inputs         ╥
p

 
к "К         i╦
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41058zDвA
:в7
-К*
inputs                  i
p 

 
к "2в/
(К%
0                  i
Ъ ╦
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41073zDвA
:в7
-К*
inputs                  i
p

 
к "2в/
(К%
0                  i
Ъ ╣
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41082h;в8
1в.
$К!
inputs         i
p 

 
к ")в&
К
0         i
Ъ ╣
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_41090h;в8
1в.
$К!
inputs         i
p

 
к ")в&
К
0         i
Ъ г
2__inference_time_distributed_3_layer_call_fn_41027mDвA
:в7
-К*
inputs                  i
p 

 
к "%К"                  iг
2__inference_time_distributed_3_layer_call_fn_41032mDвA
:в7
-К*
inputs                  i
p

 
к "%К"                  iС
2__inference_time_distributed_3_layer_call_fn_41037[;в8
1в.
$К!
inputs         i
p 

 
к "К         iС
2__inference_time_distributed_3_layer_call_fn_41042[;в8
1в.
$К!
inputs         i
p

 
к "К         i╧
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41139~[\DвA
:в7
-К*
inputs                  i
p 

 
к "2в/
(К%
0                  4
Ъ ╧
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41160~[\DвA
:в7
-К*
inputs                  i
p

 
к "2в/
(К%
0                  4
Ъ ╜
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41174l[\;в8
1в.
$К!
inputs         i
p 

 
к ")в&
К
0         4
Ъ ╜
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_41188l[\;в8
1в.
$К!
inputs         i
p

 
к ")в&
К
0         4
Ъ з
2__inference_time_distributed_4_layer_call_fn_41097q[\DвA
:в7
-К*
inputs                  i
p 

 
к "%К"                  4з
2__inference_time_distributed_4_layer_call_fn_41104q[\DвA
:в7
-К*
inputs                  i
p

 
к "%К"                  4Х
2__inference_time_distributed_4_layer_call_fn_41111_[\;в8
1в.
$К!
inputs         i
p 

 
к "К         4Х
2__inference_time_distributed_4_layer_call_fn_41118_[\;в8
1в.
$К!
inputs         i
p

 
к "К         4╦
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41224zDвA
:в7
-К*
inputs                  4
p 

 
к "2в/
(К%
0                  4
Ъ ╦
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41239zDвA
:в7
-К*
inputs                  4
p

 
к "2в/
(К%
0                  4
Ъ ╣
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41248h;в8
1в.
$К!
inputs         4
p 

 
к ")в&
К
0         4
Ъ ╣
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_41256h;в8
1в.
$К!
inputs         4
p

 
к ")в&
К
0         4
Ъ г
2__inference_time_distributed_5_layer_call_fn_41193mDвA
:в7
-К*
inputs                  4
p 

 
к "%К"                  4г
2__inference_time_distributed_5_layer_call_fn_41198mDвA
:в7
-К*
inputs                  4
p

 
к "%К"                  4С
2__inference_time_distributed_5_layer_call_fn_41203[;в8
1в.
$К!
inputs         4
p 

 
к "К         4С
2__inference_time_distributed_5_layer_call_fn_41208[;в8
1в.
$К!
inputs         4
p

 
к "К         4╧
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41305~]^DвA
:в7
-К*
inputs                  4
p 

 
к "2в/
(К%
0                  
Ъ ╧
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41326~]^DвA
:в7
-К*
inputs                  4
p

 
к "2в/
(К%
0                  
Ъ ╜
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41340l]^;в8
1в.
$К!
inputs         4
p 

 
к ")в&
К
0         
Ъ ╜
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_41354l]^;в8
1в.
$К!
inputs         4
p

 
к ")в&
К
0         
Ъ з
2__inference_time_distributed_6_layer_call_fn_41263q]^DвA
:в7
-К*
inputs                  4
p 

 
к "%К"                  з
2__inference_time_distributed_6_layer_call_fn_41270q]^DвA
:в7
-К*
inputs                  4
p

 
к "%К"                  Х
2__inference_time_distributed_6_layer_call_fn_41277_]^;в8
1в.
$К!
inputs         4
p 

 
к "К         Х
2__inference_time_distributed_6_layer_call_fn_41284_]^;в8
1в.
$К!
inputs         4
p

 
к "К         ╨
K__inference_time_distributed_layer_call_and_return_conditional_losses_40807АWXEвB
;в8
.К+
inputs                  е
p 

 
к "3в0
)К&
0                  ╥
Ъ ╨
K__inference_time_distributed_layer_call_and_return_conditional_losses_40828АWXEвB
;в8
.К+
inputs                  е
p

 
к "3в0
)К&
0                  ╥
Ъ ╜
K__inference_time_distributed_layer_call_and_return_conditional_losses_40842nWX<в9
2в/
%К"
inputs         е
p 

 
к "*в'
 К
0         ╥
Ъ ╜
K__inference_time_distributed_layer_call_and_return_conditional_losses_40856nWX<в9
2в/
%К"
inputs         е
p

 
к "*в'
 К
0         ╥
Ъ з
0__inference_time_distributed_layer_call_fn_40765sWXEвB
;в8
.К+
inputs                  е
p 

 
к "&К#                  ╥з
0__inference_time_distributed_layer_call_fn_40772sWXEвB
;в8
.К+
inputs                  е
p

 
к "&К#                  ╥Х
0__inference_time_distributed_layer_call_fn_40779aWX<в9
2в/
%К"
inputs         е
p 

 
к "К         ╥Х
0__inference_time_distributed_layer_call_fn_40786aWX<в9
2в/
%К"
inputs         е
p

 
к "К         ╥
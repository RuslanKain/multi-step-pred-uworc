ву2
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
И"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ч╘.
v
training/SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *"
shared_nametraining/SGD/iter
o
%training/SGD/iter/Read/ReadVariableOpReadVariableOptraining/SGD/iter*
_output_shapes
: *
dtype0	
x
training/SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nametraining/SGD/decay
q
&training/SGD/decay/Read/ReadVariableOpReadVariableOptraining/SGD/decay*
_output_shapes
: *
dtype0
И
training/SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nametraining/SGD/learning_rate
Б
.training/SGD/learning_rate/Read/ReadVariableOpReadVariableOptraining/SGD/learning_rate*
_output_shapes
: *
dtype0
~
training/SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nametraining/SGD/momentum
w
)training/SGD/momentum/Read/ReadVariableOpReadVariableOptraining/SGD/momentum*
_output_shapes
: *
dtype0
З
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	╨
*&
shared_namelstm/lstm_cell/kernel
А
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	╨
*
dtype0
Ь
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘╨
*0
shared_name!lstm/lstm_cell/recurrent_kernel
Х
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╨
*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:╨
*
dtype0
Р
lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘╨
**
shared_namelstm_1/lstm_cell_1/kernel
Й
-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel* 
_output_shapes
:
╘╨
*
dtype0
д
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘╨
*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel
Э
7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0
З
lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╨
*(
shared_namelstm_1/lstm_cell_1/bias
А
+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:╨
*
dtype0
М
time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘к*(
shared_nametime_distributed/kernel
Е
+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel* 
_output_shapes
:
╘к*
dtype0
Г
time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:к*&
shared_nametime_distributed/bias
|
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes	
:к*
dtype0
П
time_distributed_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	кU**
shared_nametime_distributed_2/kernel
И
-time_distributed_2/kernel/Read/ReadVariableOpReadVariableOptime_distributed_2/kernel*
_output_shapes
:	кU*
dtype0
Ж
time_distributed_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:U*(
shared_nametime_distributed_2/bias

+time_distributed_2/bias/Read/ReadVariableOpReadVariableOptime_distributed_2/bias*
_output_shapes
:U*
dtype0
О
time_distributed_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:U***
shared_nametime_distributed_4/kernel
З
-time_distributed_4/kernel/Read/ReadVariableOpReadVariableOptime_distributed_4/kernel*
_output_shapes

:U**
dtype0
Ж
time_distributed_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**(
shared_nametime_distributed_4/bias

+time_distributed_4/bias/Read/ReadVariableOpReadVariableOptime_distributed_4/bias*
_output_shapes
:**
dtype0
О
time_distributed_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:***
shared_nametime_distributed_6/kernel
З
-time_distributed_6/kernel/Read/ReadVariableOpReadVariableOptime_distributed_6/kernel*
_output_shapes

:**
dtype0
Ж
time_distributed_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_6/bias

+time_distributed_6/bias/Read/ReadVariableOpReadVariableOptime_distributed_6/bias*
_output_shapes
:*
dtype0
О
time_distributed_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nametime_distributed_8/kernel
З
-time_distributed_8/kernel/Read/ReadVariableOpReadVariableOptime_distributed_8/kernel*
_output_shapes

:*
dtype0
Ж
time_distributed_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_8/bias

+time_distributed_8/bias/Read/ReadVariableOpReadVariableOptime_distributed_8/bias*
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

NoOpNoOp
ЙU
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*─T
value║TB╖T B░T
┼
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
]
	layer
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
]
	Glayer
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
R
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
6
Piter
	Qdecay
Rlearning_rate
Smomentum
v
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15
v
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15
 
н
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
 
О
i
state_size

Tkernel
Urecurrent_kernel
Vbias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
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
╣

nstates
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
О
t
state_size

Wkernel
Xrecurrent_kernel
Ybias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
 

W0
X1
Y2

W0
X1
Y2
 
╣

ystates
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
k

Zkernel
[bias
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api

Z0
[1

Z0
[1
 
▓
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
 	variables
!trainable_variables
"regularization_losses
V
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
 
 
 
▓
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
%	variables
&trainable_variables
'regularization_losses
l

\kernel
]bias
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api

\0
]1

\0
]1
 
▓
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
*	variables
+trainable_variables
,regularization_losses
V
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
 
 
 
▓
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
/	variables
0trainable_variables
1regularization_losses
l

^kernel
_bias
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api

^0
_1

^0
_1
 
▓
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
4	variables
5trainable_variables
6regularization_losses
V
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
 
 
 
▓
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
9	variables
:trainable_variables
;regularization_losses
l

`kernel
abias
╡	variables
╢trainable_variables
╖regularization_losses
╕	keras_api

`0
a1

`0
a1
 
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
>	variables
?trainable_variables
@regularization_losses
V
╛	variables
┐trainable_variables
└regularization_losses
┴	keras_api
 
 
 
▓
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
l

bkernel
cbias
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api

b0
c1

b0
c1
 
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
 
 
 
▓
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
PN
VARIABLE_VALUEtraining/SGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEtraining/SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEtraining/SGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEtraining/SGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
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
SQ
VARIABLE_VALUEtime_distributed/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEtime_distributed/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEtime_distributed_2/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEtime_distributed_2/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_4/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_4/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_6/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_6/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtime_distributed_8/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEtime_distributed_8/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
 
V
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
11

╒0
╓1
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
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
j	variables
ktrainable_variables
lregularization_losses
 
 

0
 
 
 
 

W0
X1
Y2

W0
X1
Y2
 
▓
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
 
 

0
 
 
 

Z0
[1

Z0
[1
 
┤
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
 

0
 
 
 
 
 
 
╡
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
 

$0
 
 
 

\0
]1

\0
]1
 
╡
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
 

)0
 
 
 
 
 
 
╡
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
 

.0
 
 
 

^0
_1

^0
_1
 
╡
їnon_trainable_variables
Ўlayers
ўmetrics
 °layer_regularization_losses
∙layer_metrics
г	variables
дtrainable_variables
еregularization_losses
 

30
 
 
 
 
 
 
╡
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
м	variables
нtrainable_variables
оregularization_losses
 

80
 
 
 

`0
a1

`0
a1
 
╡
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
╡	variables
╢trainable_variables
╖regularization_losses
 

=0
 
 
 
 
 
 
╡
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
╛	variables
┐trainable_variables
└regularization_losses
 

B0
 
 
 

b0
c1

b0
c1
 
╡
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
 

G0
 
 
 
 
 
 
 
 
I

Оtotal

Пcount
Р
_fn_kwargs
С	variables
Т	keras_api
I

Уtotal

Фcount
Х
_fn_kwargs
Ц	variables
Ч	keras_api
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
О0
П1

С	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

У0
Ф1

Ц	variables
Е
serving_default_lstm_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
■
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastime_distributed/kerneltime_distributed/biastime_distributed_2/kerneltime_distributed_2/biastime_distributed_4/kerneltime_distributed_4/biastime_distributed_6/kerneltime_distributed_6/biastime_distributed_8/kerneltime_distributed_8/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_85736
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▓

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%training/SGD/iter/Read/ReadVariableOp&training/SGD/decay/Read/ReadVariableOp.training/SGD/learning_rate/Read/ReadVariableOp)training/SGD/momentum/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_2/kernel/Read/ReadVariableOp+time_distributed_2/bias/Read/ReadVariableOp-time_distributed_4/kernel/Read/ReadVariableOp+time_distributed_4/bias/Read/ReadVariableOp-time_distributed_6/kernel/Read/ReadVariableOp+time_distributed_6/bias/Read/ReadVariableOp-time_distributed_8/kernel/Read/ReadVariableOp+time_distributed_8/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*%
Tin
2	*
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
__inference__traced_save_89030
═
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametraining/SGD/itertraining/SGD/decaytraining/SGD/learning_ratetraining/SGD/momentumlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastime_distributed/kerneltime_distributed/biastime_distributed_2/kerneltime_distributed_2/biastime_distributed_4/kerneltime_distributed_4/biastime_distributed_6/kerneltime_distributed_6/biastime_distributed_8/kerneltime_distributed_8/biastotalcounttotal_1count_1*$
Tin
2*
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
!__inference__traced_restore_89112▐╡-
Ц
┴
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_88742

inputs
states_0
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
O
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Х
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
В
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         ╘:         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
с	
Ф
B__inference_dense_1_layer_call_and_return_conditional_losses_88803

inputsB
/matmul_readvariableop_time_distributed_2_kernel:	кU<
.biasadd_readvariableop_time_distributed_2_bias:U
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЖ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UБ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Uw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         к: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
ыI
╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_87297
inputs_0O
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
н
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ъ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘v
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_87215*
condR
while_cond_87214*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  ╘: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  ╘
"
_user_specified_name
inputs/0
ЭY
╠
E__inference_sequential_layer_call_and_return_conditional_losses_85573

inputs-
lstm_lstm_lstm_cell_kernel:	╨
8
$lstm_lstm_lstm_cell_recurrent_kernel:
╘╨
'
lstm_lstm_lstm_cell_bias:	╨
4
 lstm_1_lstm_1_lstm_cell_1_kernel:
╘╨
>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
-
lstm_1_lstm_1_lstm_cell_1_bias:	╨
<
(time_distributed_time_distributed_kernel:
╘к5
&time_distributed_time_distributed_bias:	к?
,time_distributed_2_time_distributed_2_kernel:	кU8
*time_distributed_2_time_distributed_2_bias:U>
,time_distributed_4_time_distributed_4_kernel:U*8
*time_distributed_4_time_distributed_4_bias:*>
,time_distributed_6_time_distributed_6_kernel:*8
*time_distributed_6_time_distributed_6_bias:>
,time_distributed_8_time_distributed_8_kernel:8
*time_distributed_8_time_distributed_8_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_1/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_3/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_5/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallв*time_distributed_7/StatefulPartitionedCallв*time_distributed_8/StatefulPartitionedCallи
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_85494▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_85339╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85185o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  и
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘Л
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85159q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кь
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_1/StatefulPartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_85131q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╕
time_distributed_2/ReshapeReshape3time_distributed_1/StatefulPartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к╣
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0+^time_distributed_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_85105q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         Uь
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_85077q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╖
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U╣
*time_distributed_5/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0+^time_distributed_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_85051q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *ь
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_5/StatefulPartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_85023q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╖
time_distributed_6/ReshapeReshape3time_distributed_5/StatefulPartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *╣
*time_distributed_7/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0+^time_distributed_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84997q
 time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╖
time_distributed_7/ReshapeReshape3time_distributed_6/StatefulPartitionedCall:output:0)time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         ь
*time_distributed_8/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_7/StatefulPartitionedCall:output:0,time_distributed_8_time_distributed_8_kernel*time_distributed_8_time_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84969q
 time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╖
time_distributed_8/ReshapeReshape3time_distributed_7/StatefulPartitionedCall:output:0)time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_84919v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
Щ
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_5/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall+^time_distributed_7/StatefulPartitionedCall+^time_distributed_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_5/StatefulPartitionedCall*time_distributed_5/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall2X
*time_distributed_7/StatefulPartitionedCall*time_distributed_7/StatefulPartitionedCall2X
*time_distributed_8/StatefulPartitionedCall*time_distributed_8/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_84621

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
:	╨
*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
е
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Т
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_84539*
condR
while_cond_84538*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┬
Є
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84279

inputs3
!dense_3_time_distributed_6_kernel:*-
dense_3_time_distributed_6_bias:
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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Щ
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_3_time_distributed_6_kerneldense_3_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_84270\
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  *: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
О
┐
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83689

inputs

states
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
O
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Х
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
В
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         ╘:         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates
·
┐
2__inference_time_distributed_6_layer_call_fn_88288

inputs+
time_distributed_6_kernel:*%
time_distributed_6_bias:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_85023s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         *: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
Ю
Р
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84099

inputs
identityИв!dropout_1/StatefulPartitionedCall;
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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         U╙
!dropout_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_84078\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Щ
	Reshape_1Reshape*dropout_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Un
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  Uj
NoOpNoOp"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :                  U2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
ў
Ъ
*__inference_sequential_layer_call_fn_85757

inputs(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨
-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨
+
time_distributed_kernel:
╘к$
time_distributed_bias:	к,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*+
time_distributed_6_kernel:*%
time_distributed_6_bias:+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_biastime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_84922s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш
Ў
while_cond_87353
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_87353___redundant_placeholder0-
)while_cond_87353___redundant_placeholder1-
)while_cond_87353___redundant_placeholder2-
)while_cond_87353___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
▌	
У
B__inference_dense_4_layer_call_and_return_conditional_losses_84414

inputsA
/matmul_readvariableop_time_distributed_8_kernel:<
.biasadd_readvariableop_time_distributed_8_bias:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_8_bias*
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
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
м
щ
K__inference_time_distributed_layer_call_and_return_conditional_losses_83880

inputs1
dense_time_distributed_kernel:
╘к*
dense_time_distributed_bias:	к
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
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘О
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_time_distributed_kerneldense_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_83838\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ц
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кo
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  кf
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╘: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84844

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:U*D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:*
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         *З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         U: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
Б
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87880

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кa
dropout/IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   А
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         к_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         к"
identityIdentity:output:0*+
_input_shapes
:         к:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
Е
F
*__inference_cropping1d_layer_call_fn_88550

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
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_84919d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         
"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
У_
б
!__inference__traced_restore_89112
file_prefix,
"assignvariableop_training_sgd_iter:	 /
%assignvariableop_1_training_sgd_decay: 7
-assignvariableop_2_training_sgd_learning_rate: 2
(assignvariableop_3_training_sgd_momentum: ;
(assignvariableop_4_lstm_lstm_cell_kernel:	╨
F
2assignvariableop_5_lstm_lstm_cell_recurrent_kernel:
╘╨
5
&assignvariableop_6_lstm_lstm_cell_bias:	╨
@
,assignvariableop_7_lstm_1_lstm_cell_1_kernel:
╘╨
J
6assignvariableop_8_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
9
*assignvariableop_9_lstm_1_lstm_cell_1_bias:	╨
?
+assignvariableop_10_time_distributed_kernel:
╘к8
)assignvariableop_11_time_distributed_bias:	к@
-assignvariableop_12_time_distributed_2_kernel:	кU9
+assignvariableop_13_time_distributed_2_bias:U?
-assignvariableop_14_time_distributed_4_kernel:U*9
+assignvariableop_15_time_distributed_4_bias:*?
-assignvariableop_16_time_distributed_6_kernel:*9
+assignvariableop_17_time_distributed_6_bias:?
-assignvariableop_18_time_distributed_8_kernel:9
+assignvariableop_19_time_distributed_8_bias:#
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: 
identity_25ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9е	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╦
value┴B╛B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:Н
AssignVariableOpAssignVariableOp"assignvariableop_training_sgd_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_1AssignVariableOp%assignvariableop_1_training_sgd_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_2AssignVariableOp-assignvariableop_2_training_sgd_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_3AssignVariableOp(assignvariableop_3_training_sgd_momentumIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_4AssignVariableOp(assignvariableop_4_lstm_lstm_cell_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_5AssignVariableOp2assignvariableop_5_lstm_lstm_cell_recurrent_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_6AssignVariableOp&assignvariableop_6_lstm_lstm_cell_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_1_lstm_cell_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_8AssignVariableOp6assignvariableop_8_lstm_1_lstm_cell_1_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_1_lstm_cell_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_10AssignVariableOp+assignvariableop_10_time_distributed_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_11AssignVariableOp)assignvariableop_11_time_distributed_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_12AssignVariableOp-assignvariableop_12_time_distributed_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_13AssignVariableOp+assignvariableop_13_time_distributed_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_14AssignVariableOp-assignvariableop_14_time_distributed_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_15AssignVariableOp+assignvariableop_15_time_distributed_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_16AssignVariableOp-assignvariableop_16_time_distributed_6_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_17AssignVariableOp+assignvariableop_17_time_distributed_6_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_18AssignVariableOp-assignvariableop_18_time_distributed_8_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_19AssignVariableOp+assignvariableop_19_time_distributed_8_biasIdentity_19:output:0"/device:CPU:0*
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
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ▀
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
·
┐
2__inference_time_distributed_4_layer_call_fn_88099

inputs+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84844s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         U: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
╞Q
Ш

E__inference_sequential_layer_call_and_return_conditional_losses_84922

inputs-
lstm_lstm_lstm_cell_kernel:	╨
8
$lstm_lstm_lstm_cell_recurrent_kernel:
╘╨
'
lstm_lstm_lstm_cell_bias:	╨
4
 lstm_1_lstm_1_lstm_cell_1_kernel:
╘╨
>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
-
lstm_1_lstm_1_lstm_cell_1_bias:	╨
<
(time_distributed_time_distributed_kernel:
╘к5
&time_distributed_time_distributed_bias:	к?
,time_distributed_2_time_distributed_2_kernel:	кU8
*time_distributed_2_time_distributed_2_bias:U>
,time_distributed_4_time_distributed_4_kernel:U*8
*time_distributed_4_time_distributed_4_bias:*>
,time_distributed_6_time_distributed_6_kernel:*8
*time_distributed_6_time_distributed_6_bias:>
,time_distributed_8_time_distributed_8_kernel:8
*time_distributed_8_time_distributed_8_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallв*time_distributed_8/StatefulPartitionedCallи
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_84621▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_84764╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_84782o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  и
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘√
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_84796q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кф
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_84813q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ░
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к№
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84827q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         Uф
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84844q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   п
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U№
"time_distributed_5/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84858q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *ф
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_5/PartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84875q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   п
time_distributed_6/ReshapeReshape+time_distributed_5/PartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *№
"time_distributed_7/PartitionedCallPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84889q
 time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╖
time_distributed_7/ReshapeReshape3time_distributed_6/StatefulPartitionedCall:output:0)time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         ф
*time_distributed_8/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_7/PartitionedCall:output:0,time_distributed_8_time_distributed_8_kernel*time_distributed_8_time_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84906q
 time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       п
time_distributed_8/ReshapeReshape+time_distributed_7/PartitionedCall:output:0)time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_84919v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
х
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall+^time_distributed_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall2X
*time_distributed_8/StatefulPartitionedCall*time_distributed_8/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
у8
л
?__inference_lstm_layer_call_and_return_conditional_losses_83486

inputs2
lstm_cell_lstm_lstm_cell_kernel:	╨
=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
╘╨
,
lstm_cell_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83367n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83420*
condR
while_cond_83419*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘r
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
┬
Є
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84456

inputs3
!dense_4_time_distributed_8_kernel:-
dense_4_time_distributed_8_bias:
identityИвdense_4/StatefulPartitionedCall;
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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Щ
dense_4/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_4_time_distributed_8_kerneldense_4_time_distributed_8_bias*
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
B__inference_dense_4_layer_call_and_return_conditional_losses_84414\
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
	Reshape_1Reshape(dense_4/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  h
NoOpNoOp ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
є
E
)__inference_dropout_1_layer_call_fn_88808

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
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_84048`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         U"
identityIdentity:output:0*&
_input_shapes
:         U:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
╗
l
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88078

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         U\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_1/dropout/MulMulReshape:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:         UW
dropout_1/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:         U*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         UГ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         UЗ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   Б
	Reshape_1Reshapedropout_1/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         U^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         U"
identityIdentity:output:0**
_input_shapes
:         U:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
┼
Ю
lstm_while_cond_85834
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_strided_slice_12
.lstm_while_cond_85834___redundant_placeholder02
.lstm_while_cond_85834___redundant_placeholder12
.lstm_while_cond_85834___redundant_placeholder22
.lstm_while_cond_85834___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88176

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:U*D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:*
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         *З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         U: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
м9
┬
A__inference_lstm_1_layer_call_and_return_conditional_losses_83808

inputs9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
╘╨
C
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_mask│
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83689n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83742*
condR
while_cond_83741*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  ╘: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_85023

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:*D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         *: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
╥0
б
lstm_while_body_86201
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_strided_slice_1_0V
Rtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_strided_slice_1T
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
╗
l
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_85105

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         U\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_1/dropout/MulMulReshape:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:         UW
dropout_1/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:         U*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         UГ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         UЗ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   Б
	Reshape_1Reshapedropout_1/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         U^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         U"
identityIdentity:output:0**
_input_shapes
:         U:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
╣
N
2__inference_time_distributed_3_layer_call_fn_87999

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
 :                  U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84055m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  U"
identityIdentity:output:0*3
_input_shapes"
 :                  U:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
╚	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_84366

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ЫЩ
Е
E__inference_sequential_layer_call_and_return_conditional_losses_86144

inputsM
:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
Z
Flstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
H
9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
V
Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
b
Nlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
P
Alstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
X
Dtime_distributed_dense_matmul_readvariableop_time_distributed_kernel:
╘кR
Ctime_distributed_dense_biasadd_readvariableop_time_distributed_bias:	к]
Jtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUW
Itime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:U\
Jtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:U*W
Itime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:*\
Jtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel:*W
Itime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias:\
Jtime_distributed_8_dense_4_matmul_readvariableop_time_distributed_8_kernel:W
Itime_distributed_8_dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИв%lstm/lstm_cell/BiasAdd/ReadVariableOpв$lstm/lstm_cell/MatMul/ReadVariableOpв&lstm/lstm_cell/MatMul_1/ReadVariableOpв
lstm/whileв)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpв(lstm_1/lstm_cell_1/MatMul/ReadVariableOpв*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpвlstm_1/whileв-time_distributed/dense/BiasAdd/ReadVariableOpв,time_distributed/dense/MatMul/ReadVariableOpв1time_distributed_2/dense_1/BiasAdd/ReadVariableOpв0time_distributed_2/dense_1/MatMul/ReadVariableOpв1time_distributed_4/dense_2/BiasAdd/ReadVariableOpв0time_distributed_4/dense_2/MatMul/ReadVariableOpв1time_distributed_6/dense_3/BiasAdd/ReadVariableOpв0time_distributed_6/dense_3/MatMul/ReadVariableOpв1time_distributed_8/dense_4/BiasAdd/ReadVariableOpв0time_distributed_8/dense_4/MatMul/ReadVariableOp@

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
B :╘В
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
:         ╘X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘Ж
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
:         ╘h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:         N
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
:	╨
*
dtype0Я
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0Щ
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Т
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0Ы
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splits
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘u
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘Б
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:         ╘Й
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘В
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘u
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘Ж
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╟
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_85835*!
condR
lstm_while_cond_85834*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Ж
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╥
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ж
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘`
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
B :╘И
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
:         ╘Z
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘М
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
:         ╘j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          К
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:         ╘R
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
valueB"    T  ї
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
:         ╘*
shrink_axis_maskн
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpBlstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0й
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
╗
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0г
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Ю
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
и
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0з
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
d
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_split{
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘}
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘Л
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:         ╘Х
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘О
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘}
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘Т
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ═
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_85970*#
condR
lstm_1_while_cond_85969*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations И
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╪
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘b
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  Ч
time_distributed/ReshapeReshapelstm_1/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘│
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOpDtime_distributed_dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0│
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ко
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpCtime_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0╝
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кu
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   ░
time_distributed/Reshape_1Reshape'time_distributed/dense/BiasAdd:output:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кq
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  Ы
time_distributed/Reshape_2Reshapelstm_1/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╘q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   и
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кЗ
#time_distributed_1/dropout/IdentityIdentity#time_distributed_1/Reshape:output:0*
T0*(
_output_shapes
:         кw
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   ╣
time_distributed_1/Reshape_1Reshape,time_distributed_1/dropout/Identity:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кs
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   м
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         кq
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   к
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к╝
0time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpJtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0╝
!time_distributed_2/dense_1/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U╖
1time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0╟
"time_distributed_2/dense_1/BiasAddBiasAdd+time_distributed_2/dense_1/MatMul:product:09time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Uw
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ╖
time_distributed_2/Reshape_1Reshape+time_distributed_2/dense_1/BiasAdd:output:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Us
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   о
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         кq
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   й
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         UИ
%time_distributed_3/dropout_1/IdentityIdentity#time_distributed_3/Reshape:output:0*
T0*'
_output_shapes
:         Uw
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ║
time_distributed_3/Reshape_1Reshape.time_distributed_3/dropout_1/Identity:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Us
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   н
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         Uq
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   й
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U╗
0time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpJtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0╝
!time_distributed_4/dense_2/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *╖
1time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0╟
"time_distributed_4/dense_2/BiasAddBiasAdd+time_distributed_4/dense_2/MatMul:product:09time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *w
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ╖
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_2/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *s
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   н
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         Uq
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   й
time_distributed_5/ReshapeReshape%time_distributed_4/Reshape_1:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *И
%time_distributed_5/dropout_2/IdentityIdentity#time_distributed_5/Reshape:output:0*
T0*'
_output_shapes
:         *w
"time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ║
time_distributed_5/Reshape_1Reshape.time_distributed_5/dropout_2/Identity:output:0+time_distributed_5/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *s
"time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   н
time_distributed_5/Reshape_2Reshape%time_distributed_4/Reshape_1:output:0+time_distributed_5/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         *q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   й
time_distributed_6/ReshapeReshape%time_distributed_5/Reshape_1:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *╗
0time_distributed_6/dense_3/MatMul/ReadVariableOpReadVariableOpJtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0╝
!time_distributed_6/dense_3/MatMulMatMul#time_distributed_6/Reshape:output:08time_distributed_6/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╖
1time_distributed_6/dense_3/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0╟
"time_distributed_6/dense_3/BiasAddBiasAdd+time_distributed_6/dense_3/MatMul:product:09time_distributed_6/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
"time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
time_distributed_6/Reshape_1Reshape+time_distributed_6/dense_3/BiasAdd:output:0+time_distributed_6/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   н
time_distributed_6/Reshape_2Reshape%time_distributed_5/Reshape_1:output:0+time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         *q
 time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       й
time_distributed_7/ReshapeReshape%time_distributed_6/Reshape_1:output:0)time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         И
%time_distributed_7/dropout_3/IdentityIdentity#time_distributed_7/Reshape:output:0*
T0*'
_output_shapes
:         w
"time_distributed_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ║
time_distributed_7/Reshape_1Reshape.time_distributed_7/dropout_3/Identity:output:0+time_distributed_7/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_7/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"       н
time_distributed_7/Reshape_2Reshape%time_distributed_6/Reshape_1:output:0+time_distributed_7/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         q
 time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       й
time_distributed_8/ReshapeReshape%time_distributed_7/Reshape_1:output:0)time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ╗
0time_distributed_8/dense_4/MatMul/ReadVariableOpReadVariableOpJtime_distributed_8_dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0╝
!time_distributed_8/dense_4/MatMulMatMul#time_distributed_8/Reshape:output:08time_distributed_8/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╖
1time_distributed_8/dense_4/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_8_dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0╟
"time_distributed_8/dense_4/BiasAddBiasAdd+time_distributed_8/dense_4/MatMul:product:09time_distributed_8/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
"time_distributed_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
time_distributed_8/Reshape_1Reshape+time_distributed_8/dense_4/BiasAdd:output:0+time_distributed_8/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_8/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"       н
time_distributed_8/Reshape_2Reshape%time_distributed_7/Reshape_1:output:0+time_distributed_8/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         s
cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           u
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
cropping1d/strided_sliceStridedSlice%time_distributed_8/Reshape_1:output:0'cropping1d/strided_slice/stack:output:0)cropping1d/strided_slice/stack_1:output:0)cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         
*

begin_mask*
end_maskt
IdentityIdentity!cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:         
┘
NoOpNoOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_2/dense_1/BiasAdd/ReadVariableOp1^time_distributed_2/dense_1/MatMul/ReadVariableOp2^time_distributed_4/dense_2/BiasAdd/ReadVariableOp1^time_distributed_4/dense_2/MatMul/ReadVariableOp2^time_distributed_6/dense_3/BiasAdd/ReadVariableOp1^time_distributed_6/dense_3/MatMul/ReadVariableOp2^time_distributed_8/dense_4/BiasAdd/ReadVariableOp1^time_distributed_8/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_2/dense_1/BiasAdd/ReadVariableOp1time_distributed_2/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_2/dense_1/MatMul/ReadVariableOp0time_distributed_2/dense_1/MatMul/ReadVariableOp2f
1time_distributed_4/dense_2/BiasAdd/ReadVariableOp1time_distributed_4/dense_2/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_2/MatMul/ReadVariableOp0time_distributed_4/dense_2/MatMul/ReadVariableOp2f
1time_distributed_6/dense_3/BiasAdd/ReadVariableOp1time_distributed_6/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_6/dense_3/MatMul/ReadVariableOp0time_distributed_6/dense_3/MatMul/ReadVariableOp2f
1time_distributed_8/dense_4/BiasAdd/ReadVariableOp1time_distributed_8/dense_4/BiasAdd/ReadVariableOp2d
0time_distributed_8/dense_4/MatMul/ReadVariableOp0time_distributed_8/dense_4/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
П
k
2__inference_time_distributed_1_layer_call_fn_87822

inputs
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_83955}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*4
_input_shapes#
!:                  к22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
ч
k
2__inference_time_distributed_3_layer_call_fn_88014

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_85105s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         U22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
╞
є
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_84024

inputs4
!dense_1_time_distributed_2_kernel:	кU-
dense_1_time_distributed_2_bias:U
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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЩ
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_1_time_distributed_2_kerneldense_1_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_83982\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Un
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  Uh
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  к: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
ь1
ю
 sequential_lstm_while_body_82861&
"sequential_lstm_while_loop_counter,
(sequential_lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3%
!sequential_lstm_strided_slice_1_0a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5#
sequential_lstm_strided_slice_1_
[tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
Г
╛
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88491

inputsI
7dense_4_matmul_readvariableop_time_distributed_8_kernel:D
6dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOp;
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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Х
dense_4/MatMul/ReadVariableOpReadVariableOp7dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0Г
dense_4/MatMulMatMulReshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_4/BiasAdd/ReadVariableOpReadVariableOp6dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
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
	Reshape_1Reshapedense_4/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  З
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
г
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84199

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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *├
dropout_2/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_84192\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_2/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  *"
identityIdentity:output:0*3
_input_shapes"
 :                  *:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
Щ
N
2__inference_time_distributed_1_layer_call_fn_87827

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
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_84796e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         к"
identityIdentity:output:0*+
_input_shapes
:         к:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
╜
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87848

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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кa
dropout/IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         к\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Й
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кh
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  к"
identityIdentity:output:0*4
_input_shapes#
!:                  к:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
н
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_84336

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╘
┤
'__inference_dense_4_layer_call_fn_88925

inputs+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_8_kerneltime_distributed_8_bias*
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
B__inference_dense_4_layer_call_and_return_conditional_losses_84414o
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
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84858

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *b
dropout_2/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   Б
	Reshape_1Reshapedropout_2/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         *"
identityIdentity:output:0**
_input_shapes
:         *:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
╦
я
&__inference_lstm_1_layer_call_fn_87150

inputs-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨

identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_84764t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
п
`
B__inference_dropout_layer_call_and_return_conditional_losses_88774

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         к\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         к"!

identity_1Identity_1:output:0*'
_input_shapes
:         к:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
¤
└
2__inference_time_distributed_2_layer_call_fn_87924

inputs,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_85131s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         к: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84875

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:*D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         *: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
Ш
Ў
while_cond_85256
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_85256___redundant_placeholder0-
)while_cond_85256___redundant_placeholder1-
)while_cond_85256___redundant_placeholder2-
)while_cond_85256___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
О
┐
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83557

inputs

states
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
O
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Х
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
В
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         ╘:         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates
╫
о
lstm_1_while_cond_85969
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_1_strided_slice_14
0lstm_1_while_cond_85969___redundant_placeholder04
0lstm_1_while_cond_85969___redundant_placeholder14
0lstm_1_while_cond_85969___redundant_placeholder24
0lstm_1_while_cond_85969___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
Л
k
2__inference_time_distributed_7_layer_call_fn_88368

inputs
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84387|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :                  22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
є
C
'__inference_dropout_layer_call_fn_88764

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
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_83904a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         к"
identityIdentity:output:0*'
_input_shapes
:         к:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
н
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_84192

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         *[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         *"!

identity_1Identity_1:output:0*&
_input_shapes
:         *:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88526

inputsI
7dense_4_matmul_readvariableop_time_distributed_8_kernel:D
6dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Х
dense_4/MatMul/ReadVariableOpReadVariableOp7dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0Г
dense_4/MatMulMatMulReshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_4/BiasAdd/ReadVariableOpReadVariableOp6dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_4/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_84782

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
╘кA
2dense_biasadd_readvariableop_time_distributed_bias:	к
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘С
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кМ
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кf
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         кГ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╘: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_85185

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
╘кA
2dense_biasadd_readvariableop_time_distributed_bias:	к
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘С
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кМ
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кf
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         кГ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╘: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
┼
`
'__inference_dropout_layer_call_fn_88769

inputs
identityИвStatefulPartitionedCall╛
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_83934p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*'
_input_shapes
:         к22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
╥Q
Ь

E__inference_sequential_layer_call_and_return_conditional_losses_85663

lstm_input-
lstm_lstm_lstm_cell_kernel:	╨
8
$lstm_lstm_lstm_cell_recurrent_kernel:
╘╨
'
lstm_lstm_lstm_cell_bias:	╨
4
 lstm_1_lstm_1_lstm_cell_1_kernel:
╘╨
>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
-
lstm_1_lstm_1_lstm_cell_1_bias:	╨
<
(time_distributed_time_distributed_kernel:
╘к5
&time_distributed_time_distributed_bias:	к?
,time_distributed_2_time_distributed_2_kernel:	кU8
*time_distributed_2_time_distributed_2_bias:U>
,time_distributed_4_time_distributed_4_kernel:U*8
*time_distributed_4_time_distributed_4_bias:*>
,time_distributed_6_time_distributed_6_kernel:*8
*time_distributed_6_time_distributed_6_bias:>
,time_distributed_8_time_distributed_8_kernel:8
*time_distributed_8_time_distributed_8_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallв*time_distributed_8/StatefulPartitionedCallм
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_84621▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_84764╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_84782o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  и
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘√
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_84796q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кф
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_84813q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ░
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к№
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84827q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         Uф
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84844q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   п
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U№
"time_distributed_5/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84858q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *ф
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_5/PartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84875q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   п
time_distributed_6/ReshapeReshape+time_distributed_5/PartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *№
"time_distributed_7/PartitionedCallPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84889q
 time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╖
time_distributed_7/ReshapeReshape3time_distributed_6/StatefulPartitionedCall:output:0)time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         ф
*time_distributed_8/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_7/PartitionedCall:output:0,time_distributed_8_time_distributed_8_kernel*time_distributed_8_time_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84906q
 time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       п
time_distributed_8/ReshapeReshape+time_distributed_7/PartitionedCall:output:0)time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_84919v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
х
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall+^time_distributed_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall2X
*time_distributed_8/StatefulPartitionedCall*time_distributed_8/StatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
Щ
╝
0__inference_time_distributed_layer_call_fn_87728

inputs+
time_distributed_kernel:
╘к$
time_distributed_bias:	к
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_83880}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╘: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
═1
к
while_body_85257
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
ў
▓
D__inference_lstm_cell_layer_call_and_return_conditional_losses_88654

inputs
states_0
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	╨
K
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
9
*biasadd_readvariableop_lstm_lstm_cell_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
С
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
▌	
У
B__inference_dense_2_layer_call_and_return_conditional_losses_88847

inputsA
/matmul_readvariableop_time_distributed_4_kernel:U*<
.biasadd_readvariableop_time_distributed_4_bias:*
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         *w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         U: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
═1
к
while_body_87632
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
╚	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_88918

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
└
2__inference_time_distributed_2_layer_call_fn_87903

inputs,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_83991|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  к: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
┬
Є
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84423

inputs3
!dense_4_time_distributed_8_kernel:-
dense_4_time_distributed_8_bias:
identityИвdense_4/StatefulPartitionedCall;
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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Щ
dense_4/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_4_time_distributed_8_kerneldense_4_time_distributed_8_bias*
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
B__inference_dense_4_layer_call_and_return_conditional_losses_84414\
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
	Reshape_1Reshape(dense_4/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  h
NoOpNoOp ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
м
р
$__inference_lstm_layer_call_fn_86570

inputs(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨

identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_85494t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
я
░
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83367

inputs

states
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	╨
K
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
9
*biasadd_readvariableop_lstm_lstm_cell_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
С
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates
═
F
*__inference_cropping1d_layer_call_fn_88545

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
E__inference_cropping1d_layer_call_and_return_conditional_losses_84473v
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
Ю
┐
2__inference_time_distributed_4_layer_call_fn_88085

inputs+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84135|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  U: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
Ш
Ў
while_cond_84538
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_84538___redundant_placeholder0-
)while_cond_84538___redundant_placeholder1-
)while_cond_84538___redundant_placeholder2-
)while_cond_84538___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
╚	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_88874

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         *C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         **
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         *o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         *i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         *Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         *"
identityIdentity:output:0*&
_input_shapes
:         *:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
Х
N
2__inference_time_distributed_5_layer_call_fn_88191

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
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84858d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         *"
identityIdentity:output:0**
_input_shapes
:         *:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
┬
Є
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84312

inputs3
!dense_3_time_distributed_6_kernel:*-
dense_3_time_distributed_6_bias:
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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Щ
dense_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_3_time_distributed_6_kerneldense_3_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_84270\
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  h
NoOpNoOp ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  *: : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
Ш
Ў
while_cond_83567
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_83567___redundant_placeholder0-
)while_cond_83567___redundant_placeholder1-
)while_cond_83567___redundant_placeholder2-
)while_cond_83567___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
Ю
Р
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84243

inputs
identityИв!dropout_2/StatefulPartitionedCall;
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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *╙
!dropout_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_84222\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Щ
	Reshape_1Reshape*dropout_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  *j
NoOpNoOp"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :                  *2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
Ю
┐
2__inference_time_distributed_6_layer_call_fn_88267

inputs+
time_distributed_6_kernel:*%
time_distributed_6_bias:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84279|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  *: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
╬	
a
B__inference_dropout_layer_call_and_return_conditional_losses_88786

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         кC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         к*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         кp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         кj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         кZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         к"
identityIdentity:output:0*'
_input_shapes
:         к:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_87798

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
╘кA
2dense_biasadd_readvariableop_time_distributed_bias:	к
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘С
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кМ
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кf
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         кГ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╘: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
┐
░
+__inference_lstm_cell_1_layer_call_fn_88682

inputs
states_0
states_1-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨

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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83689p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         ╘:         ╘:         ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
═1
к
while_body_87215
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
▀
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_87763

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
╘кA
2dense_biasadd_readvariableop_time_distributed_bias:	к
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
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘С
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кМ
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         к\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ж
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кo
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  кГ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╘: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_87575

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
н
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ъ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘v
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_87493*
condR
while_cond_87492*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         ╘: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
ї
ё
&__inference_lstm_1_layer_call_fn_87142
inputs_0-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨

identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_83808}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  ╘
"
_user_specified_name
inputs/0
б
└
2__inference_time_distributed_2_layer_call_fn_87910

inputs,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_84024|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  к: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
Ў
l
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88235

inputs
identityИ;
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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_2/dropout/MulMulReshape:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:         *W
dropout_2/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:         **
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         *Г
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         *З
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:         *\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_2/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  *"
identityIdentity:output:0*3
_input_shapes"
 :                  *:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
Ц
┴
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_88712

inputs
states_0
states_1C
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
O
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpЗ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Х
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
В
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         ╘:         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
╚	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_84078

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Uo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         Ui
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         UY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         U"
identityIdentity:output:0*&
_input_shapes
:         U:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
ыI
╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_87436
inputs_0O
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
н
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ъ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘v
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_87354*
condR
while_cond_87353*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  ╘: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:                  ╘
"
_user_specified_name
inputs/0
▌	
У
B__inference_dense_3_layer_call_and_return_conditional_losses_88891

inputsA
/matmul_readvariableop_time_distributed_6_kernel:*<
.biasadd_readvariableop_time_distributed_6_bias:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         *: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
и
Ў
 sequential_lstm_while_cond_82860&
"sequential_lstm_while_loop_counter,
(sequential_lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3(
$less_sequential_lstm_strided_slice_1=
9sequential_lstm_while_cond_82860___redundant_placeholder0=
9sequential_lstm_while_cond_82860___redundant_placeholder1=
9sequential_lstm_while_cond_82860___redundant_placeholder2=
9sequential_lstm_while_cond_82860___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
ч
k
2__inference_time_distributed_5_layer_call_fn_88196

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_85051s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         *22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
┼
b
)__inference_dropout_1_layer_call_fn_88813

inputs
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_84078o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*&
_input_shapes
:         U22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
Ю
┐
2__inference_time_distributed_8_layer_call_fn_88449

inputs+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_8_kerneltime_distributed_8_bias*
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
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84423|
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
$:                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88540

inputsI
7dense_4_matmul_readvariableop_time_distributed_8_kernel:D
6dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Х
dense_4/MatMul/ReadVariableOpReadVariableOp7dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0Г
dense_4/MatMulMatMulReshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_4/BiasAdd/ReadVariableOpReadVariableOp6dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_4/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88148

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:U*D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:*
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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  *З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  U: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
є
E
)__inference_dropout_2_layer_call_fn_88852

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
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_84192`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         *"
identityIdentity:output:0*&
_input_shapes
:         *:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
╚	
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_88830

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Uo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         Ui
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         UY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         U"
identityIdentity:output:0*&
_input_shapes
:         U:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
╚	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_84222

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         *C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         **
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         *o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         *i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         *Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         *"
identityIdentity:output:0*&
_input_shapes
:         *:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87994

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:U
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЦ
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Ue
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         UЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         к: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
йY
╨
E__inference_sequential_layer_call_and_return_conditional_losses_85713

lstm_input-
lstm_lstm_lstm_cell_kernel:	╨
8
$lstm_lstm_lstm_cell_recurrent_kernel:
╘╨
'
lstm_lstm_lstm_cell_bias:	╨
4
 lstm_1_lstm_1_lstm_cell_1_kernel:
╘╨
>
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
-
lstm_1_lstm_1_lstm_cell_1_bias:	╨
<
(time_distributed_time_distributed_kernel:
╘к5
&time_distributed_time_distributed_bias:	к?
,time_distributed_2_time_distributed_2_kernel:	кU8
*time_distributed_2_time_distributed_2_bias:U>
,time_distributed_4_time_distributed_4_kernel:U*8
*time_distributed_4_time_distributed_4_bias:*>
,time_distributed_6_time_distributed_6_kernel:*8
*time_distributed_6_time_distributed_6_bias:>
,time_distributed_8_time_distributed_8_kernel:8
*time_distributed_8_time_distributed_8_bias:
identityИвlstm/StatefulPartitionedCallвlstm_1/StatefulPartitionedCallв(time_distributed/StatefulPartitionedCallв*time_distributed_1/StatefulPartitionedCallв*time_distributed_2/StatefulPartitionedCallв*time_distributed_3/StatefulPartitionedCallв*time_distributed_4/StatefulPartitionedCallв*time_distributed_5/StatefulPartitionedCallв*time_distributed_6/StatefulPartitionedCallв*time_distributed_7/StatefulPartitionedCallв*time_distributed_8/StatefulPartitionedCallм
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_85494▌
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_85339╒
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85185o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  и
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘Л
*time_distributed_1/StatefulPartitionedCallStatefulPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85159q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╢
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кь
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_1/StatefulPartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_85131q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╕
time_distributed_2/ReshapeReshape3time_distributed_1/StatefulPartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к╣
*time_distributed_3/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0+^time_distributed_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_85105q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╖
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         Uь
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_3/StatefulPartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_85077q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╖
time_distributed_4/ReshapeReshape3time_distributed_3/StatefulPartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U╣
*time_distributed_5/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0+^time_distributed_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_85051q
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╖
time_distributed_5/ReshapeReshape3time_distributed_4/StatefulPartitionedCall:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *ь
*time_distributed_6/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_5/StatefulPartitionedCall:output:0,time_distributed_6_time_distributed_6_kernel*time_distributed_6_time_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_85023q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╖
time_distributed_6/ReshapeReshape3time_distributed_5/StatefulPartitionedCall:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *╣
*time_distributed_7/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_6/StatefulPartitionedCall:output:0+^time_distributed_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84997q
 time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╖
time_distributed_7/ReshapeReshape3time_distributed_6/StatefulPartitionedCall:output:0)time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         ь
*time_distributed_8/StatefulPartitionedCallStatefulPartitionedCall3time_distributed_7/StatefulPartitionedCall:output:0,time_distributed_8_time_distributed_8_kernel*time_distributed_8_time_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84969q
 time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╖
time_distributed_8/ReshapeReshape3time_distributed_7/StatefulPartitionedCall:output:0)time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ь
cropping1d/PartitionedCallPartitionedCall3time_distributed_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_cropping1d_layer_call_and_return_conditional_losses_84919v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
Щ
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_1/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_3/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall+^time_distributed_5/StatefulPartitionedCall+^time_distributed_6/StatefulPartitionedCall+^time_distributed_7/StatefulPartitionedCall+^time_distributed_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_1/StatefulPartitionedCall*time_distributed_1/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_3/StatefulPartitionedCall*time_distributed_3/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall2X
*time_distributed_5/StatefulPartitionedCall*time_distributed_5/StatefulPartitionedCall2X
*time_distributed_6/StatefulPartitionedCall*time_distributed_6/StatefulPartitionedCall2X
*time_distributed_7/StatefulPartitionedCall*time_distributed_7/StatefulPartitionedCall2X
*time_distributed_8/StatefulPartitionedCall*time_distributed_8/StatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
у8
л
?__inference_lstm_layer_call_and_return_conditional_losses_83312

inputs2
lstm_cell_lstm_lstm_cell_kernel:	╨
=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
╘╨
,
lstm_cell_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83235n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83246*
condR
while_cond_83245*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘r
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
┐
░
+__inference_lstm_cell_1_layer_call_fn_88668

inputs
states_0
states_1-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨

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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83557p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*U
_input_shapesD
B:         ╘:         ╘:         ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
Ч
О
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_83955

inputs
identityИвdropout/StatefulPartitionedCall;
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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         к╨
dropout/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_83934\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ш
	Reshape_1Reshape(dropout/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кo
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  кh
NoOpNoOp ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*4
_input_shapes#
!:                  к2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
╗
l
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88442

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_3/dropout/MulMulReshape:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:         W
dropout_3/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Г
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         З
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          Б
	Reshape_1Reshapedropout_3/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
═1
к
while_body_87493
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
я
░
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83235

inputs

states
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	╨
K
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
9
*biasadd_readvariableop_lstm_lstm_cell_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
С
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates:PL
(
_output_shapes
:         ╘
 
_user_specified_namestates
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_84813

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:U
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЦ
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Ue
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         UЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         к: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
Ш
Ў
while_cond_85411
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_85411___redundant_placeholder0-
)while_cond_85411___redundant_placeholder1-
)while_cond_85411___redundant_placeholder2-
)while_cond_85411___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
с	
Ф
B__inference_dense_1_layer_call_and_return_conditional_losses_83982

inputsB
/matmul_readvariableop_time_distributed_2_kernel:	кU<
.biasadd_readvariableop_time_distributed_2_bias:U
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЖ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UБ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Uw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         к: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
┼
b
)__inference_dropout_3_layer_call_fn_88901

inputs
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_84366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╔3
и	
"sequential_lstm_1_while_body_82996(
$sequential_lstm_1_while_loop_counter.
*sequential_lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3'
#sequential_lstm_1_strided_slice_1_0c
_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5%
!sequential_lstm_1_strided_slice_1a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  б
#TensorArrayV2Read/TensorListGetItemTensorListGetItem_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
▀
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_87784

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
╘кA
2dense_biasadd_readvariableop_time_distributed_bias:	к
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
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘С
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кМ
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         к\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ж
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кo
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  кГ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╘: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
╘
┤
'__inference_dense_2_layer_call_fn_88837

inputs+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_84126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         U: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
╗
l
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_85051

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_2/dropout/MulMulReshape:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:         *W
dropout_2/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:         **
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         *Г
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         *З
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   Б
	Reshape_1Reshapedropout_2/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         *"
identityIdentity:output:0**
_input_shapes
:         *:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
Г
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88309

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:*D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  *: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
Ш
Ў
while_cond_86904
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_86904___redundant_placeholder0-
)while_cond_86904___redundant_placeholder1-
)while_cond_86904___redundant_placeholder2-
)while_cond_86904___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
┼
Ю
lstm_while_cond_86200
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_strided_slice_12
.lstm_while_cond_86200___redundant_placeholder02
.lstm_while_cond_86200___redundant_placeholder12
.lstm_while_cond_86200___redundant_placeholder22
.lstm_while_cond_86200___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
Г
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88127

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:U*D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:*
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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  *З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  U: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
Ю
┐
2__inference_time_distributed_8_layer_call_fn_88456

inputs+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_8_kerneltime_distributed_8_bias*
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
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84456|
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
$:                  : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┬
Є
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84168

inputs3
!dense_2_time_distributed_4_kernel:U*-
dense_2_time_distributed_4_bias:*
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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UЩ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_2_time_distributed_4_kerneldense_2_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_84126\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  *h
NoOpNoOp ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  U: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88162

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:U*D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:*
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         *З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         U: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
Ш
Ў
while_cond_87043
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_87043___redundant_placeholder0-
)while_cond_87043___redundant_placeholder1-
)while_cond_87043___redundant_placeholder2-
)while_cond_87043___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
И
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87966

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:U
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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЦ
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Un
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  UЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  к: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
╫┐
Е
E__inference_sequential_layer_call_and_return_conditional_losses_86538

inputsM
:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
Z
Flstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
H
9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
V
Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
b
Nlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
P
Alstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
X
Dtime_distributed_dense_matmul_readvariableop_time_distributed_kernel:
╘кR
Ctime_distributed_dense_biasadd_readvariableop_time_distributed_bias:	к]
Jtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUW
Itime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:U\
Jtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:U*W
Itime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:*\
Jtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel:*W
Itime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias:\
Jtime_distributed_8_dense_4_matmul_readvariableop_time_distributed_8_kernel:W
Itime_distributed_8_dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИв%lstm/lstm_cell/BiasAdd/ReadVariableOpв$lstm/lstm_cell/MatMul/ReadVariableOpв&lstm/lstm_cell/MatMul_1/ReadVariableOpв
lstm/whileв)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpв(lstm_1/lstm_cell_1/MatMul/ReadVariableOpв*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpвlstm_1/whileв-time_distributed/dense/BiasAdd/ReadVariableOpв,time_distributed/dense/MatMul/ReadVariableOpв1time_distributed_2/dense_1/BiasAdd/ReadVariableOpв0time_distributed_2/dense_1/MatMul/ReadVariableOpв1time_distributed_4/dense_2/BiasAdd/ReadVariableOpв0time_distributed_4/dense_2/MatMul/ReadVariableOpв1time_distributed_6/dense_3/BiasAdd/ReadVariableOpв0time_distributed_6/dense_3/MatMul/ReadVariableOpв1time_distributed_8/dense_4/BiasAdd/ReadVariableOpв0time_distributed_8/dense_4/MatMul/ReadVariableOp@

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
B :╘В
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
:         ╘X
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘Ж
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
:         ╘h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:         N
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
:	╨
*
dtype0Я
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0Щ
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Т
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0Ы
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splits
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘u
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘Б
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:         ╘Й
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘В
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘u
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘Ж
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╟
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_86201*!
condR
lstm_while_cond_86200*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Ж
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╥
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ж
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘`
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
B :╘И
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
:         ╘Z
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘М
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
:         ╘j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          К
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:         ╘R
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
valueB"    T  ї
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
:         ╘*
shrink_axis_maskн
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpBlstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0й
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
╗
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0г
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Ю
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
и
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0з
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
d
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :є
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_split{
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘}
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘Л
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:         ╘Х
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘О
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘}
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘Т
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ═
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_1_while_body_86336*#
condR
lstm_1_while_cond_86335*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations И
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╪
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘b
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  Ч
time_distributed/ReshapeReshapelstm_1/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘│
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOpDtime_distributed_dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0│
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ко
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpCtime_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0╝
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кu
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   ░
time_distributed/Reshape_1Reshape'time_distributed/dense/BiasAdd:output:0)time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кq
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  Ы
time_distributed/Reshape_2Reshapelstm_1/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╘q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   и
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кm
(time_distributed_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?╕
&time_distributed_1/dropout/dropout/MulMul#time_distributed_1/Reshape:output:01time_distributed_1/dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         к{
(time_distributed_1/dropout/dropout/ShapeShape#time_distributed_1/Reshape:output:0*
T0*
_output_shapes
:├
?time_distributed_1/dropout/dropout/random_uniform/RandomUniformRandomUniform1time_distributed_1/dropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         к*
dtype0v
1time_distributed_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>°
/time_distributed_1/dropout/dropout/GreaterEqualGreaterEqualHtime_distributed_1/dropout/dropout/random_uniform/RandomUniform:output:0:time_distributed_1/dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         кж
'time_distributed_1/dropout/dropout/CastCast3time_distributed_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         к╗
(time_distributed_1/dropout/dropout/Mul_1Mul*time_distributed_1/dropout/dropout/Mul:z:0+time_distributed_1/dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         кw
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   ╣
time_distributed_1/Reshape_1Reshape,time_distributed_1/dropout/dropout/Mul_1:z:0+time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кs
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   м
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         кq
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   к
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к╝
0time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpJtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0╝
!time_distributed_2/dense_1/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U╖
1time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0╟
"time_distributed_2/dense_1/BiasAddBiasAdd+time_distributed_2/dense_1/MatMul:product:09time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Uw
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ╖
time_distributed_2/Reshape_1Reshape+time_distributed_2/dense_1/BiasAdd:output:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Us
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   о
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         кq
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   й
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         Uo
*time_distributed_3/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?╗
(time_distributed_3/dropout_1/dropout/MulMul#time_distributed_3/Reshape:output:03time_distributed_3/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:         U}
*time_distributed_3/dropout_1/dropout/ShapeShape#time_distributed_3/Reshape:output:0*
T0*
_output_shapes
:╞
Atime_distributed_3/dropout_1/dropout/random_uniform/RandomUniformRandomUniform3time_distributed_3/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:         U*
dtype0x
3time_distributed_3/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>¤
1time_distributed_3/dropout_1/dropout/GreaterEqualGreaterEqualJtime_distributed_3/dropout_1/dropout/random_uniform/RandomUniform:output:0<time_distributed_3/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Uй
)time_distributed_3/dropout_1/dropout/CastCast5time_distributed_3/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         U└
*time_distributed_3/dropout_1/dropout/Mul_1Mul,time_distributed_3/dropout_1/dropout/Mul:z:0-time_distributed_3/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:         Uw
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ║
time_distributed_3/Reshape_1Reshape.time_distributed_3/dropout_1/dropout/Mul_1:z:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Us
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   н
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         Uq
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   й
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U╗
0time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpJtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0╝
!time_distributed_4/dense_2/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *╖
1time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0╟
"time_distributed_4/dense_2/BiasAddBiasAdd+time_distributed_4/dense_2/MatMul:product:09time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *w
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ╖
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_2/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *s
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   н
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         Uq
 time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   й
time_distributed_5/ReshapeReshape%time_distributed_4/Reshape_1:output:0)time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *o
*time_distributed_5/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?╗
(time_distributed_5/dropout_2/dropout/MulMul#time_distributed_5/Reshape:output:03time_distributed_5/dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:         *}
*time_distributed_5/dropout_2/dropout/ShapeShape#time_distributed_5/Reshape:output:0*
T0*
_output_shapes
:╞
Atime_distributed_5/dropout_2/dropout/random_uniform/RandomUniformRandomUniform3time_distributed_5/dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:         **
dtype0x
3time_distributed_5/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>¤
1time_distributed_5/dropout_2/dropout/GreaterEqualGreaterEqualJtime_distributed_5/dropout_2/dropout/random_uniform/RandomUniform:output:0<time_distributed_5/dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         *й
)time_distributed_5/dropout_2/dropout/CastCast5time_distributed_5/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         *└
*time_distributed_5/dropout_2/dropout/Mul_1Mul,time_distributed_5/dropout_2/dropout/Mul:z:0-time_distributed_5/dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:         *w
"time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ║
time_distributed_5/Reshape_1Reshape.time_distributed_5/dropout_2/dropout/Mul_1:z:0+time_distributed_5/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *s
"time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   н
time_distributed_5/Reshape_2Reshape%time_distributed_4/Reshape_1:output:0+time_distributed_5/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         *q
 time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   й
time_distributed_6/ReshapeReshape%time_distributed_5/Reshape_1:output:0)time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *╗
0time_distributed_6/dense_3/MatMul/ReadVariableOpReadVariableOpJtime_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0╝
!time_distributed_6/dense_3/MatMulMatMul#time_distributed_6/Reshape:output:08time_distributed_6/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╖
1time_distributed_6/dense_3/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0╟
"time_distributed_6/dense_3/BiasAddBiasAdd+time_distributed_6/dense_3/MatMul:product:09time_distributed_6/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
"time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
time_distributed_6/Reshape_1Reshape+time_distributed_6/dense_3/BiasAdd:output:0+time_distributed_6/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   н
time_distributed_6/Reshape_2Reshape%time_distributed_5/Reshape_1:output:0+time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         *q
 time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       й
time_distributed_7/ReshapeReshape%time_distributed_6/Reshape_1:output:0)time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         o
*time_distributed_7/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?╗
(time_distributed_7/dropout_3/dropout/MulMul#time_distributed_7/Reshape:output:03time_distributed_7/dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:         }
*time_distributed_7/dropout_3/dropout/ShapeShape#time_distributed_7/Reshape:output:0*
T0*
_output_shapes
:╞
Atime_distributed_7/dropout_3/dropout/random_uniform/RandomUniformRandomUniform3time_distributed_7/dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0x
3time_distributed_7/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>¤
1time_distributed_7/dropout_3/dropout/GreaterEqualGreaterEqualJtime_distributed_7/dropout_3/dropout/random_uniform/RandomUniform:output:0<time_distributed_7/dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         й
)time_distributed_7/dropout_3/dropout/CastCast5time_distributed_7/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         └
*time_distributed_7/dropout_3/dropout/Mul_1Mul,time_distributed_7/dropout_3/dropout/Mul:z:0-time_distributed_7/dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:         w
"time_distributed_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ║
time_distributed_7/Reshape_1Reshape.time_distributed_7/dropout_3/dropout/Mul_1:z:0+time_distributed_7/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_7/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"       н
time_distributed_7/Reshape_2Reshape%time_distributed_6/Reshape_1:output:0+time_distributed_7/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         q
 time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       й
time_distributed_8/ReshapeReshape%time_distributed_7/Reshape_1:output:0)time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ╗
0time_distributed_8/dense_4/MatMul/ReadVariableOpReadVariableOpJtime_distributed_8_dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0╝
!time_distributed_8/dense_4/MatMulMatMul#time_distributed_8/Reshape:output:08time_distributed_8/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╖
1time_distributed_8/dense_4/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_8_dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0╟
"time_distributed_8/dense_4/BiasAddBiasAdd+time_distributed_8/dense_4/MatMul:product:09time_distributed_8/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         w
"time_distributed_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╖
time_distributed_8/Reshape_1Reshape+time_distributed_8/dense_4/BiasAdd:output:0+time_distributed_8/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         s
"time_distributed_8/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"       н
time_distributed_8/Reshape_2Reshape%time_distributed_7/Reshape_1:output:0+time_distributed_8/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         s
cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           u
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
cropping1d/strided_sliceStridedSlice%time_distributed_8/Reshape_1:output:0'cropping1d/strided_slice/stack:output:0)cropping1d/strided_slice/stack_1:output:0)cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         
*

begin_mask*
end_maskt
IdentityIdentity!cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:         
┘
NoOpNoOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_2/dense_1/BiasAdd/ReadVariableOp1^time_distributed_2/dense_1/MatMul/ReadVariableOp2^time_distributed_4/dense_2/BiasAdd/ReadVariableOp1^time_distributed_4/dense_2/MatMul/ReadVariableOp2^time_distributed_6/dense_3/BiasAdd/ReadVariableOp1^time_distributed_6/dense_3/MatMul/ReadVariableOp2^time_distributed_8/dense_4/BiasAdd/ReadVariableOp1^time_distributed_8/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2^
-time_distributed/dense/BiasAdd/ReadVariableOp-time_distributed/dense/BiasAdd/ReadVariableOp2\
,time_distributed/dense/MatMul/ReadVariableOp,time_distributed/dense/MatMul/ReadVariableOp2f
1time_distributed_2/dense_1/BiasAdd/ReadVariableOp1time_distributed_2/dense_1/BiasAdd/ReadVariableOp2d
0time_distributed_2/dense_1/MatMul/ReadVariableOp0time_distributed_2/dense_1/MatMul/ReadVariableOp2f
1time_distributed_4/dense_2/BiasAdd/ReadVariableOp1time_distributed_4/dense_2/BiasAdd/ReadVariableOp2d
0time_distributed_4/dense_2/MatMul/ReadVariableOp0time_distributed_4/dense_2/MatMul/ReadVariableOp2f
1time_distributed_6/dense_3/BiasAdd/ReadVariableOp1time_distributed_6/dense_3/BiasAdd/ReadVariableOp2d
0time_distributed_6/dense_3/MatMul/ReadVariableOp0time_distributed_6/dense_3/MatMul/ReadVariableOp2f
1time_distributed_8/dense_4/BiasAdd/ReadVariableOp1time_distributed_8/dense_4/BiasAdd/ReadVariableOp2d
0time_distributed_8/dense_4/MatMul/ReadVariableOp0time_distributed_8/dense_4/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╨H
╖
?__inference_lstm_layer_call_and_return_conditional_losses_86709
inputs_0H
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
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
:	╨
*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
е
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Т
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86627*
condR
while_cond_86626*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘╖
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
М0
■
while_body_87044
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
┬
Є
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84135

inputs3
!dense_2_time_distributed_4_kernel:U*-
dense_2_time_distributed_4_bias:*
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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UЩ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_2_time_distributed_4_kerneldense_2_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_84126\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  *h
NoOpNoOp ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  U: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
г
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84055

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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         U├
dropout_1/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_84048\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_1/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Ug
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  U"
identityIdentity:output:0*3
_input_shapes"
 :                  U:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84827

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Ub
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   Б
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         U^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         U"
identityIdentity:output:0**
_input_shapes
:         U:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
╣
N
2__inference_time_distributed_5_layer_call_fn_88181

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
 :                  ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84199m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  *"
identityIdentity:output:0*3
_input_shapes"
 :                  *:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_8_layer_call_fn_88463

inputs+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84906s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╓
т
$__inference_lstm_layer_call_fn_86554
inputs_0(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨

identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_83486}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╘`
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
╟
╛
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84906

inputsI
7dense_4_matmul_readvariableop_time_distributed_8_kernel:D
6dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Х
dense_4/MatMul/ReadVariableOpReadVariableOp7dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0Г
dense_4/MatMulMatMulReshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_4/BiasAdd/ReadVariableOpReadVariableOp6dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_4/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ў
▓
D__inference_lstm_cell_layer_call_and_return_conditional_losses_88624

inputs
states_0
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	╨
K
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
9
*biasadd_readvariableop_lstm_lstm_cell_bias:	╨

identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpВ
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	╨
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
С
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ╘V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ╘\
mul_1MulSigmoid:y:0split:output:2*
T0*(
_output_shapes
:         ╘U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ╘W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ╘Y
mul_2MulSigmoid_2:y:0	add_1:z:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:         ╘[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         ╘:         ╘: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
╒╞
┌
 __inference__wrapped_model_83170

lstm_inputX
Esequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
e
Qsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
S
Dsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
a
Msequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
m
Ysequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
[
Lsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
c
Osequential_time_distributed_dense_matmul_readvariableop_time_distributed_kernel:
╘к]
Nsequential_time_distributed_dense_biasadd_readvariableop_time_distributed_bias:	кh
Usequential_time_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUb
Tsequential_time_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:Ug
Usequential_time_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:U*b
Tsequential_time_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:*g
Usequential_time_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel:*b
Tsequential_time_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias:g
Usequential_time_distributed_8_dense_4_matmul_readvariableop_time_distributed_8_kernel:b
Tsequential_time_distributed_8_dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИв0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpв/sequential/lstm/lstm_cell/MatMul/ReadVariableOpв1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpвsequential/lstm/whileв4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpв3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpв5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpвsequential/lstm_1/whileв8sequential/time_distributed/dense/BiasAdd/ReadVariableOpв7sequential/time_distributed/dense/MatMul/ReadVariableOpв<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOpв;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOpв<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOpв;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOpв<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOpв;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOpв<sequential/time_distributed_8/dense_4/BiasAdd/ReadVariableOpв;sequential/time_distributed_8/dense_4/MatMul/ReadVariableOpO
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
B :╘г
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
:         ╘c
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘з
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
:         ╘s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:         d
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
:	╨
*
dtype0└
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:07sequential/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
┼
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpQsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0║
"sequential/lstm/lstm_cell/MatMul_1MatMulsequential/lstm/zeros:output:09sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
│
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/MatMul:product:0,sequential/lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
▓
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpDsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0╝
!sequential/lstm/lstm_cell/BiasAddBiasAdd!sequential/lstm/lstm_cell/add:z:08sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
k
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :И
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:0*sequential/lstm/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitЙ
!sequential/lstm/lstm_cell/SigmoidSigmoid(sequential/lstm/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘Л
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid(sequential/lstm/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘в
sequential/lstm/lstm_cell/mulMul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*(
_output_shapes
:         ╘к
sequential/lstm/lstm_cell/mul_1Mul%sequential/lstm/lstm_cell/Sigmoid:y:0(sequential/lstm/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘г
sequential/lstm/lstm_cell/add_1AddV2!sequential/lstm/lstm_cell/mul:z:0#sequential/lstm/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘Л
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid(sequential/lstm/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘з
sequential/lstm/lstm_cell/mul_2Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0#sequential/lstm/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ш
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 sequential_lstm_while_body_82861*,
cond$R"
 sequential_lstm_while_cond_82860*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations С
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  є
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╟
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘k
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
B :╘й
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
:         ╘e
"sequential/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘н
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
:         ╘u
 sequential/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          л
sequential/lstm_1/transpose	Transposesequential/lstm/transpose_1:y:0)sequential/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:         ╘h
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
valueB"    T  Ц
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
:         ╘*
shrink_axis_mask├
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpMsequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0╩
$sequential/lstm_1/lstm_cell_1/MatMulMatMul*sequential/lstm_1/strided_slice_2:output:0;sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
╤
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpYsequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0─
&sequential/lstm_1/lstm_cell_1/MatMul_1MatMul sequential/lstm_1/zeros:output:0=sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
┐
!sequential/lstm_1/lstm_cell_1/addAddV2.sequential/lstm_1/lstm_cell_1/MatMul:product:00sequential/lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
╛
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpLsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0╚
%sequential/lstm_1/lstm_cell_1/BiasAddBiasAdd%sequential/lstm_1/lstm_cell_1/add:z:0<sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
o
-sequential/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ф
#sequential/lstm_1/lstm_cell_1/splitSplit6sequential/lstm_1/lstm_cell_1/split/split_dim:output:0.sequential/lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitС
%sequential/lstm_1/lstm_cell_1/SigmoidSigmoid,sequential/lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘У
'sequential/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘м
!sequential/lstm_1/lstm_cell_1/mulMul+sequential/lstm_1/lstm_cell_1/Sigmoid_1:y:0"sequential/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:         ╘╢
#sequential/lstm_1/lstm_cell_1/mul_1Mul)sequential/lstm_1/lstm_cell_1/Sigmoid:y:0,sequential/lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘п
#sequential/lstm_1/lstm_cell_1/add_1AddV2%sequential/lstm_1/lstm_cell_1/mul:z:0'sequential/lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘У
'sequential/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘│
#sequential/lstm_1/lstm_cell_1/mul_2Mul+sequential/lstm_1/lstm_cell_1/Sigmoid_2:y:0'sequential/lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘А
/sequential/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ю
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"sequential_lstm_1_while_body_82996*.
cond&R$
"sequential_lstm_1_while_cond_82995*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations У
Bsequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ∙
4sequential/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_1/while:output:3Ksequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maskw
"sequential/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ═
sequential/lstm_1/transpose_1	Transpose=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘m
sequential/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    z
)sequential/time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
#sequential/time_distributed/ReshapeReshape!sequential/lstm_1/transpose_1:y:02sequential/time_distributed/Reshape/shape:output:0*
T0*(
_output_shapes
:         ╘╔
7sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOpOsequential_time_distributed_dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0╘
(sequential/time_distributed/dense/MatMulMatMul,sequential/time_distributed/Reshape:output:0?sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         к─
8sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpNsequential_time_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0▌
)sequential/time_distributed/dense/BiasAddBiasAdd2sequential/time_distributed/dense/MatMul:product:0@sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кА
+sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   ╤
%sequential/time_distributed/Reshape_1Reshape2sequential/time_distributed/dense/BiasAdd:output:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         к|
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╝
%sequential/time_distributed/Reshape_2Reshape!sequential/lstm_1/transpose_1:y:04sequential/time_distributed/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         ╘|
+sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╔
%sequential/time_distributed_1/ReshapeReshape.sequential/time_distributed/Reshape_1:output:04sequential/time_distributed_1/Reshape/shape:output:0*
T0*(
_output_shapes
:         кЭ
.sequential/time_distributed_1/dropout/IdentityIdentity.sequential/time_distributed_1/Reshape:output:0*
T0*(
_output_shapes
:         кВ
-sequential/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   ┌
'sequential/time_distributed_1/Reshape_1Reshape7sequential/time_distributed_1/dropout/Identity:output:06sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*,
_output_shapes
:         к~
-sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ═
'sequential/time_distributed_1/Reshape_2Reshape.sequential/time_distributed/Reshape_1:output:06sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         к|
+sequential/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╦
%sequential/time_distributed_2/ReshapeReshape0sequential/time_distributed_1/Reshape_1:output:04sequential/time_distributed_2/Reshape/shape:output:0*
T0*(
_output_shapes
:         к╥
;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0▌
,sequential/time_distributed_2/dense_1/MatMulMatMul.sequential/time_distributed_2/Reshape:output:0Csequential/time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U═
<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0ш
-sequential/time_distributed_2/dense_1/BiasAddBiasAdd6sequential/time_distributed_2/dense_1/MatMul:product:0Dsequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UВ
-sequential/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ╪
'sequential/time_distributed_2/Reshape_1Reshape6sequential/time_distributed_2/dense_1/BiasAdd:output:06sequential/time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         U~
-sequential/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   ╧
'sequential/time_distributed_2/Reshape_2Reshape0sequential/time_distributed_1/Reshape_1:output:06sequential/time_distributed_2/Reshape_2/shape:output:0*
T0*(
_output_shapes
:         к|
+sequential/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╩
%sequential/time_distributed_3/ReshapeReshape0sequential/time_distributed_2/Reshape_1:output:04sequential/time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:         UЮ
0sequential/time_distributed_3/dropout_1/IdentityIdentity.sequential/time_distributed_3/Reshape:output:0*
T0*'
_output_shapes
:         UВ
-sequential/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   █
'sequential/time_distributed_3/Reshape_1Reshape9sequential/time_distributed_3/dropout_1/Identity:output:06sequential/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         U~
-sequential/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╬
'sequential/time_distributed_3/Reshape_2Reshape0sequential/time_distributed_2/Reshape_1:output:06sequential/time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         U|
+sequential/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╩
%sequential/time_distributed_4/ReshapeReshape0sequential/time_distributed_3/Reshape_1:output:04sequential/time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:         U╤
;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0▌
,sequential/time_distributed_4/dense_2/MatMulMatMul.sequential/time_distributed_4/Reshape:output:0Csequential/time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *═
<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0ш
-sequential/time_distributed_4/dense_2/BiasAddBiasAdd6sequential/time_distributed_4/dense_2/MatMul:product:0Dsequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *В
-sequential/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ╪
'sequential/time_distributed_4/Reshape_1Reshape6sequential/time_distributed_4/dense_2/BiasAdd:output:06sequential/time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *~
-sequential/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   ╬
'sequential/time_distributed_4/Reshape_2Reshape0sequential/time_distributed_3/Reshape_1:output:06sequential/time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         U|
+sequential/time_distributed_5/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╩
%sequential/time_distributed_5/ReshapeReshape0sequential/time_distributed_4/Reshape_1:output:04sequential/time_distributed_5/Reshape/shape:output:0*
T0*'
_output_shapes
:         *Ю
0sequential/time_distributed_5/dropout_2/IdentityIdentity.sequential/time_distributed_5/Reshape:output:0*
T0*'
_output_shapes
:         *В
-sequential/time_distributed_5/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   █
'sequential/time_distributed_5/Reshape_1Reshape9sequential/time_distributed_5/dropout_2/Identity:output:06sequential/time_distributed_5/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *~
-sequential/time_distributed_5/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╬
'sequential/time_distributed_5/Reshape_2Reshape0sequential/time_distributed_4/Reshape_1:output:06sequential/time_distributed_5/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         *|
+sequential/time_distributed_6/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╩
%sequential/time_distributed_6/ReshapeReshape0sequential/time_distributed_5/Reshape_1:output:04sequential/time_distributed_6/Reshape/shape:output:0*
T0*'
_output_shapes
:         *╤
;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_6_dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0▌
,sequential/time_distributed_6/dense_3/MatMulMatMul.sequential/time_distributed_6/Reshape:output:0Csequential/time_distributed_6/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ═
<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_6_dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0ш
-sequential/time_distributed_6/dense_3/BiasAddBiasAdd6sequential/time_distributed_6/dense_3/MatMul:product:0Dsequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
-sequential/time_distributed_6/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╪
'sequential/time_distributed_6/Reshape_1Reshape6sequential/time_distributed_6/dense_3/BiasAdd:output:06sequential/time_distributed_6/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ~
-sequential/time_distributed_6/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   ╬
'sequential/time_distributed_6/Reshape_2Reshape0sequential/time_distributed_5/Reshape_1:output:06sequential/time_distributed_6/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         *|
+sequential/time_distributed_7/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╩
%sequential/time_distributed_7/ReshapeReshape0sequential/time_distributed_6/Reshape_1:output:04sequential/time_distributed_7/Reshape/shape:output:0*
T0*'
_output_shapes
:         Ю
0sequential/time_distributed_7/dropout_3/IdentityIdentity.sequential/time_distributed_7/Reshape:output:0*
T0*'
_output_shapes
:         В
-sequential/time_distributed_7/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          █
'sequential/time_distributed_7/Reshape_1Reshape9sequential/time_distributed_7/dropout_3/Identity:output:06sequential/time_distributed_7/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ~
-sequential/time_distributed_7/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
'sequential/time_distributed_7/Reshape_2Reshape0sequential/time_distributed_6/Reshape_1:output:06sequential/time_distributed_7/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         |
+sequential/time_distributed_8/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╩
%sequential/time_distributed_8/ReshapeReshape0sequential/time_distributed_7/Reshape_1:output:04sequential/time_distributed_8/Reshape/shape:output:0*
T0*'
_output_shapes
:         ╤
;sequential/time_distributed_8/dense_4/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_8_dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0▌
,sequential/time_distributed_8/dense_4/MatMulMatMul.sequential/time_distributed_8/Reshape:output:0Csequential/time_distributed_8/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ═
<sequential/time_distributed_8/dense_4/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_8_dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0ш
-sequential/time_distributed_8/dense_4/BiasAddBiasAdd6sequential/time_distributed_8/dense_4/MatMul:product:0Dsequential/time_distributed_8/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
-sequential/time_distributed_8/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ╪
'sequential/time_distributed_8/Reshape_1Reshape6sequential/time_distributed_8/dense_4/BiasAdd:output:06sequential/time_distributed_8/Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ~
-sequential/time_distributed_8/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╬
'sequential/time_distributed_8/Reshape_2Reshape0sequential/time_distributed_7/Reshape_1:output:06sequential/time_distributed_8/Reshape_2/shape:output:0*
T0*'
_output_shapes
:         ~
)sequential/cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           А
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
#sequential/cropping1d/strided_sliceStridedSlice0sequential/time_distributed_8/Reshape_1:output:02sequential/cropping1d/strided_slice/stack:output:04sequential/cropping1d/strided_slice/stack_1:output:04sequential/cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:         
*

begin_mask*
end_mask
IdentityIdentity,sequential/cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:         
Я
NoOpNoOp1^sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0^sequential/lstm/lstm_cell/MatMul/ReadVariableOp2^sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp^sequential/lstm/while5^sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4^sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp6^sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^sequential/lstm_1/while9^sequential/time_distributed/dense/BiasAdd/ReadVariableOp8^sequential/time_distributed/dense/MatMul/ReadVariableOp=^sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp<^sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp=^sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp<^sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp=^sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp<^sequential/time_distributed_6/dense_3/MatMul/ReadVariableOp=^sequential/time_distributed_8/dense_4/BiasAdd/ReadVariableOp<^sequential/time_distributed_8/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 2d
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp2b
/sequential/lstm/lstm_cell/MatMul/ReadVariableOp/sequential/lstm/lstm_cell/MatMul/ReadVariableOp2f
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while2l
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2j
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp2n
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp22
sequential/lstm_1/whilesequential/lstm_1/while2t
8sequential/time_distributed/dense/BiasAdd/ReadVariableOp8sequential/time_distributed/dense/BiasAdd/ReadVariableOp2r
7sequential/time_distributed/dense/MatMul/ReadVariableOp7sequential/time_distributed/dense/MatMul/ReadVariableOp2|
<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp2|
<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp2|
<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp<sequential/time_distributed_6/dense_3/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOp;sequential/time_distributed_6/dense_3/MatMul/ReadVariableOp2|
<sequential/time_distributed_8/dense_4/BiasAdd/ReadVariableOp<sequential/time_distributed_8/dense_4/BiasAdd/ReadVariableOp2z
;sequential/time_distributed_8/dense_4/MatMul/ReadVariableOp;sequential/time_distributed_8/dense_4/MatMul/ReadVariableOp:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_84764

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
н
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ъ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘v
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_84682*
condR
while_cond_84681*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         ╘: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_86987

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
:	╨
*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
е
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Т
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86905*
condR
while_cond_86904*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
М0
■
while_body_86766
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
╓
т
$__inference_lstm_layer_call_fn_86546
inputs_0(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨

identityИвStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_83312}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╘`
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
ї
╝
0__inference_time_distributed_layer_call_fn_87742

inputs+
time_distributed_kernel:
╘к$
time_distributed_bias:	к
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_85185t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╘: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
Щ
╝
0__inference_time_distributed_layer_call_fn_87721

inputs+
time_distributed_kernel:
╘к$
time_distributed_bias:	к
identityИвStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_83847}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╘: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
Ш
Ў
while_cond_86626
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_86626___redundant_placeholder0-
)while_cond_86626___redundant_placeholder1-
)while_cond_86626___redundant_placeholder2-
)while_cond_86626___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
р
l
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87871

inputs
identityИ;
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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?
dropout/dropout/MulMulReshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         кU
dropout/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:Э
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         к*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>┐
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         кА
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         кВ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         к\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Й
	Reshape_1Reshapedropout/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кh
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  к"
identityIdentity:output:0*4
_input_shapes#
!:                  к:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
▌	
У
B__inference_dense_3_layer_call_and_return_conditional_losses_84270

inputsA
/matmul_readvariableop_time_distributed_6_kernel:*<
.biasadd_readvariableop_time_distributed_6_bias:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         *: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
═1
к
while_body_87354
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
Ш
Ў
while_cond_86765
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_86765___redundant_placeholder0-
)while_cond_86765___redundant_placeholder1-
)while_cond_86765___redundant_placeholder2-
)while_cond_86765___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
▄
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_88558

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
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
▐	
Р
@__inference_dense_layer_call_and_return_conditional_losses_83838

inputsA
-matmul_readvariableop_time_distributed_kernel:
╘к;
,biasadd_readvariableop_time_distributed_bias:	к
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp-matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кА
BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         к`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         кw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         ╘: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
Х
N
2__inference_time_distributed_3_layer_call_fn_88009

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
:         U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84827d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         U"
identityIdentity:output:0**
_input_shapes
:         U:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
Ш
Ў
while_cond_83245
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_83245___redundant_placeholder0-
)while_cond_83245___redundant_placeholder1-
)while_cond_83245___redundant_placeholder2-
)while_cond_83245___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
ы
k
2__inference_time_distributed_1_layer_call_fn_87832

inputs
identityИвStatefulPartitionedCall═
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85159t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         к22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
д
l
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87896

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?
dropout/dropout/MulMulReshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         кU
dropout/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:Э
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         к*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>┐
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         кА
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         кВ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   А
	Reshape_1Reshapedropout/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         к_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         к"
identityIdentity:output:0*+
_input_shapes
:         к:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
╞
є
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_83991

inputs4
!dense_1_time_distributed_2_kernel:	кU-
dense_1_time_distributed_2_bias:U
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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЩ
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_1_time_distributed_2_kerneldense_1_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_83982\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ч
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Un
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  Uh
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  к: : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
в
│
K__inference_time_distributed_layer_call_and_return_conditional_losses_87812

inputsG
3dense_matmul_readvariableop_time_distributed_kernel:
╘кA
2dense_biasadd_readvariableop_time_distributed_bias:	к
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘С
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0А
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кМ
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   }
	Reshape_1Reshapedense/BiasAdd:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         кf
IdentityIdentityReshape_1:output:0^NoOp*
T0*,
_output_shapes
:         кГ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╘: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
а
б
)__inference_lstm_cell_layer_call_fn_88594

inputs
states_0
states_1(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨

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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83367p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         ╘:         ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
М0
■
while_body_84539
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
╨ 
╫
while_body_83742
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0:
╘╨
E
1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
4
%lstm_cell_1_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
╘╨
C
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	╨
Ив#lstm_cell_1/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0╟
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_1_lstm_1_lstm_cell_1_kernel_01lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0%lstm_cell_1_lstm_1_lstm_cell_1_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83689├
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
:         ╘~

Identity_5Identity,lstm_cell_1/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘l
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
:: : : : :         ╘:         ╘: : : : : 2J
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
Г
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88330

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:*D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         \
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  *: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88426

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         b
dropout_3/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          Б
	Reshape_1Reshapedropout_3/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г
╛
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88512

inputsI
7dense_4_matmul_readvariableop_time_distributed_8_kernel:D
6dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOp;
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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Х
dense_4/MatMul/ReadVariableOpReadVariableOp7dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0Г
dense_4/MatMulMatMulReshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_4/BiasAdd/ReadVariableOpReadVariableOp6dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
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
	Reshape_1Reshapedense_4/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  З
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
Ж
"sequential_lstm_1_while_cond_82995(
$sequential_lstm_1_while_loop_counter.
*sequential_lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3*
&less_sequential_lstm_1_strided_slice_1?
;sequential_lstm_1_while_cond_82995___redundant_placeholder0?
;sequential_lstm_1_while_cond_82995___redundant_placeholder1?
;sequential_lstm_1_while_cond_82995___redundant_placeholder2?
;sequential_lstm_1_while_cond_82995___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
Ш
Ў
while_cond_84681
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_84681___redundant_placeholder0-
)while_cond_84681___redundant_placeholder1-
)while_cond_84681___redundant_placeholder2-
)while_cond_84681___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
╫
╡
'__inference_dense_1_layer_call_fn_88793

inputs,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_83982o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         к: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_87126

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
:	╨
*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
е
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Т
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_87044*
condR
while_cond_87043*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╨ 
╫
while_body_83568
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0;
'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0:
╘╨
E
1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
4
%lstm_cell_1_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
╘╨
C
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	╨
Ив#lstm_cell_1/StatefulPartitionedCallВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0╟
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_1_lstm_1_lstm_cell_1_kernel_01lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0%lstm_cell_1_lstm_1_lstm_cell_1_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83557├
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
:         ╘~

Identity_5Identity,lstm_cell_1/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘l
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
:: : : : :         ╘:         ╘: : : : : 2J
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
Х
N
2__inference_time_distributed_7_layer_call_fn_88373

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
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84889d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88244

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *b
dropout_2/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   Б
	Reshape_1Reshapedropout_2/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         *"
identityIdentity:output:0**
_input_shapes
:         *:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
▄
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_84473

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
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
ТH
╡
?__inference_lstm_layer_call_and_return_conditional_losses_85494

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
:	╨
*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
е
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Т
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_85412*
condR
while_cond_85411*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╖
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_85131

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:U
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЦ
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Ue
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         UЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         к: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
╜
N
2__inference_time_distributed_1_layer_call_fn_87817

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
!:                  к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_83911n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:                  к"
identityIdentity:output:0*4
_input_shapes#
!:                  к:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_8_layer_call_fn_88470

inputs+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84969s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л
k
2__inference_time_distributed_3_layer_call_fn_88004

inputs
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_84099|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :                  U22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
Ш
Ў
while_cond_87214
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_87214___redundant_placeholder0-
)while_cond_87214___redundant_placeholder1-
)while_cond_87214___redundant_placeholder2-
)while_cond_87214___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
п
`
B__inference_dropout_layer_call_and_return_conditional_losses_83904

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         к\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         к"!

identity_1Identity_1:output:0*'
_input_shapes
:         к:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_6_layer_call_fn_88281

inputs+
time_distributed_6_kernel:*%
time_distributed_6_bias:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84875s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         *: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
М0
■
while_body_86905
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
д
l
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_85159

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?
dropout/dropout/MulMulReshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:         кU
dropout/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:Э
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:         к*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>┐
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         кА
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         кВ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   А
	Reshape_1Reshapedropout/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         к_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         к"
identityIdentity:output:0*+
_input_shapes
:         к:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
╗
l
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88260

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_2/dropout/MulMulReshape:output:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:         *W
dropout_2/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:         **
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         *Г
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         *З
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   Б
	Reshape_1Reshapedropout_2/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         *"
identityIdentity:output:0**
_input_shapes
:         *:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
Г
Ю
*__inference_sequential_layer_call_fn_85613

lstm_input(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨
-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨
+
time_distributed_kernel:
╘к$
time_distributed_bias:	к,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*+
time_distributed_6_kernel:*%
time_distributed_6_bias:+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_biastime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_85573s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╨H
╖
?__inference_lstm_layer_call_and_return_conditional_losses_86848
inputs_0H
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
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
:	╨
*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
е
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Т
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_86766*
condR
while_cond_86765*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘╖
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
ў
Ъ
*__inference_sequential_layer_call_fn_85778

inputs(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨
-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨
+
time_distributed_kernel:
╘к$
time_distributed_bias:	к,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*+
time_distributed_6_kernel:*%
time_distributed_6_bias:+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_biastime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_85573s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88344

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:*D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         *: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
м9
┬
A__inference_lstm_1_layer_call_and_return_conditional_losses_83634

inputs9
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:
╘╨
C
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_mask│
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_83557n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_83568*
condR
while_cond_83567*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ╘t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  ╘: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
Ю
Р
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84387

inputs
identityИв!dropout_3/StatefulPartitionedCall;
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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         ╙
!dropout_3/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_84366\
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Щ
	Reshape_1Reshape*dropout_3/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  j
NoOpNoOp"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :                  2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┼
b
)__inference_dropout_2_layer_call_fn_88857

inputs
identityИвStatefulPartitionedCall┐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_84222o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*&
_input_shapes
:         *22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
З5
є

__inference__traced_save_89030
file_prefix0
,savev2_training_sgd_iter_read_readvariableop	1
-savev2_training_sgd_decay_read_readvariableop9
5savev2_training_sgd_learning_rate_read_readvariableop4
0savev2_training_sgd_momentum_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop6
2savev2_time_distributed_kernel_read_readvariableop4
0savev2_time_distributed_bias_read_readvariableop8
4savev2_time_distributed_2_kernel_read_readvariableop6
2savev2_time_distributed_2_bias_read_readvariableop8
4savev2_time_distributed_4_kernel_read_readvariableop6
2savev2_time_distributed_4_bias_read_readvariableop8
4savev2_time_distributed_6_kernel_read_readvariableop6
2savev2_time_distributed_6_bias_read_readvariableop8
4savev2_time_distributed_8_kernel_read_readvariableop6
2savev2_time_distributed_8_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
: в	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╦
value┴B╛B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ё

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_training_sgd_iter_read_readvariableop-savev2_training_sgd_decay_read_readvariableop5savev2_training_sgd_learning_rate_read_readvariableop0savev2_training_sgd_momentum_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_2_kernel_read_readvariableop2savev2_time_distributed_2_bias_read_readvariableop4savev2_time_distributed_4_kernel_read_readvariableop2savev2_time_distributed_4_bias_read_readvariableop4savev2_time_distributed_6_kernel_read_readvariableop2savev2_time_distributed_6_bias_read_readvariableop4savev2_time_distributed_8_kernel_read_readvariableop2savev2_time_distributed_8_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	Р
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

identity_1Identity_1:output:0*║
_input_shapesи
е: : : : : :	╨
:
╘╨
:╨
:
╘╨
:
╘╨
:╨
:
╘к:к:	кU:U:U*:*:*:::: : : : : 2(
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
: :

_output_shapes
: :%!

_output_shapes
:	╨
:&"
 
_output_shapes
:
╘╨
:!

_output_shapes	
:╨
:&"
 
_output_shapes
:
╘╨
:&	"
 
_output_shapes
:
╘╨
:!


_output_shapes	
:╨
:&"
 
_output_shapes
:
╘к:!

_output_shapes	
:к:%!

_output_shapes
:	кU: 

_output_shapes
:U:$ 

_output_shapes

:U*: 

_output_shapes
:*:$ 

_output_shapes

:*: 

_output_shapes
::$ 

_output_shapes

:: 
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
: :

_output_shapes
: 
И
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87945

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:U
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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЦ
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         U\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:З
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Un
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :                  UЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  к: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
ч
k
2__inference_time_distributed_7_layer_call_fn_88378

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84997s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
п2
█
lstm_1_while_body_86336
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_1_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_1_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  Ц
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
ї
╝
0__inference_time_distributed_layer_call_fn_87735

inputs+
time_distributed_kernel:
╘к$
time_distributed_bias:	к
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_time_distributed_layer_call_and_return_conditional_losses_84782t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         ╘: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
Ў
l
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88053

inputs
identityИ;
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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         U\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_1/dropout/MulMulReshape:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:         UW
dropout_1/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:         U*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         UГ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         UЗ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:         U\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_1/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Ug
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  U"
identityIdentity:output:0*3
_input_shapes"
 :                  U:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
н
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_88906

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї
ё
&__inference_lstm_1_layer_call_fn_87134
inputs_0-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨

identityИвStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_83634}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*:
_input_shapes)
':                  ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  ╘
"
_user_specified_name
inputs/0
║
i
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88212

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
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *b
dropout_2/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         *\
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
value	B :*Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_2/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  *g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  *"
identityIdentity:output:0*3
_input_shapes"
 :                  *:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
╠
┐
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87980

inputsJ
7dense_1_matmul_readvariableop_time_distributed_2_kernel:	кUD
6dense_1_biasadd_readvariableop_time_distributed_2_bias:U
identityИвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кЦ
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes
:	кU*
dtype0Г
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         UС
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:U*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   ~
	Reshape_1Reshapedense_1/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         Ue
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         UЗ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         к: : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
с
п
while_body_83420
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!lstm_cell_lstm_lstm_cell_kernel_0:	╨
?
+lstm_cell_lstm_lstm_cell_recurrent_kernel_0:
╘╨
.
lstm_cell_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
lstm_cell_lstm_lstm_cell_kernel:	╨
=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
╘╨
,
lstm_cell_lstm_lstm_cell_bias:	╨
Ив!lstm_cell/StatefulPartitionedCallВ
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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83367┴
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
:         ╘|

Identity_5Identity*lstm_cell/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘j
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
:: : : : :         ╘:         ╘: : : : : 2F
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
Ш
Ў
while_cond_87492
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_87492___redundant_placeholder0-
)while_cond_87492___redundant_placeholder1-
)while_cond_87492___redundant_placeholder2-
)while_cond_87492___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
Б
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_84796

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         кa
dropout/IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         кd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       к   А
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*,
_output_shapes
:         к_
IdentityIdentityReshape_1:output:0*
T0*,
_output_shapes
:         к"
identityIdentity:output:0*+
_input_shapes
:         к:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
Ф
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_84919

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
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
:         
*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         
"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ф
a
E__inference_cropping1d_layer_call_and_return_conditional_losses_88566

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
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
:         
*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:         
"
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
·
┐
2__inference_time_distributed_4_layer_call_fn_88106

inputs+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_85077s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         U: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
а
б
)__inference_lstm_cell_layer_call_fn_88580

inputs
states_0
states_1(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨

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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83235p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ╘r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*T
_input_shapesC
A:         :         ╘:         ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/0:RN
(
_output_shapes
:         ╘
"
_user_specified_name
states/1
╟
╛
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88358

inputsI
7dense_3_matmul_readvariableop_time_distributed_6_kernel:*D
6dense_3_biasadd_readvariableop_time_distributed_6_bias:
identityИвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    *   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         *Х
dense_3/MatMul/ReadVariableOpReadVariableOp7dense_3_matmul_readvariableop_time_distributed_6_kernel*
_output_shapes

:**
dtype0Г
dense_3/MatMulMatMulReshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_3/BiasAdd/ReadVariableOpReadVariableOp6dense_3_biasadd_readvariableop_time_distributed_6_bias*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_3/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         *: : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:S O
+
_output_shapes
:         *
 
_user_specified_nameinputs
║
i
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88394

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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         b
dropout_3/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         \
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_3/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
▌	
У
B__inference_dense_2_layer_call_and_return_conditional_losses_84126

inputsA
/matmul_readvariableop_time_distributed_4_kernel:U*<
.biasadd_readvariableop_time_distributed_4_bias:*
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         *w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         U: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
є
E
)__inference_dropout_3_layer_call_fn_88896

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
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_84336`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╧
▒
%__inference_dense_layer_call_fn_88749

inputs+
time_distributed_kernel:
╘к$
time_distributed_bias:	к
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_83838p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         к`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         ╘: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
н
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_84048

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         U[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         U"!

identity_1Identity_1:output:0*&
_input_shapes
:         U:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
Л
k
2__inference_time_distributed_5_layer_call_fn_88186

inputs
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  ** 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_84243|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*3
_input_shapes"
 :                  *22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_84969

inputsI
7dense_4_matmul_readvariableop_time_distributed_8_kernel:D
6dense_4_biasadd_readvariableop_time_distributed_8_bias:
identityИвdense_4/BiasAdd/ReadVariableOpвdense_4/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Х
dense_4/MatMul/ReadVariableOpReadVariableOp7dense_4_matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0Г
dense_4/MatMulMatMulReshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         С
dense_4/BiasAdd/ReadVariableOpReadVariableOp6dense_4_biasadd_readvariableop_time_distributed_8_bias*
_output_shapes
:*
dtype0О
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          ~
	Reshape_1Reshapedense_4/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         З
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
 
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88062

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Ub
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         Ud
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       U   Б
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         U^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         U"
identityIdentity:output:0**
_input_shapes
:         U:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
Ю
┐
2__inference_time_distributed_6_layer_call_fn_88274

inputs+
time_distributed_6_kernel:*%
time_distributed_6_bias:
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_84312|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  *: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  *
 
_user_specified_nameinputs
╥0
б
lstm_while_body_85835
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_strided_slice_1_0V
Rtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_strided_slice_1T
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
▌	
У
B__inference_dense_4_layer_call_and_return_conditional_losses_88935

inputsA
/matmul_readvariableop_time_distributed_8_kernel:<
.biasadd_readvariableop_time_distributed_8_bias:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_8_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Б
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_8_bias*
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
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
═1
к
while_body_84682
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  П
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
с
п
while_body_83246
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!lstm_cell_lstm_lstm_cell_kernel_0:	╨
?
+lstm_cell_lstm_lstm_cell_recurrent_kernel_0:
╘╨
.
lstm_cell_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
lstm_cell_lstm_lstm_cell_kernel:	╨
=
)lstm_cell_lstm_lstm_cell_recurrent_kernel:
╘╨
,
lstm_cell_lstm_lstm_cell_bias:	╨
Ив!lstm_cell/StatefulPartitionedCallВ
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
<:         ╘:         ╘:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_lstm_cell_layer_call_and_return_conditional_losses_83235┴
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
:         ╘|

Identity_5Identity*lstm_cell/StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ╘j
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
:: : : : :         ╘:         ╘: : : : : 2F
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
¤
└
2__inference_time_distributed_2_layer_call_fn_87917

inputs,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         U*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_84813s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*/
_input_shapes
:         к: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         к
 
_user_specified_nameinputs
╟
╛
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_85077

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:U*D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:*
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         UХ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:U**
dtype0Г
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *С
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:**
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         *d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"       *   ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         *e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:         *З
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:         U: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:         U
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_85339

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
н
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ъ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘v
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_85257*
condR
while_cond_85256*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         ╘: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
Ў
l
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88417

inputs
identityИ;
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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_3/dropout/MulMulReshape:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:         W
dropout_3/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Г
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         З
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:         \
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_3/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
м
р
$__inference_lstm_layer_call_fn_86562

inputs(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨

identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_84621t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
д
i
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_83911

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
valueB"    к   e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         к└
dropout/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         к* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_83904\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Р
	Reshape_1Reshape dropout/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кh
IdentityIdentityReshape_1:output:0*
T0*5
_output_shapes#
!:                  к"
identityIdentity:output:0*4
_input_shapes#
!:                  к:] Y
5
_output_shapes#
!:                  к
 
_user_specified_nameinputs
М0
■
while_body_86627
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
▐	
Р
@__inference_dense_layer_call_and_return_conditional_losses_88759

inputsA
-matmul_readvariableop_time_distributed_kernel:
╘к;
,biasadd_readvariableop_time_distributed_bias:	к
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpЕ
MatMul/ReadVariableOpReadVariableOp-matmul_readvariableop_time_distributed_kernel* 
_output_shapes
:
╘к*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         кА
BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_time_distributed_bias*
_output_shapes	
:к*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         к`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         кw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*+
_input_shapes
:         ╘: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
╣
N
2__inference_time_distributed_7_layer_call_fn_88363

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
 :                  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84343m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
i
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88030

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
valueB"    U   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         Ub
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         U\
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
value	B :UХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:К
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  Ug
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  U"
identityIdentity:output:0*3
_input_shapes"
 :                  U:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
Ш
Ў
while_cond_83741
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_83741___redundant_placeholder0-
)while_cond_83741___redundant_placeholder1-
)while_cond_83741___redundant_placeholder2-
)while_cond_83741___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
╗
l
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84997

inputs
identityИ^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         \
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?В
dropout_3/dropout/MulMulReshape:output:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:         W
dropout_3/dropout/ShapeShapeReshape:output:0*
T0*
_output_shapes
:а
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>─
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         Г
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         З
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          Б
	Reshape_1Reshapedropout_3/dropout/Mul_1:z:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╘
┤
'__inference_dense_3_layer_call_fn_88881

inputs+
time_distributed_6_kernel:*%
time_distributed_6_bias:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_6_kerneltime_distributed_6_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_84270o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:         *: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         *
 
_user_specified_nameinputs
н
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_88818

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         U[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         U"!

identity_1Identity_1:output:0*&
_input_shapes
:         U:O K
'
_output_shapes
:         U
 
_user_specified_nameinputs
╦
я
&__inference_lstm_1_layer_call_fn_87158

inputs-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨

identityИвStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ╘*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_1_layer_call_and_return_conditional_losses_85339t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ╘`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         ╘: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
п2
█
lstm_1_while_body_85970
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_1_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0Q
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:
╘╨
]
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:
╘╨
K
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_1_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨
Ив"lstm_cell_1/BiasAdd/ReadVariableOpв!lstm_cell_1/MatMul/ReadVariableOpв#lstm_cell_1/MatMul_1/ReadVariableOpВ
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  Ц
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ╘*
element_dtype0б
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0* 
_output_shapes
:
╘╨
*
dtype0ж
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
п
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Н
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ь
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘s
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘м
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
:         ╘g

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘╡
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
:: : : : :         ╘:         ╘: : : : : 2H
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
м
щ
K__inference_time_distributed_layer_call_and_return_conditional_losses_83847

inputs1
dense_time_distributed_kernel:
╘к*
dense_time_distributed_bias:	к
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
valueB"    T  e
ReshapeReshapeinputsReshape/shape:output:0*
T0*(
_output_shapes
:         ╘О
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_time_distributed_kerneldense_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         к*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_83838\
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
B :кХ
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:Ц
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*5
_output_shapes#
!:                  кo
IdentityIdentityReshape_1:output:0^NoOp*
T0*5
_output_shapes#
!:                  кf
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*8
_input_shapes'
%:                  ╘: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:] Y
5
_output_shapes#
!:                  ╘
 
_user_specified_nameinputs
Ш
Ў
while_cond_87631
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_87631___redundant_placeholder0-
)while_cond_87631___redundant_placeholder1-
)while_cond_87631___redundant_placeholder2-
)while_cond_87631___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
 
i
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84889

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         b
dropout_3/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"          Б
	Reshape_1Reshapedropout_3/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:         ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:         "
identityIdentity:output:0**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
г
i
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_84343

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
valueB"       d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:         ├
dropout_3/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_84336\
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
value	B :Х
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:С
	Reshape_1Reshape"dropout_3/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :                  g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :                  "
identityIdentity:output:0*3
_input_shapes"
 :                  :\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
нI
╨
A__inference_lstm_1_layer_call_and_return_conditional_losses_87714

inputsO
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:
╘╨
[
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
I
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	╨

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
B :╘s
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
:         ╘S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :╘w
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
:         ╘c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:         ╘D
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
valueB"    T  р
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
:         ╘*
shrink_axis_maskЯ
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel* 
_output_shapes
:
╘╨
*
dtype0Ф
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
н
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel* 
_output_shapes
:
╘╨
*
dtype0О
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Й
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ъ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:╨
*
dtype0Т
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :▐
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:         ╘v
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ╘А
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:         ╘y
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:         ╘o
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:         ╘}
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:         ╘n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ╕
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
:: : : : :         ╘:         ╘: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_87632*
condR
while_cond_87631*M
output_shapes<
:: : : : :         ╘:         ╘: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    T  ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:         ╘*
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
:         ╘*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ╘[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ╘╜
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*1
_input_shapes 
:         ╘: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ╘
 
_user_specified_nameinputs
Г
Ю
*__inference_sequential_layer_call_fn_84941

lstm_input(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨
-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨
+
time_distributed_kernel:
╘к$
time_distributed_bias:	к,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*+
time_distributed_6_kernel:*%
time_distributed_6_bias:+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_biastime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_84922s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╫
о
lstm_1_while_cond_86335
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_1_strided_slice_14
0lstm_1_while_cond_86335___redundant_placeholder04
0lstm_1_while_cond_86335___redundant_placeholder14
0lstm_1_while_cond_86335___redundant_placeholder24
0lstm_1_while_cond_86335___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
Ш
Ў
while_cond_83419
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1-
)while_cond_83419___redundant_placeholder0-
)while_cond_83419___redundant_placeholder1-
)while_cond_83419___redundant_placeholder2-
)while_cond_83419___redundant_placeholder3
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
B: : : : :         ╘:         ╘: ::::: 
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
:
╫
Ч
#__inference_signature_wrapper_85736

lstm_input(
lstm_lstm_cell_kernel:	╨
3
lstm_lstm_cell_recurrent_kernel:
╘╨
"
lstm_lstm_cell_bias:	╨
-
lstm_1_lstm_cell_1_kernel:
╘╨
7
#lstm_1_lstm_cell_1_recurrent_kernel:
╘╨
&
lstm_1_lstm_cell_1_bias:	╨
+
time_distributed_kernel:
╘к$
time_distributed_bias:	к,
time_distributed_2_kernel:	кU%
time_distributed_2_bias:U+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*+
time_distributed_6_kernel:*%
time_distributed_6_bias:+
time_distributed_8_kernel:%
time_distributed_8_bias:
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_biastime_distributed_6_kerneltime_distributed_6_biastime_distributed_8_kerneltime_distributed_8_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_83170s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*J
_input_shapes9
7:         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╬	
a
B__inference_dropout_layer_call_and_return_conditional_losses_83934

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         кC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         к*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         кp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         кj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         кZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         к"
identityIdentity:output:0*'
_input_shapes
:         к:P L
(
_output_shapes
:         к
 
_user_specified_nameinputs
М0
■
while_body_85412
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	╨
W
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:
╘╨
E
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	╨

identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	╨
U
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:
╘╨
C
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	╨
Ив lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpВ
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
:	╨
*
dtype0в
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
з
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0* 
_output_shapes
:
╘╨
*
dtype0Й
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
Г
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         ╨
Ф
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:╨
*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╨
[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╪
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ╘:         ╘:         ╘:         ╘*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:         ╘o
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*(
_output_shapes
:         ╘z
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ╘s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:         ╘k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:         ╘w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ╘к
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
:         ╘e

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*(
_output_shapes
:         ╘п
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
:: : : : :         ╘:         ╘: : : : : 2D
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
:         ╘:.*
(
_output_shapes
:         ╘:

_output_shapes
: :

_output_shapes
: 
Ю
┐
2__inference_time_distributed_4_layer_call_fn_88092

inputs+
time_distributed_4_kernel:U*%
time_distributed_4_bias:*
identityИвStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  **$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_84168|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  *`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:                  U: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  U
 
_user_specified_nameinputs
н
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_88862

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         *[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         *"!

identity_1Identity_1:output:0*&
_input_shapes
:         *:O K
'
_output_shapes
:         *
 
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
serving_default_lstm_input:0         B

cropping1d4
StatefulPartitionedCall:0         
tensorflow/serving/predict:╚є
╜
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
▓
	layer
 	variables
!trainable_variables
"regularization_losses
#	keras_api
Я__call__
+а&call_and_return_all_conditional_losses"
_tf_keras_layer
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
▓
	Glayer
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
п__call__
+░&call_and_return_all_conditional_losses"
_tf_keras_layer
з
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"
_tf_keras_layer
I
Piter
	Qdecay
Rlearning_rate
Smomentum"
	optimizer
Ц
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15"
trackable_list_wrapper
Ц
T0
U1
V2
W3
X4
Y5
Z6
[7
\8
]9
^10
_11
`12
a13
b14
c15"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
Ш__call__
Ъ_default_save_signature
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
-
│serving_default"
signature_map
у
i
state_size

Tkernel
Urecurrent_kernel
Vbias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
┤__call__
+╡&call_and_return_all_conditional_losses"
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
╝

nstates
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
у
t
state_size

Wkernel
Xrecurrent_kernel
Ybias
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

ystates
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
regularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
└

Zkernel
[bias
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
╕__call__
+╣&call_and_return_all_conditional_losses"
_tf_keras_layer
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
 	variables
!trainable_variables
"regularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
л
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
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
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
%	variables
&trainable_variables
'regularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
┴

\kernel
]bias
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
╝__call__
+╜&call_and_return_all_conditional_losses"
_tf_keras_layer
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
*	variables
+trainable_variables
,regularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
л
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
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
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
/	variables
0trainable_variables
1regularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
┴

^kernel
_bias
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
└__call__
+┴&call_and_return_all_conditional_losses"
_tf_keras_layer
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
4	variables
5trainable_variables
6regularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
л
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
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
░non_trainable_variables
▒layers
▓metrics
 │layer_regularization_losses
┤layer_metrics
9	variables
:trainable_variables
;regularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
┴

`kernel
abias
╡	variables
╢trainable_variables
╖regularization_losses
╕	keras_api
─__call__
+┼&call_and_return_all_conditional_losses"
_tf_keras_layer
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
>	variables
?trainable_variables
@regularization_losses
л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
л
╛	variables
┐trainable_variables
└regularization_losses
┴	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
┴

bkernel
cbias
╟	variables
╚trainable_variables
╔regularization_losses
╩	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses"
_tf_keras_layer
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
п__call__
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
:	 (2training/SGD/iter
: (2training/SGD/decay
$:" (2training/SGD/learning_rate
: (2training/SGD/momentum
(:&	╨
2lstm/lstm_cell/kernel
3:1
╘╨
2lstm/lstm_cell/recurrent_kernel
": ╨
2lstm/lstm_cell/bias
-:+
╘╨
2lstm_1/lstm_cell_1/kernel
7:5
╘╨
2#lstm_1/lstm_cell_1/recurrent_kernel
&:$╨
2lstm_1/lstm_cell_1/bias
+:)
╘к2time_distributed/kernel
$:"к2time_distributed/bias
,:*	кU2time_distributed_2/kernel
%:#U2time_distributed_2/bias
+:)U*2time_distributed_4/kernel
%:#*2time_distributed_4/bias
+:)*2time_distributed_6/kernel
%:#2time_distributed_6/bias
+:)2time_distributed_8/kernel
%:#2time_distributed_8/bias
 "
trackable_list_wrapper
v
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
11"
trackable_list_wrapper
0
╒0
╓1"
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
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
j	variables
ktrainable_variables
lregularization_losses
┤__call__
+╡&call_and_return_all_conditional_losses
'╡"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
W0
X1
Y2"
trackable_list_wrapper
5
W0
X1
Y2"
trackable_list_wrapper
 "
trackable_list_wrapper
╡
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
╖
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
╕__call__
+╣&call_and_return_all_conditional_losses
'╣"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
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
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
╝__call__
+╜&call_and_return_all_conditional_losses
'╜"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
╛__call__
+┐&call_and_return_all_conditional_losses
'┐"call_and_return_conditional_losses"
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
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
їnon_trainable_variables
Ўlayers
ўmetrics
 °layer_regularization_losses
∙layer_metrics
г	variables
дtrainable_variables
еregularization_losses
└__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
м	variables
нtrainable_variables
оregularization_losses
┬__call__
+├&call_and_return_all_conditional_losses
'├"call_and_return_conditional_losses"
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
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
╡	variables
╢trainable_variables
╖regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
╛	variables
┐trainable_variables
└regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses"
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
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
╟	variables
╚trainable_variables
╔regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
G0"
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

Оtotal

Пcount
Р
_fn_kwargs
С	variables
Т	keras_api"
_tf_keras_metric
c

Уtotal

Фcount
Х
_fn_kwargs
Ц	variables
Ч	keras_api"
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
О0
П1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
:  (2total_1
:  (2count_1
 "
trackable_dict_wrapper
0
У0
Ф1"
trackable_list_wrapper
.
Ц	variables"
_generic_user_object
Ў2є
*__inference_sequential_layer_call_fn_84941
*__inference_sequential_layer_call_fn_85757
*__inference_sequential_layer_call_fn_85778
*__inference_sequential_layer_call_fn_85613└
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
E__inference_sequential_layer_call_and_return_conditional_losses_86144
E__inference_sequential_layer_call_and_return_conditional_losses_86538
E__inference_sequential_layer_call_and_return_conditional_losses_85663
E__inference_sequential_layer_call_and_return_conditional_losses_85713└
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
 __inference__wrapped_model_83170
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
$__inference_lstm_layer_call_fn_86546
$__inference_lstm_layer_call_fn_86554
$__inference_lstm_layer_call_fn_86562
$__inference_lstm_layer_call_fn_86570╒
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
?__inference_lstm_layer_call_and_return_conditional_losses_86709
?__inference_lstm_layer_call_and_return_conditional_losses_86848
?__inference_lstm_layer_call_and_return_conditional_losses_86987
?__inference_lstm_layer_call_and_return_conditional_losses_87126╒
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
&__inference_lstm_1_layer_call_fn_87134
&__inference_lstm_1_layer_call_fn_87142
&__inference_lstm_1_layer_call_fn_87150
&__inference_lstm_1_layer_call_fn_87158╒
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
A__inference_lstm_1_layer_call_and_return_conditional_losses_87297
A__inference_lstm_1_layer_call_and_return_conditional_losses_87436
A__inference_lstm_1_layer_call_and_return_conditional_losses_87575
A__inference_lstm_1_layer_call_and_return_conditional_losses_87714╒
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
0__inference_time_distributed_layer_call_fn_87721
0__inference_time_distributed_layer_call_fn_87728
0__inference_time_distributed_layer_call_fn_87735
0__inference_time_distributed_layer_call_fn_87742└
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
K__inference_time_distributed_layer_call_and_return_conditional_losses_87763
K__inference_time_distributed_layer_call_and_return_conditional_losses_87784
K__inference_time_distributed_layer_call_and_return_conditional_losses_87798
K__inference_time_distributed_layer_call_and_return_conditional_losses_87812└
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
2__inference_time_distributed_1_layer_call_fn_87817
2__inference_time_distributed_1_layer_call_fn_87822
2__inference_time_distributed_1_layer_call_fn_87827
2__inference_time_distributed_1_layer_call_fn_87832└
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
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87848
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87871
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87880
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87896└
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
2__inference_time_distributed_2_layer_call_fn_87903
2__inference_time_distributed_2_layer_call_fn_87910
2__inference_time_distributed_2_layer_call_fn_87917
2__inference_time_distributed_2_layer_call_fn_87924└
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
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87945
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87966
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87980
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87994└
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
2__inference_time_distributed_3_layer_call_fn_87999
2__inference_time_distributed_3_layer_call_fn_88004
2__inference_time_distributed_3_layer_call_fn_88009
2__inference_time_distributed_3_layer_call_fn_88014└
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
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88030
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88053
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88062
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88078└
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
2__inference_time_distributed_4_layer_call_fn_88085
2__inference_time_distributed_4_layer_call_fn_88092
2__inference_time_distributed_4_layer_call_fn_88099
2__inference_time_distributed_4_layer_call_fn_88106└
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
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88127
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88148
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88162
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88176└
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
2__inference_time_distributed_5_layer_call_fn_88181
2__inference_time_distributed_5_layer_call_fn_88186
2__inference_time_distributed_5_layer_call_fn_88191
2__inference_time_distributed_5_layer_call_fn_88196└
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
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88212
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88235
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88244
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88260└
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
2__inference_time_distributed_6_layer_call_fn_88267
2__inference_time_distributed_6_layer_call_fn_88274
2__inference_time_distributed_6_layer_call_fn_88281
2__inference_time_distributed_6_layer_call_fn_88288└
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
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88309
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88330
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88344
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88358└
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
2__inference_time_distributed_7_layer_call_fn_88363
2__inference_time_distributed_7_layer_call_fn_88368
2__inference_time_distributed_7_layer_call_fn_88373
2__inference_time_distributed_7_layer_call_fn_88378└
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
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88394
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88417
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88426
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88442└
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
2__inference_time_distributed_8_layer_call_fn_88449
2__inference_time_distributed_8_layer_call_fn_88456
2__inference_time_distributed_8_layer_call_fn_88463
2__inference_time_distributed_8_layer_call_fn_88470└
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
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88491
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88512
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88526
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88540└
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
*__inference_cropping1d_layer_call_fn_88545
*__inference_cropping1d_layer_call_fn_88550в
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
E__inference_cropping1d_layer_call_and_return_conditional_losses_88558
E__inference_cropping1d_layer_call_and_return_conditional_losses_88566в
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
#__inference_signature_wrapper_85736
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
)__inference_lstm_cell_layer_call_fn_88580
)__inference_lstm_cell_layer_call_fn_88594╛
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
D__inference_lstm_cell_layer_call_and_return_conditional_losses_88624
D__inference_lstm_cell_layer_call_and_return_conditional_losses_88654╛
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
+__inference_lstm_cell_1_layer_call_fn_88668
+__inference_lstm_cell_1_layer_call_fn_88682╛
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
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_88712
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_88742╛
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
%__inference_dense_layer_call_fn_88749в
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
@__inference_dense_layer_call_and_return_conditional_losses_88759в
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
'__inference_dropout_layer_call_fn_88764
'__inference_dropout_layer_call_fn_88769┤
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
B__inference_dropout_layer_call_and_return_conditional_losses_88774
B__inference_dropout_layer_call_and_return_conditional_losses_88786┤
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
'__inference_dense_1_layer_call_fn_88793в
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
B__inference_dense_1_layer_call_and_return_conditional_losses_88803в
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
)__inference_dropout_1_layer_call_fn_88808
)__inference_dropout_1_layer_call_fn_88813┤
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
D__inference_dropout_1_layer_call_and_return_conditional_losses_88818
D__inference_dropout_1_layer_call_and_return_conditional_losses_88830┤
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
'__inference_dense_2_layer_call_fn_88837в
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
B__inference_dense_2_layer_call_and_return_conditional_losses_88847в
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
)__inference_dropout_2_layer_call_fn_88852
)__inference_dropout_2_layer_call_fn_88857┤
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
D__inference_dropout_2_layer_call_and_return_conditional_losses_88862
D__inference_dropout_2_layer_call_and_return_conditional_losses_88874┤
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
'__inference_dense_3_layer_call_fn_88881в
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
B__inference_dense_3_layer_call_and_return_conditional_losses_88891в
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
)__inference_dropout_3_layer_call_fn_88896
)__inference_dropout_3_layer_call_fn_88901┤
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
D__inference_dropout_3_layer_call_and_return_conditional_losses_88906
D__inference_dropout_3_layer_call_and_return_conditional_losses_88918┤
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
'__inference_dense_4_layer_call_fn_88925в
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
B__inference_dense_4_layer_call_and_return_conditional_losses_88935в
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
 н
 __inference__wrapped_model_83170ИTUVWXYZ[\]^_`abc7в4
-в*
(К%

lstm_input         
к ";к8
6

cropping1d(К%

cropping1d         
╬
E__inference_cropping1d_layer_call_and_return_conditional_losses_88558ДEвB
;в8
6К3
inputs'                           
к ";в8
1К.
0'                           
Ъ й
E__inference_cropping1d_layer_call_and_return_conditional_losses_88566`3в0
)в&
$К!
inputs         
к ")в&
К
0         

Ъ е
*__inference_cropping1d_layer_call_fn_88545wEвB
;в8
6К3
inputs'                           
к ".К+'                           Б
*__inference_cropping1d_layer_call_fn_88550S3в0
)в&
$К!
inputs         
к "К         
г
B__inference_dense_1_layer_call_and_return_conditional_losses_88803]\]0в-
&в#
!К
inputs         к
к "%в"
К
0         U
Ъ {
'__inference_dense_1_layer_call_fn_88793P\]0в-
&в#
!К
inputs         к
к "К         Uв
B__inference_dense_2_layer_call_and_return_conditional_losses_88847\^_/в,
%в"
 К
inputs         U
к "%в"
К
0         *
Ъ z
'__inference_dense_2_layer_call_fn_88837O^_/в,
%в"
 К
inputs         U
к "К         *в
B__inference_dense_3_layer_call_and_return_conditional_losses_88891\`a/в,
%в"
 К
inputs         *
к "%в"
К
0         
Ъ z
'__inference_dense_3_layer_call_fn_88881O`a/в,
%в"
 К
inputs         *
к "К         в
B__inference_dense_4_layer_call_and_return_conditional_losses_88935\bc/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ z
'__inference_dense_4_layer_call_fn_88925Obc/в,
%в"
 К
inputs         
к "К         в
@__inference_dense_layer_call_and_return_conditional_losses_88759^Z[0в-
&в#
!К
inputs         ╘
к "&в#
К
0         к
Ъ z
%__inference_dense_layer_call_fn_88749QZ[0в-
&в#
!К
inputs         ╘
к "К         кд
D__inference_dropout_1_layer_call_and_return_conditional_losses_88818\3в0
)в&
 К
inputs         U
p 
к "%в"
К
0         U
Ъ д
D__inference_dropout_1_layer_call_and_return_conditional_losses_88830\3в0
)в&
 К
inputs         U
p
к "%в"
К
0         U
Ъ |
)__inference_dropout_1_layer_call_fn_88808O3в0
)в&
 К
inputs         U
p 
к "К         U|
)__inference_dropout_1_layer_call_fn_88813O3в0
)в&
 К
inputs         U
p
к "К         Uд
D__inference_dropout_2_layer_call_and_return_conditional_losses_88862\3в0
)в&
 К
inputs         *
p 
к "%в"
К
0         *
Ъ д
D__inference_dropout_2_layer_call_and_return_conditional_losses_88874\3в0
)в&
 К
inputs         *
p
к "%в"
К
0         *
Ъ |
)__inference_dropout_2_layer_call_fn_88852O3в0
)в&
 К
inputs         *
p 
к "К         *|
)__inference_dropout_2_layer_call_fn_88857O3в0
)в&
 К
inputs         *
p
к "К         *д
D__inference_dropout_3_layer_call_and_return_conditional_losses_88906\3в0
)в&
 К
inputs         
p 
к "%в"
К
0         
Ъ д
D__inference_dropout_3_layer_call_and_return_conditional_losses_88918\3в0
)в&
 К
inputs         
p
к "%в"
К
0         
Ъ |
)__inference_dropout_3_layer_call_fn_88896O3в0
)в&
 К
inputs         
p 
к "К         |
)__inference_dropout_3_layer_call_fn_88901O3в0
)в&
 К
inputs         
p
к "К         д
B__inference_dropout_layer_call_and_return_conditional_losses_88774^4в1
*в'
!К
inputs         к
p 
к "&в#
К
0         к
Ъ д
B__inference_dropout_layer_call_and_return_conditional_losses_88786^4в1
*в'
!К
inputs         к
p
к "&в#
К
0         к
Ъ |
'__inference_dropout_layer_call_fn_88764Q4в1
*в'
!К
inputs         к
p 
к "К         к|
'__inference_dropout_layer_call_fn_88769Q4в1
*в'
!К
inputs         к
p
к "К         к╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_87297МWXYPвM
FвC
5Ъ2
0К-
inputs/0                  ╘

 
p 

 
к "3в0
)К&
0                  ╘
Ъ ╥
A__inference_lstm_1_layer_call_and_return_conditional_losses_87436МWXYPвM
FвC
5Ъ2
0К-
inputs/0                  ╘

 
p

 
к "3в0
)К&
0                  ╘
Ъ ╕
A__inference_lstm_1_layer_call_and_return_conditional_losses_87575sWXY@в=
6в3
%К"
inputs         ╘

 
p 

 
к "*в'
 К
0         ╘
Ъ ╕
A__inference_lstm_1_layer_call_and_return_conditional_losses_87714sWXY@в=
6в3
%К"
inputs         ╘

 
p

 
к "*в'
 К
0         ╘
Ъ й
&__inference_lstm_1_layer_call_fn_87134WXYPвM
FвC
5Ъ2
0К-
inputs/0                  ╘

 
p 

 
к "&К#                  ╘й
&__inference_lstm_1_layer_call_fn_87142WXYPвM
FвC
5Ъ2
0К-
inputs/0                  ╘

 
p

 
к "&К#                  ╘Р
&__inference_lstm_1_layer_call_fn_87150fWXY@в=
6в3
%К"
inputs         ╘

 
p 

 
к "К         ╘Р
&__inference_lstm_1_layer_call_fn_87158fWXY@в=
6в3
%К"
inputs         ╘

 
p

 
к "К         ╘╧
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_88712ДWXYДвА
yвv
!К
inputs         ╘
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p 
к "vвs
lвi
К
0/0         ╘
GЪD
 К
0/1/0         ╘
 К
0/1/1         ╘
Ъ ╧
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_88742ДWXYДвА
yвv
!К
inputs         ╘
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p
к "vвs
lвi
К
0/0         ╘
GЪD
 К
0/1/0         ╘
 К
0/1/1         ╘
Ъ д
+__inference_lstm_cell_1_layer_call_fn_88668ЇWXYДвА
yвv
!К
inputs         ╘
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p 
к "fвc
К
0         ╘
CЪ@
К
1/0         ╘
К
1/1         ╘д
+__inference_lstm_cell_1_layer_call_fn_88682ЇWXYДвА
yвv
!К
inputs         ╘
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p
к "fвc
К
0         ╘
CЪ@
К
1/0         ╘
К
1/1         ╘╦
D__inference_lstm_cell_layer_call_and_return_conditional_losses_88624ВTUVВв
xвu
 К
inputs         
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p 
к "vвs
lвi
К
0/0         ╘
GЪD
 К
0/1/0         ╘
 К
0/1/1         ╘
Ъ ╦
D__inference_lstm_cell_layer_call_and_return_conditional_losses_88654ВTUVВв
xвu
 К
inputs         
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p
к "vвs
lвi
К
0/0         ╘
GЪD
 К
0/1/0         ╘
 К
0/1/1         ╘
Ъ а
)__inference_lstm_cell_layer_call_fn_88580ЄTUVВв
xвu
 К
inputs         
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p 
к "fвc
К
0         ╘
CЪ@
К
1/0         ╘
К
1/1         ╘а
)__inference_lstm_cell_layer_call_fn_88594ЄTUVВв
xвu
 К
inputs         
MвJ
#К 
states/0         ╘
#К 
states/1         ╘
p
к "fвc
К
0         ╘
CЪ@
К
1/0         ╘
К
1/1         ╘╧
?__inference_lstm_layer_call_and_return_conditional_losses_86709ЛTUVOвL
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
0                  ╘
Ъ ╧
?__inference_lstm_layer_call_and_return_conditional_losses_86848ЛTUVOвL
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
0                  ╘
Ъ ╡
?__inference_lstm_layer_call_and_return_conditional_losses_86987rTUV?в<
5в2
$К!
inputs         

 
p 

 
к "*в'
 К
0         ╘
Ъ ╡
?__inference_lstm_layer_call_and_return_conditional_losses_87126rTUV?в<
5в2
$К!
inputs         

 
p

 
к "*в'
 К
0         ╘
Ъ ж
$__inference_lstm_layer_call_fn_86546~TUVOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "&К#                  ╘ж
$__inference_lstm_layer_call_fn_86554~TUVOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "&К#                  ╘Н
$__inference_lstm_layer_call_fn_86562eTUV?в<
5в2
$К!
inputs         

 
p 

 
к "К         ╘Н
$__inference_lstm_layer_call_fn_86570eTUV?в<
5в2
$К!
inputs         

 
p

 
к "К         ╘╟
E__inference_sequential_layer_call_and_return_conditional_losses_85663~TUVWXYZ[\]^_`abc?в<
5в2
(К%

lstm_input         
p 

 
к ")в&
К
0         

Ъ ╟
E__inference_sequential_layer_call_and_return_conditional_losses_85713~TUVWXYZ[\]^_`abc?в<
5в2
(К%

lstm_input         
p

 
к ")в&
К
0         

Ъ ├
E__inference_sequential_layer_call_and_return_conditional_losses_86144zTUVWXYZ[\]^_`abc;в8
1в.
$К!
inputs         
p 

 
к ")в&
К
0         

Ъ ├
E__inference_sequential_layer_call_and_return_conditional_losses_86538zTUVWXYZ[\]^_`abc;в8
1в.
$К!
inputs         
p

 
к ")в&
К
0         

Ъ Я
*__inference_sequential_layer_call_fn_84941qTUVWXYZ[\]^_`abc?в<
5в2
(К%

lstm_input         
p 

 
к "К         
Я
*__inference_sequential_layer_call_fn_85613qTUVWXYZ[\]^_`abc?в<
5в2
(К%

lstm_input         
p

 
к "К         
Ы
*__inference_sequential_layer_call_fn_85757mTUVWXYZ[\]^_`abc;в8
1в.
$К!
inputs         
p 

 
к "К         
Ы
*__inference_sequential_layer_call_fn_85778mTUVWXYZ[\]^_`abc;в8
1в.
$К!
inputs         
p

 
к "К         
╛
#__inference_signature_wrapper_85736ЦTUVWXYZ[\]^_`abcEвB
в 
;к8
6

lstm_input(К%

lstm_input         ";к8
6

cropping1d(К%

cropping1d         
═
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87848|EвB
;в8
.К+
inputs                  к
p 

 
к "3в0
)К&
0                  к
Ъ ═
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87871|EвB
;в8
.К+
inputs                  к
p

 
к "3в0
)К&
0                  к
Ъ ╗
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87880j<в9
2в/
%К"
inputs         к
p 

 
к "*в'
 К
0         к
Ъ ╗
M__inference_time_distributed_1_layer_call_and_return_conditional_losses_87896j<в9
2в/
%К"
inputs         к
p

 
к "*в'
 К
0         к
Ъ е
2__inference_time_distributed_1_layer_call_fn_87817oEвB
;в8
.К+
inputs                  к
p 

 
к "&К#                  ке
2__inference_time_distributed_1_layer_call_fn_87822oEвB
;в8
.К+
inputs                  к
p

 
к "&К#                  кУ
2__inference_time_distributed_1_layer_call_fn_87827]<в9
2в/
%К"
inputs         к
p 

 
к "К         кУ
2__inference_time_distributed_1_layer_call_fn_87832]<в9
2в/
%К"
inputs         к
p

 
к "К         к╨
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87945\]EвB
;в8
.К+
inputs                  к
p 

 
к "2в/
(К%
0                  U
Ъ ╨
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87966\]EвB
;в8
.К+
inputs                  к
p

 
к "2в/
(К%
0                  U
Ъ ╛
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87980m\]<в9
2в/
%К"
inputs         к
p 

 
к ")в&
К
0         U
Ъ ╛
M__inference_time_distributed_2_layer_call_and_return_conditional_losses_87994m\]<в9
2в/
%К"
inputs         к
p

 
к ")в&
К
0         U
Ъ и
2__inference_time_distributed_2_layer_call_fn_87903r\]EвB
;в8
.К+
inputs                  к
p 

 
к "%К"                  Uи
2__inference_time_distributed_2_layer_call_fn_87910r\]EвB
;в8
.К+
inputs                  к
p

 
к "%К"                  UЦ
2__inference_time_distributed_2_layer_call_fn_87917`\]<в9
2в/
%К"
inputs         к
p 

 
к "К         UЦ
2__inference_time_distributed_2_layer_call_fn_87924`\]<в9
2в/
%К"
inputs         к
p

 
к "К         U╦
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88030zDвA
:в7
-К*
inputs                  U
p 

 
к "2в/
(К%
0                  U
Ъ ╦
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88053zDвA
:в7
-К*
inputs                  U
p

 
к "2в/
(К%
0                  U
Ъ ╣
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88062h;в8
1в.
$К!
inputs         U
p 

 
к ")в&
К
0         U
Ъ ╣
M__inference_time_distributed_3_layer_call_and_return_conditional_losses_88078h;в8
1в.
$К!
inputs         U
p

 
к ")в&
К
0         U
Ъ г
2__inference_time_distributed_3_layer_call_fn_87999mDвA
:в7
-К*
inputs                  U
p 

 
к "%К"                  Uг
2__inference_time_distributed_3_layer_call_fn_88004mDвA
:в7
-К*
inputs                  U
p

 
к "%К"                  UС
2__inference_time_distributed_3_layer_call_fn_88009[;в8
1в.
$К!
inputs         U
p 

 
к "К         UС
2__inference_time_distributed_3_layer_call_fn_88014[;в8
1в.
$К!
inputs         U
p

 
к "К         U╧
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88127~^_DвA
:в7
-К*
inputs                  U
p 

 
к "2в/
(К%
0                  *
Ъ ╧
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88148~^_DвA
:в7
-К*
inputs                  U
p

 
к "2в/
(К%
0                  *
Ъ ╜
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88162l^_;в8
1в.
$К!
inputs         U
p 

 
к ")в&
К
0         *
Ъ ╜
M__inference_time_distributed_4_layer_call_and_return_conditional_losses_88176l^_;в8
1в.
$К!
inputs         U
p

 
к ")в&
К
0         *
Ъ з
2__inference_time_distributed_4_layer_call_fn_88085q^_DвA
:в7
-К*
inputs                  U
p 

 
к "%К"                  *з
2__inference_time_distributed_4_layer_call_fn_88092q^_DвA
:в7
-К*
inputs                  U
p

 
к "%К"                  *Х
2__inference_time_distributed_4_layer_call_fn_88099_^_;в8
1в.
$К!
inputs         U
p 

 
к "К         *Х
2__inference_time_distributed_4_layer_call_fn_88106_^_;в8
1в.
$К!
inputs         U
p

 
к "К         *╦
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88212zDвA
:в7
-К*
inputs                  *
p 

 
к "2в/
(К%
0                  *
Ъ ╦
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88235zDвA
:в7
-К*
inputs                  *
p

 
к "2в/
(К%
0                  *
Ъ ╣
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88244h;в8
1в.
$К!
inputs         *
p 

 
к ")в&
К
0         *
Ъ ╣
M__inference_time_distributed_5_layer_call_and_return_conditional_losses_88260h;в8
1в.
$К!
inputs         *
p

 
к ")в&
К
0         *
Ъ г
2__inference_time_distributed_5_layer_call_fn_88181mDвA
:в7
-К*
inputs                  *
p 

 
к "%К"                  *г
2__inference_time_distributed_5_layer_call_fn_88186mDвA
:в7
-К*
inputs                  *
p

 
к "%К"                  *С
2__inference_time_distributed_5_layer_call_fn_88191[;в8
1в.
$К!
inputs         *
p 

 
к "К         *С
2__inference_time_distributed_5_layer_call_fn_88196[;в8
1в.
$К!
inputs         *
p

 
к "К         *╧
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88309~`aDвA
:в7
-К*
inputs                  *
p 

 
к "2в/
(К%
0                  
Ъ ╧
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88330~`aDвA
:в7
-К*
inputs                  *
p

 
к "2в/
(К%
0                  
Ъ ╜
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88344l`a;в8
1в.
$К!
inputs         *
p 

 
к ")в&
К
0         
Ъ ╜
M__inference_time_distributed_6_layer_call_and_return_conditional_losses_88358l`a;в8
1в.
$К!
inputs         *
p

 
к ")в&
К
0         
Ъ з
2__inference_time_distributed_6_layer_call_fn_88267q`aDвA
:в7
-К*
inputs                  *
p 

 
к "%К"                  з
2__inference_time_distributed_6_layer_call_fn_88274q`aDвA
:в7
-К*
inputs                  *
p

 
к "%К"                  Х
2__inference_time_distributed_6_layer_call_fn_88281_`a;в8
1в.
$К!
inputs         *
p 

 
к "К         Х
2__inference_time_distributed_6_layer_call_fn_88288_`a;в8
1в.
$К!
inputs         *
p

 
к "К         ╦
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88394zDвA
:в7
-К*
inputs                  
p 

 
к "2в/
(К%
0                  
Ъ ╦
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88417zDвA
:в7
-К*
inputs                  
p

 
к "2в/
(К%
0                  
Ъ ╣
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88426h;в8
1в.
$К!
inputs         
p 

 
к ")в&
К
0         
Ъ ╣
M__inference_time_distributed_7_layer_call_and_return_conditional_losses_88442h;в8
1в.
$К!
inputs         
p

 
к ")в&
К
0         
Ъ г
2__inference_time_distributed_7_layer_call_fn_88363mDвA
:в7
-К*
inputs                  
p 

 
к "%К"                  г
2__inference_time_distributed_7_layer_call_fn_88368mDвA
:в7
-К*
inputs                  
p

 
к "%К"                  С
2__inference_time_distributed_7_layer_call_fn_88373[;в8
1в.
$К!
inputs         
p 

 
к "К         С
2__inference_time_distributed_7_layer_call_fn_88378[;в8
1в.
$К!
inputs         
p

 
к "К         ╧
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88491~bcDвA
:в7
-К*
inputs                  
p 

 
к "2в/
(К%
0                  
Ъ ╧
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88512~bcDвA
:в7
-К*
inputs                  
p

 
к "2в/
(К%
0                  
Ъ ╜
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88526lbc;в8
1в.
$К!
inputs         
p 

 
к ")в&
К
0         
Ъ ╜
M__inference_time_distributed_8_layer_call_and_return_conditional_losses_88540lbc;в8
1в.
$К!
inputs         
p

 
к ")в&
К
0         
Ъ з
2__inference_time_distributed_8_layer_call_fn_88449qbcDвA
:в7
-К*
inputs                  
p 

 
к "%К"                  з
2__inference_time_distributed_8_layer_call_fn_88456qbcDвA
:в7
-К*
inputs                  
p

 
к "%К"                  Х
2__inference_time_distributed_8_layer_call_fn_88463_bc;в8
1в.
$К!
inputs         
p 

 
к "К         Х
2__inference_time_distributed_8_layer_call_fn_88470_bc;в8
1в.
$К!
inputs         
p

 
к "К         ╨
K__inference_time_distributed_layer_call_and_return_conditional_losses_87763АZ[EвB
;в8
.К+
inputs                  ╘
p 

 
к "3в0
)К&
0                  к
Ъ ╨
K__inference_time_distributed_layer_call_and_return_conditional_losses_87784АZ[EвB
;в8
.К+
inputs                  ╘
p

 
к "3в0
)К&
0                  к
Ъ ╜
K__inference_time_distributed_layer_call_and_return_conditional_losses_87798nZ[<в9
2в/
%К"
inputs         ╘
p 

 
к "*в'
 К
0         к
Ъ ╜
K__inference_time_distributed_layer_call_and_return_conditional_losses_87812nZ[<в9
2в/
%К"
inputs         ╘
p

 
к "*в'
 К
0         к
Ъ з
0__inference_time_distributed_layer_call_fn_87721sZ[EвB
;в8
.К+
inputs                  ╘
p 

 
к "&К#                  кз
0__inference_time_distributed_layer_call_fn_87728sZ[EвB
;в8
.К+
inputs                  ╘
p

 
к "&К#                  кХ
0__inference_time_distributed_layer_call_fn_87735aZ[<в9
2в/
%К"
inputs         ╘
p 

 
к "К         кХ
0__inference_time_distributed_layer_call_fn_87742aZ[<в9
2в/
%К"
inputs         ╘
p

 
к "К         к
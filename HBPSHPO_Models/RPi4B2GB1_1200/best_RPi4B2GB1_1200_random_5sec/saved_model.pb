зт)
у
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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
Ћ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleщelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28јц&
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

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

training/Adagrad/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name training/Adagrad/learning_rate

2training/Adagrad/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adagrad/learning_rate*
_output_shapes
: *
dtype0

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	C*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
dtype0

lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C**
shared_namelstm_1/lstm_cell_1/kernel

-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	C*
dtype0
Ѓ
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel

7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes
:	C*
dtype0

lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_1/lstm_cell_1/bias

+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:*
dtype0

time_distributed/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:C"*(
shared_nametime_distributed/kernel

+time_distributed/kernel/Read/ReadVariableOpReadVariableOptime_distributed/kernel*
_output_shapes

:C"*
dtype0

time_distributed/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:"*&
shared_nametime_distributed/bias
{
)time_distributed/bias/Read/ReadVariableOpReadVariableOptime_distributed/bias*
_output_shapes
:"*
dtype0

time_distributed_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:"**
shared_nametime_distributed_2/kernel

-time_distributed_2/kernel/Read/ReadVariableOpReadVariableOptime_distributed_2/kernel*
_output_shapes

:"*
dtype0

time_distributed_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_2/bias

+time_distributed_2/bias/Read/ReadVariableOpReadVariableOptime_distributed_2/bias*
_output_shapes
:*
dtype0

time_distributed_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**
shared_nametime_distributed_4/kernel

-time_distributed_4/kernel/Read/ReadVariableOpReadVariableOptime_distributed_4/kernel*
_output_shapes

:*
dtype0

time_distributed_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nametime_distributed_4/bias

+time_distributed_4/bias/Read/ReadVariableOpReadVariableOptime_distributed_4/bias*
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
С
2training/Adagrad/lstm/lstm_cell/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*C
shared_name42training/Adagrad/lstm/lstm_cell/kernel/accumulator
К
Ftraining/Adagrad/lstm/lstm_cell/kernel/accumulator/Read/ReadVariableOpReadVariableOp2training/Adagrad/lstm/lstm_cell/kernel/accumulator*
_output_shapes
:	*
dtype0
е
<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*M
shared_name><training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator
Ю
Ptraining/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator/Read/ReadVariableOpReadVariableOp<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator*
_output_shapes
:	C*
dtype0
Й
0training/Adagrad/lstm/lstm_cell/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20training/Adagrad/lstm/lstm_cell/bias/accumulator
В
Dtraining/Adagrad/lstm/lstm_cell/bias/accumulator/Read/ReadVariableOpReadVariableOp0training/Adagrad/lstm/lstm_cell/bias/accumulator*
_output_shapes	
:*
dtype0
Щ
6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*G
shared_name86training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator
Т
Jtraining/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator*
_output_shapes
:	C*
dtype0
н
@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	C*Q
shared_nameB@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator
ж
Ttraining/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator/Read/ReadVariableOpReadVariableOp@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator*
_output_shapes
:	C*
dtype0
С
4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator
К
Htraining/Adagrad/lstm_1/lstm_cell_1/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator*
_output_shapes	
:*
dtype0
Ф
4training/Adagrad/time_distributed/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:C"*E
shared_name64training/Adagrad/time_distributed/kernel/accumulator
Н
Htraining/Adagrad/time_distributed/kernel/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed/kernel/accumulator*
_output_shapes

:C"*
dtype0
М
2training/Adagrad/time_distributed/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:"*C
shared_name42training/Adagrad/time_distributed/bias/accumulator
Е
Ftraining/Adagrad/time_distributed/bias/accumulator/Read/ReadVariableOpReadVariableOp2training/Adagrad/time_distributed/bias/accumulator*
_output_shapes
:"*
dtype0
Ш
6training/Adagrad/time_distributed_2/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:"*G
shared_name86training/Adagrad/time_distributed_2/kernel/accumulator
С
Jtraining/Adagrad/time_distributed_2/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/time_distributed_2/kernel/accumulator*
_output_shapes

:"*
dtype0
Р
4training/Adagrad/time_distributed_2/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64training/Adagrad/time_distributed_2/bias/accumulator
Й
Htraining/Adagrad/time_distributed_2/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed_2/bias/accumulator*
_output_shapes
:*
dtype0
Ш
6training/Adagrad/time_distributed_4/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86training/Adagrad/time_distributed_4/kernel/accumulator
С
Jtraining/Adagrad/time_distributed_4/kernel/accumulator/Read/ReadVariableOpReadVariableOp6training/Adagrad/time_distributed_4/kernel/accumulator*
_output_shapes

:*
dtype0
Р
4training/Adagrad/time_distributed_4/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64training/Adagrad/time_distributed_4/bias/accumulator
Й
Htraining/Adagrad/time_distributed_4/bias/accumulator/Read/ReadVariableOpReadVariableOp4training/Adagrad/time_distributed_4/bias/accumulator*
_output_shapes
:*
dtype0

NoOpNoOp
жL
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*L
valueLBL B§K
л
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
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
]
	layer
	variables
trainable_variables
regularization_losses
	keras_api
]
	 layer
!	variables
"trainable_variables
#regularization_losses
$	keras_api
]
	%layer
&	variables
'trainable_variables
(regularization_losses
)	keras_api
]
	*layer
+	variables
,trainable_variables
-regularization_losses
.	keras_api
]
	/layer
0	variables
1trainable_variables
2regularization_losses
3	keras_api
R
4	variables
5trainable_variables
6regularization_losses
7	keras_api

8iter
	9decay
:learning_rate;accumulatorУ<accumulatorФ=accumulatorХ>accumulatorЦ?accumulatorЧ@accumulatorШAaccumulatorЩBaccumulatorЪCaccumulatorЫDaccumulatorЬEaccumulatorЭFaccumulatorЮ
V
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
V
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
 
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics

	variables
trainable_variables
regularization_losses
 

L
state_size

;kernel
<recurrent_kernel
=bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

;0
<1
=2

;0
<1
=2
 
Й

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses

W
state_size

>kernel
?recurrent_kernel
@bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
 

>0
?1
@2

>0
?1
@2
 
Й

\states
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
h

Akernel
Bbias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api

A0
B1

A0
B1
 
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
R
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
 
 
 
­
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
!	variables
"trainable_variables
#regularization_losses
h

Ckernel
Dbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api

C0
D1

C0
D1
 
­
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
&	variables
'trainable_variables
(regularization_losses
S
}	variables
~trainable_variables
regularization_losses
	keras_api
 
 
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
l

Ekernel
Fbias
	variables
trainable_variables
regularization_losses
	keras_api

E0
F1

E0
F1
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
 
 
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
4	variables
5trainable_variables
6regularization_losses
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
 
8
0
1
2
3
4
5
6
7

0
1
 
 
 

;0
<1
=2

;0
<1
=2
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 

>0
?1
@2

>0
?1
@2
 
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
 
 

0
 
 
 

A0
B1

A0
B1
 
В
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
 

0
 
 
 
 
 
 
В
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
 

 0
 
 
 

C0
D1

C0
D1
 
В
Њnon_trainable_variables
Ћlayers
Ќmetrics
 ­layer_regularization_losses
Ўlayer_metrics
t	variables
utrainable_variables
vregularization_losses
 

%0
 
 
 
 
 
 
В
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
}	variables
~trainable_variables
regularization_losses
 

*0
 
 
 

E0
F1

E0
F1
 
Е
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
	variables
trainable_variables
regularization_losses
 

/0
 
 
 
 
 
 
 
 
I

Йtotal

Кcount
Л
_fn_kwargs
М	variables
Н	keras_api
I

Оtotal

Пcount
Р
_fn_kwargs
С	variables
Т	keras_api
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
Й0
К1

М	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

О0
П1

С	variables

VARIABLE_VALUE2training/Adagrad/lstm/lstm_cell/kernel/accumulatorLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulatorLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE0training/Adagrad/lstm/lstm_cell/bias/accumulatorLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulatorLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
Ѓ 
VARIABLE_VALUE@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulatorLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulatorLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4training/Adagrad/time_distributed/kernel/accumulatorLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE2training/Adagrad/time_distributed/bias/accumulatorLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6training/Adagrad/time_distributed_2/kernel/accumulatorLvariables/8/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4training/Adagrad/time_distributed_2/bias/accumulatorLvariables/9/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE6training/Adagrad/time_distributed_4/kernel/accumulatorMvariables/10/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE4training/Adagrad/time_distributed_4/bias/accumulatorMvariables/11/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastime_distributed/kerneltime_distributed/biastime_distributed_2/kerneltime_distributed_2/biastime_distributed_4/kerneltime_distributed_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_115207
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
э
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)training/Adagrad/iter/Read/ReadVariableOp*training/Adagrad/decay/Read/ReadVariableOp2training/Adagrad/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp+time_distributed/kernel/Read/ReadVariableOp)time_distributed/bias/Read/ReadVariableOp-time_distributed_2/kernel/Read/ReadVariableOp+time_distributed_2/bias/Read/ReadVariableOp-time_distributed_4/kernel/Read/ReadVariableOp+time_distributed_4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpFtraining/Adagrad/lstm/lstm_cell/kernel/accumulator/Read/ReadVariableOpPtraining/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator/Read/ReadVariableOpDtraining/Adagrad/lstm/lstm_cell/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator/Read/ReadVariableOpTtraining/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/lstm_1/lstm_cell_1/bias/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed/kernel/accumulator/Read/ReadVariableOpFtraining/Adagrad/time_distributed/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/time_distributed_2/kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed_2/bias/accumulator/Read/ReadVariableOpJtraining/Adagrad/time_distributed_4/kernel/accumulator/Read/ReadVariableOpHtraining/Adagrad/time_distributed_4/bias/accumulator/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_117978
ќ

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametraining/Adagrad/itertraining/Adagrad/decaytraining/Adagrad/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biastime_distributed/kerneltime_distributed/biastime_distributed_2/kerneltime_distributed_2/biastime_distributed_4/kerneltime_distributed_4/biastotalcounttotal_1count_12training/Adagrad/lstm/lstm_cell/kernel/accumulator<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator0training/Adagrad/lstm/lstm_cell/bias/accumulator6training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator4training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator4training/Adagrad/time_distributed/kernel/accumulator2training/Adagrad/time_distributed/bias/accumulator6training/Adagrad/time_distributed_2/kernel/accumulator4training/Adagrad/time_distributed_2/bias/accumulator6training/Adagrad/time_distributed_4/kernel/accumulator4training/Adagrad/time_distributed_4/bias/accumulator*+
Tin$
"2 *
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_118081­%
Ф
ѓ
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114128

inputs3
!dense_2_time_distributed_4_kernel:-
dense_2_time_distributed_4_bias:
identityЂdense_2/StatefulPartitionedCall;
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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_2_time_distributed_4_kerneldense_2_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_114119\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
NoOpNoOp ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ы
a
E__inference_dropout_1_layer_call_and_return_conditional_losses_117845

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ5
Ш
F__inference_sequential_layer_call_and_return_conditional_losses_115188

lstm_input-
lstm_lstm_lstm_cell_kernel:	7
$lstm_lstm_lstm_cell_recurrent_kernel:	C'
lstm_lstm_lstm_cell_bias:	3
 lstm_1_lstm_1_lstm_cell_1_kernel:	C=
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:	C-
lstm_1_lstm_1_lstm_cell_1_bias:	:
(time_distributed_time_distributed_kernel:C"4
&time_distributed_time_distributed_bias:">
,time_distributed_2_time_distributed_2_kernel:"8
*time_distributed_2_time_distributed_2_bias:>
,time_distributed_4_time_distributed_4_kernel:8
*time_distributed_4_time_distributed_4_bias:
identityЂlstm/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂ(time_distributed/StatefulPartitionedCallЂ*time_distributed_2/StatefulPartitionedCallЂ*time_distributed_4/StatefulPartitionedCallЌ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_115029н
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_114870е
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_114712o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ї
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCћ
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114685q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Е
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"х
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114665q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Џ
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"§
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114638q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   З
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџх
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114618q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Џ
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџэ
cropping1d/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_cropping1d_layer_call_and_return_conditional_losses_114572v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:W S
+
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
lstm_input
ќ
Р
3__inference_time_distributed_4_layer_call_fn_117491

inputs+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114618s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Є
ч
L__inference_time_distributed_layer_call_and_return_conditional_losses_113855

inputs/
dense_time_distributed_kernel:C")
dense_time_distributed_bias:"
identityЂdense/StatefulPartitionedCall;
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
valueB:б
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
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_time_distributed_kerneldense_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_113846\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџC: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
 
Р
3__inference_time_distributed_4_layer_call_fn_117477

inputs+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114161|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
н
b
F__inference_cropping1d_layer_call_and_return_conditional_losses_117579

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         њ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskt
IdentityIdentitystrided_slice:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
о
№
+__inference_sequential_layer_call_fn_114590

lstm_input(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	)
time_distributed_kernel:C"#
time_distributed_bias:"+
time_distributed_2_kernel:"%
time_distributed_2_bias:+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_114575s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
lstm_input

А
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113370

inputs

states
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	J
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	C9
*biasadd_readvariableop_lstm_lstm_cell_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates
г
ш
"__inference__traced_restore_118081
file_prefix0
&assignvariableop_training_adagrad_iter:	 3
)assignvariableop_1_training_adagrad_decay: ;
1assignvariableop_2_training_adagrad_learning_rate: ;
(assignvariableop_3_lstm_lstm_cell_kernel:	E
2assignvariableop_4_lstm_lstm_cell_recurrent_kernel:	C5
&assignvariableop_5_lstm_lstm_cell_bias:	?
,assignvariableop_6_lstm_1_lstm_cell_1_kernel:	CI
6assignvariableop_7_lstm_1_lstm_cell_1_recurrent_kernel:	C9
*assignvariableop_8_lstm_1_lstm_cell_1_bias:	<
*assignvariableop_9_time_distributed_kernel:C"7
)assignvariableop_10_time_distributed_bias:"?
-assignvariableop_11_time_distributed_2_kernel:"9
+assignvariableop_12_time_distributed_2_bias:?
-assignvariableop_13_time_distributed_4_kernel:9
+assignvariableop_14_time_distributed_4_bias:#
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: Y
Fassignvariableop_19_training_adagrad_lstm_lstm_cell_kernel_accumulator:	c
Passignvariableop_20_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulator:	CS
Dassignvariableop_21_training_adagrad_lstm_lstm_cell_bias_accumulator:	]
Jassignvariableop_22_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulator:	Cg
Tassignvariableop_23_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulator:	CW
Hassignvariableop_24_training_adagrad_lstm_1_lstm_cell_1_bias_accumulator:	Z
Hassignvariableop_25_training_adagrad_time_distributed_kernel_accumulator:C"T
Fassignvariableop_26_training_adagrad_time_distributed_bias_accumulator:"\
Jassignvariableop_27_training_adagrad_time_distributed_2_kernel_accumulator:"V
Hassignvariableop_28_training_adagrad_time_distributed_2_bias_accumulator:\
Jassignvariableop_29_training_adagrad_time_distributed_4_kernel_accumulator:V
Hassignvariableop_30_training_adagrad_time_distributed_4_bias_accumulator:
identity_32ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ќ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ђ
valueB B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/8/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/9/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/10/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/11/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHА
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOpAssignVariableOp&assignvariableop_training_adagrad_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp)assignvariableop_1_training_adagrad_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_2AssignVariableOp1assignvariableop_2_training_adagrad_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp(assignvariableop_3_lstm_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_4AssignVariableOp2assignvariableop_4_lstm_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp&assignvariableop_5_lstm_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp,assignvariableop_6_lstm_1_lstm_cell_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_7AssignVariableOp6assignvariableop_7_lstm_1_lstm_cell_1_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp*assignvariableop_8_lstm_1_lstm_cell_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_time_distributed_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp)assignvariableop_10_time_distributed_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp-assignvariableop_11_time_distributed_2_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp+assignvariableop_12_time_distributed_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp-assignvariableop_13_time_distributed_4_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp+assignvariableop_14_time_distributed_4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_19AssignVariableOpFassignvariableop_19_training_adagrad_lstm_lstm_cell_kernel_accumulatorIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_20AssignVariableOpPassignvariableop_20_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulatorIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_21AssignVariableOpDassignvariableop_21_training_adagrad_lstm_lstm_cell_bias_accumulatorIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_22AssignVariableOpJassignvariableop_22_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulatorIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_23AssignVariableOpTassignvariableop_23_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulatorIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_24AssignVariableOpHassignvariableop_24_training_adagrad_lstm_1_lstm_cell_1_bias_accumulatorIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_25AssignVariableOpHassignvariableop_25_training_adagrad_time_distributed_kernel_accumulatorIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_26AssignVariableOpFassignvariableop_26_training_adagrad_time_distributed_bias_accumulatorIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_27AssignVariableOpJassignvariableop_27_training_adagrad_time_distributed_2_kernel_accumulatorIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_28AssignVariableOpHassignvariableop_28_training_adagrad_time_distributed_2_bias_accumulatorIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_29AssignVariableOpJassignvariableop_29_training_adagrad_time_distributed_4_kernel_accumulatorIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_30AssignVariableOpHassignvariableop_30_training_adagrad_time_distributed_4_bias_accumulatorIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 љ
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: ц
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
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
3
Ї
while_body_116610
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Љ
ћ
!sequential_lstm_while_cond_112889&
"sequential_lstm_while_loop_counter,
(sequential_lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3(
$less_sequential_lstm_strided_slice_1>
:sequential_lstm_while_cond_112889___redundant_placeholder0>
:sequential_lstm_while_cond_112889___redundant_placeholder1>
:sequential_lstm_while_cond_112889___redundant_placeholder2>
:sequential_lstm_while_cond_112889___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
ѕ
Б
L__inference_time_distributed_layer_call_and_return_conditional_losses_114496

inputsE
3dense_matmul_readvariableop_time_distributed_kernel:C"@
2dense_biasadd_readvariableop_time_distributed_bias:"
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   ~
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ"
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџC: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
ѕ
F
*__inference_dropout_1_layer_call_fn_117831

inputs
identityА
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_114049`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
и
Г
lstm_1_while_cond_115776
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_1_strided_slice_15
1lstm_1_while_cond_115776___redundant_placeholder05
1lstm_1_while_cond_115776___redundant_placeholder15
1lstm_1_while_cond_115776___redundant_placeholder25
1lstm_1_while_cond_115776___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
ѕ
Б
L__inference_time_distributed_layer_call_and_return_conditional_losses_117210

inputsE
3dense_matmul_readvariableop_time_distributed_kernel:C"@
2dense_biasadd_readvariableop_time_distributed_bias:"
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   ~
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ"
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџC: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
J
З
@__inference_lstm_layer_call_and_return_conditional_losses_116090
inputs_0H
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116006*
condR
while_cond_116005*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCЗ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
3
Ї
while_body_116753
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Ї


A__inference_dense_layer_call_and_return_conditional_losses_113846

inputs?
-matmul_readvariableop_time_distributed_kernel:C":
,biasadd_readvariableop_time_distributed_bias:"
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp-matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ"w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџC: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
ћ
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114510

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"`
dropout/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ":S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ћ
Р
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_117739

inputs
states_0
states_1B
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CN
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	C=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1

G
+__inference_cropping1d_layer_call_fn_117571

inputs
identityЕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_cropping1d_layer_call_and_return_conditional_losses_114572d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
П
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117395

inputsI
7dense_1_matmul_readvariableop_time_distributed_2_kernel:"D
6dense_1_biasadd_readvariableop_time_distributed_2_bias:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ": : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs

j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_113955

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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"Р
dropout/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_113934\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape dropout/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ""
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ":\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
юJ
Я
B__inference_lstm_1_layer_call_and_return_conditional_losses_114477

inputsN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identityЂ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЌ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCu
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114393*
condR
while_cond_114392*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCН
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџC: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
Ш
П
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114559

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
a
C__inference_dropout_layer_call_and_return_conditional_losses_113912

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ""!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ":O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ф 
д
while_body_113573
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0:	CD
1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0:	C4
%lstm_cell_1_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:	CB
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:	C2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	Ђ#lstm_cell_1/StatefulPartitionedCall
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0Х
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_1_lstm_1_lstm_cell_1_kernel_01lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0%lstm_cell_1_lstm_1_lstm_cell_1_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113562У
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder,lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвG
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
: }

Identity_4Identity,lstm_cell_1/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC}

Identity_5Identity,lstm_cell_1/StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCl
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
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2J
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
9
С
B__inference_lstm_1_layer_call_and_return_conditional_losses_113815

inputs8
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:	CB
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:	C2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	
identityЂ#lstm_cell_1/StatefulPartitionedCallЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_maskБ
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113696n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113749*
condR
while_cond_113748*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџC: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
Ї


A__inference_dense_layer_call_and_return_conditional_losses_117789

inputs?
-matmul_readvariableop_time_distributed_kernel:C":
,biasadd_readvariableop_time_distributed_bias:"
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp-matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
BiasAdd/ReadVariableOpReadVariableOp,biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ"w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџC: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
Б
Б
L__inference_time_distributed_layer_call_and_return_conditional_losses_117195

inputsE
3dense_matmul_readvariableop_time_distributed_kernel:C"@
2dense_biasadd_readvariableop_time_distributed_bias:"
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOp;
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
valueB:б
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
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџC: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs

Ё
*__inference_lstm_cell_layer_call_fn_117615

inputs
states_0
states_1(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	
identity

identity_1

identity_2ЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџC:џџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1
бI
Е
@__inference_lstm_layer_call_and_return_conditional_losses_115029

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114945*
condR
while_cond_114944*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCЗ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
J
З
@__inference_lstm_layer_call_and_return_conditional_losses_116233
inputs_0H
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116149*
condR
while_cond_116148*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCЗ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
ш
П
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117365

inputsI
7dense_1_matmul_readvariableop_time_distributed_2_kernel:"D
6dense_1_biasadd_readvariableop_time_distributed_2_bias:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOp;
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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ": : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
Ш
П
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117561

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
3
Ї
while_body_114393
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
ѕ3
и
lstm_1_while_body_115439
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_1_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_1_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"Њ
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Л
O
3__inference_time_distributed_3_layer_call_fn_117405

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114092m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Я
G
+__inference_cropping1d_layer_call_fn_117566

inputs
identityЧ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_cropping1d_layer_call_and_return_conditional_losses_114178v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ё
D
(__inference_dropout_layer_call_fn_117794

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_113912`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ":O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Г
Џ
,__inference_lstm_cell_1_layer_call_fn_117707

inputs
states_0
states_1,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	
identity

identity_1

identity_2ЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113696o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1
э5
Ф
F__inference_sequential_layer_call_and_return_conditional_losses_114575

inputs-
lstm_lstm_lstm_cell_kernel:	7
$lstm_lstm_lstm_cell_recurrent_kernel:	C'
lstm_lstm_lstm_cell_bias:	3
 lstm_1_lstm_1_lstm_cell_1_kernel:	C=
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:	C-
lstm_1_lstm_1_lstm_cell_1_bias:	:
(time_distributed_time_distributed_kernel:C"4
&time_distributed_time_distributed_bias:">
,time_distributed_2_time_distributed_2_kernel:"8
*time_distributed_2_time_distributed_2_bias:>
,time_distributed_4_time_distributed_4_kernel:8
*time_distributed_4_time_distributed_4_bias:
identityЂlstm/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂ(time_distributed/StatefulPartitionedCallЂ*time_distributed_2/StatefulPartitionedCallЂ*time_distributed_4/StatefulPartitionedCallЈ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_114330н
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_114477е
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_114496o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ї
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCћ
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114510q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Е
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"х
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114528q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Џ
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"§
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114542q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   З
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџх
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114559q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Џ
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџэ
cropping1d/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_cropping1d_layer_call_and_return_conditional_losses_114572v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ћ
while_cond_116895
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116895___redundant_placeholder0.
*while_cond_116895___redundant_placeholder1.
*while_cond_116895___redundant_placeholder2.
*while_cond_116895___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
Ѓ
О
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113696

inputs

states
states_1B
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CN
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	C=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates
Ч
ю
'__inference_lstm_1_layer_call_fn_116551

inputs,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_114870s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
­
П
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117380

inputsI
7dense_1_matmul_readvariableop_time_distributed_2_kernel:"D
6dense_1_biasadd_readvariableop_time_distributed_2_bias:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ": : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
ы
У
F__inference_sequential_layer_call_and_return_conditional_losses_115579

inputsM
:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	Y
Flstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CH
9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	U
Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	Ca
Nlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CP
Alstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	V
Dtime_distributed_dense_matmul_readvariableop_time_distributed_kernel:C"Q
Ctime_distributed_dense_biasadd_readvariableop_time_distributed_bias:"\
Jtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:"W
Itime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:\
Jtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:W
Itime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂ%lstm/lstm_cell/BiasAdd/ReadVariableOpЂ$lstm/lstm_cell/MatMul/ReadVariableOpЂ&lstm/lstm_cell/MatMul_1/ReadVariableOpЂ
lstm/whileЂ)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpЂ(lstm_1/lstm_cell_1/MatMul/ReadVariableOpЂ*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpЂlstm_1/whileЂ-time_distributed/dense/BiasAdd/ReadVariableOpЂ,time_distributed/dense/MatMul/ReadVariableOpЂ1time_distributed_2/dense_1/BiasAdd/ReadVariableOpЂ0time_distributed_2/dense_1/MatMul/ReadVariableOpЂ1time_distributed_4/dense_2/BiasAdd/ReadVariableOpЂ0time_distributed_4/dense_2/MatMul/ReadVariableOp@

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
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCW
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџN
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
valueB:є
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
џџџџџџџџџУ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
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
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :у
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCt
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCl
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCt
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCi
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCs
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ч
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвK
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
џџџџџџџџџY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_115300*"
condR
lstm_while_cond_115299*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   б
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC`
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
valueB:є
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCY
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCR
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
valueB:ў
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
џџџџџџџџџЩ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   ѕ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
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
valueB:
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskЌ
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpBlstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0Љ
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџК
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0Ѓ
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЈ
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0Ї
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitz
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџC|
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCt
lstm_1/lstm_cell_1/ReluRelu!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC|
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCu
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Э
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
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
џџџџџџџџџ[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_115439*$
condR
lstm_1_while_cond_115438*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   з
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCb
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
valueB"џџџџC   
time_distributed/ReshapeReshapelstm_1/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCБ
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOpDtime_distributed_dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0В
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"­
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpCtime_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0Л
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"~
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   Б
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
time_distributed/Reshape_2Reshapelstm_1/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCq
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ї
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
#time_distributed_1/dropout/IdentityIdentity#time_distributed_1/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   И
time_distributed_1/Reshape_1Reshape,time_distributed_1/dropout/Identity:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ћ
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Љ
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"Л
0time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpJtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0М
!time_distributed_2/dense_1/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
1time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0Ч
"time_distributed_2/dense_1/BiasAddBiasAdd+time_distributed_2/dense_1/MatMul:product:09time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
time_distributed_2/dense_1/ReluRelu+time_distributed_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      Й
time_distributed_2/Reshape_1Reshape-time_distributed_2/dense_1/Relu:activations:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџs
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   ­
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Љ
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
%time_distributed_3/dropout_1/IdentityIdentity#time_distributed_3/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      К
time_distributed_3/Reshape_1Reshape.time_distributed_3/dropout_1/Identity:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџs
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Љ
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџЛ
0time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpJtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0М
!time_distributed_4/dense_2/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
1time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0Ч
"time_distributed_4/dense_2/BiasAddBiasAdd+time_distributed_4/dense_2/MatMul:product:09time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџw
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      З
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_2/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџs
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџs
cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           u
 cropping1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            u
 cropping1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Г
cropping1d/strided_sliceStridedSlice%time_distributed_4/Reshape_1:output:0'cropping1d/strided_slice/stack:output:0)cropping1d/strided_slice/stack_1:output:0)cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskt
IdentityIdentity!cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_2/dense_1/BiasAdd/ReadVariableOp1^time_distributed_2/dense_1/MatMul/ReadVariableOp2^time_distributed_4/dense_2/BiasAdd/ReadVariableOp1^time_distributed_4/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2N
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
0time_distributed_4/dense_2/MatMul/ReadVariableOp0time_distributed_4/dense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
О
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113562

inputs

states
states_1B
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CN
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	C=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates

ћ
while_cond_117038
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_117038___redundant_placeholder0.
*while_cond_117038___redundant_placeholder1.
*while_cond_117038___redundant_placeholder2.
*while_cond_117038___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
ћ
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117285

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"`
dropout/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ":S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Л
O
3__inference_time_distributed_3_layer_call_fn_117400

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114056m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

O
3__inference_time_distributed_3_layer_call_fn_117410

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114542d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ћ
while_cond_116005
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116005___redundant_placeholder0.
*while_cond_116005___redundant_placeholder1.
*while_cond_116005___redundant_placeholder2.
*while_cond_116005___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
Є
ч
L__inference_time_distributed_layer_call_and_return_conditional_losses_113888

inputs/
dense_time_distributed_kernel:C")
dense_time_distributed_bias:"
identityЂdense/StatefulPartitionedCall;
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
valueB:б
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
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_time_distributed_kerneldense_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_113846\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape&dense/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџC: : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
ё
№
'__inference_lstm_1_layer_call_fn_116527
inputs_0,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	
identityЂStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_113639|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
"
_user_specified_name
inputs/0
ќ
Р
3__inference_time_distributed_2_layer_call_fn_117321

inputs+
time_distributed_2_kernel:"%
time_distributed_2_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114665s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ": : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs

ћ
while_cond_113422
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_113422___redundant_placeholder0.
*while_cond_113422___redundant_placeholder1.
*while_cond_113422___redundant_placeholder2.
*while_cond_113422___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
н
b
F__inference_cropping1d_layer_call_and_return_conditional_losses_114178

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         њ
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ*

begin_mask*
end_maskt
IdentityIdentitystrided_slice:output:0*
T0*=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ћ
while_cond_116148
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116148___redundant_placeholder0.
*while_cond_116148___redundant_placeholder1.
*while_cond_116148___redundant_placeholder2.
*while_cond_116148___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
е
т
%__inference_lstm_layer_call_fn_115931
inputs_0(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_113489|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0

b
F__inference_cropping1d_layer_call_and_return_conditional_losses_114572

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
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
:џџџџџџџџџ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ћ
while_cond_114944
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_114944___redundant_placeholder0.
*while_cond_114944___redundant_placeholder1.
*while_cond_114944___redundant_placeholder2.
*while_cond_114944___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
Ц
Ѓ
lstm_while_cond_115637
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_strided_slice_13
/lstm_while_cond_115637___redundant_placeholder03
/lstm_while_cond_115637___redundant_placeholder13
/lstm_while_cond_115637___redundant_placeholder23
/lstm_while_cond_115637___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
В
щ
$__inference_signature_wrapper_115207

lstm_input(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	)
time_distributed_kernel:C"#
time_distributed_bias:"+
time_distributed_2_kernel:"%
time_distributed_2_bias:+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_113169s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
lstm_input
Ў3
э
!sequential_lstm_while_body_112890&
"sequential_lstm_while_loop_counter,
(sequential_lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3%
!sequential_lstm_strided_slice_1_0a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5#
sequential_lstm_strided_slice_1_
[tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItem]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"D
sequential_lstm_strided_slice_1!sequential_lstm_strided_slice_1_0"М
[tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor]tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
и
Ў
while_body_113247
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!lstm_cell_lstm_lstm_cell_kernel_0:	>
+lstm_cell_lstm_lstm_cell_recurrent_kernel_0:	C.
lstm_cell_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
lstm_cell_lstm_lstm_cell_kernel:	<
)lstm_cell_lstm_lstm_cell_recurrent_kernel:	C,
lstm_cell_lstm_lstm_cell_bias:	Ђ!lstm_cell/StatefulPartitionedCall
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3!lstm_cell_lstm_lstm_cell_kernel_0+lstm_cell_lstm_lstm_cell_recurrent_kernel_0lstm_cell_lstm_lstm_cell_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113236С
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder*lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвG
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
: {

Identity_4Identity*lstm_cell/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC{

Identity_5Identity*lstm_cell/StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCj
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
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2F
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
ш
Р
!__inference__wrapped_model_113169

lstm_inputX
Esequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	d
Qsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CS
Dsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	`
Msequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	Cl
Ysequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	C[
Lsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	a
Osequential_time_distributed_dense_matmul_readvariableop_time_distributed_kernel:C"\
Nsequential_time_distributed_dense_biasadd_readvariableop_time_distributed_bias:"g
Usequential_time_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:"b
Tsequential_time_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:g
Usequential_time_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:b
Tsequential_time_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂ0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpЂ/sequential/lstm/lstm_cell/MatMul/ReadVariableOpЂ1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpЂsequential/lstm/whileЂ4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpЂ3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpЂ5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpЂsequential/lstm_1/whileЂ8sequential/time_distributed/dense/BiasAdd/ReadVariableOpЂ7sequential/time_distributed/dense/MatMul/ReadVariableOpЂ<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOpЂ;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOpЂ<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOpЂ;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOpO
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
valueB:Ё
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :CЃ
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
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :CЇ
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
 *    Ђ
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCs
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџd
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
valueB:Ћ
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
џџџџџџџџџф
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвo
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
valueB:Й
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskЖ
/sequential/lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOpEsequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0Р
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:07sequential/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџФ
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpQsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0К
"sequential/lstm/lstm_cell/MatMul_1MatMulsequential/lstm/zeros:output:09sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџГ
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/MatMul:product:0,sequential/lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџВ
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpDsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0М
!sequential/lstm/lstm_cell/BiasAddBiasAdd!sequential/lstm/lstm_cell/add:z:08sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџk
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:0*sequential/lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_split
!sequential/lstm/lstm_cell/SigmoidSigmoid(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCЁ
sequential/lstm/lstm_cell/mulMul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
sequential/lstm/lstm_cell/ReluRelu(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC­
sequential/lstm/lstm_cell/mul_1Mul%sequential/lstm/lstm_cell/Sigmoid:y:0,sequential/lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЂ
sequential/lstm/lstm_cell/add_1AddV2!sequential/lstm/lstm_cell/mul:z:0#sequential/lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC
 sequential/lstm/lstm_cell/Relu_1Relu#sequential/lstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCБ
sequential/lstm/lstm_cell/mul_2Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0.sequential/lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџC~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   ш
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвV
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
џџџџџџџџџd
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0Esequential_lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelQsequential_lstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelDsequential_lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!sequential_lstm_while_body_112890*-
cond%R#
!sequential_lstm_while_cond_112889*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   ђ
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџq
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCk
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
valueB:Ћ
sequential/lstm_1/strided_sliceStridedSlice sequential/lstm_1/Shape:output:0.sequential/lstm_1/strided_slice/stack:output:00sequential/lstm_1/strided_slice/stack_1:output:00sequential/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 sequential/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :CЉ
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
 *    Ђ
sequential/lstm_1/zerosFill'sequential/lstm_1/zeros/packed:output:0&sequential/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCd
"sequential/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C­
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
 *    Ј
sequential/lstm_1/zeros_1Fill)sequential/lstm_1/zeros_1/packed:output:0(sequential/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCu
 sequential/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Њ
sequential/lstm_1/transpose	Transposesequential/lstm/transpose_1:y:0)sequential/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCh
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
valueB:Е
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
џџџџџџџџџъ
sequential/lstm_1/TensorArrayV2TensorListReserve6sequential/lstm_1/TensorArrayV2/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Gsequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
9sequential/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_1/transpose:y:0Psequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвq
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
valueB:У
!sequential/lstm_1/strided_slice_2StridedSlicesequential/lstm_1/transpose:y:00sequential/lstm_1/strided_slice_2/stack:output:02sequential/lstm_1/strided_slice_2/stack_1:output:02sequential/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskТ
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpMsequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0Ъ
$sequential/lstm_1/lstm_cell_1/MatMulMatMul*sequential/lstm_1/strided_slice_2:output:0;sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџа
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpYsequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0Ф
&sequential/lstm_1/lstm_cell_1/MatMul_1MatMul sequential/lstm_1/zeros:output:0=sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџП
!sequential/lstm_1/lstm_cell_1/addAddV2.sequential/lstm_1/lstm_cell_1/MatMul:product:00sequential/lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџО
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpLsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0Ш
%sequential/lstm_1/lstm_cell_1/BiasAddBiasAdd%sequential/lstm_1/lstm_cell_1/add:z:0<sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџo
-sequential/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#sequential/lstm_1/lstm_cell_1/splitSplit6sequential/lstm_1/lstm_cell_1/split/split_dim:output:0.sequential/lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_split
%sequential/lstm_1/lstm_cell_1/SigmoidSigmoid,sequential/lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
'sequential/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCЋ
!sequential/lstm_1/lstm_cell_1/mulMul+sequential/lstm_1/lstm_cell_1/Sigmoid_1:y:0"sequential/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
"sequential/lstm_1/lstm_cell_1/ReluRelu,sequential/lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџCЙ
#sequential/lstm_1/lstm_cell_1/mul_1Mul)sequential/lstm_1/lstm_cell_1/Sigmoid:y:00sequential/lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЎ
#sequential/lstm_1/lstm_cell_1/add_1AddV2%sequential/lstm_1/lstm_cell_1/mul:z:0'sequential/lstm_1/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
'sequential/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC
$sequential/lstm_1/lstm_cell_1/Relu_1Relu'sequential/lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCН
#sequential/lstm_1/lstm_cell_1/mul_2Mul+sequential/lstm_1/lstm_cell_1/Sigmoid_2:y:02sequential/lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџC
/sequential/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   ю
!sequential/lstm_1/TensorArrayV2_1TensorListReserve8sequential/lstm_1/TensorArrayV2_1/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвX
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
џџџџџџџџџf
$sequential/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
sequential/lstm_1/whileWhile-sequential/lstm_1/while/loop_counter:output:03sequential/lstm_1/while/maximum_iterations:output:0sequential/lstm_1/time:output:0*sequential/lstm_1/TensorArrayV2_1:handle:0 sequential/lstm_1/zeros:output:0"sequential/lstm_1/zeros_1:output:0*sequential/lstm_1/strided_slice_1:output:0Isequential/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_lstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelYsequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelLsequential_lstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#sequential_lstm_1_while_body_113029*/
cond'R%
#sequential_lstm_1_while_cond_113028*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
Bsequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   ј
4sequential/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_1/while:output:3Ksequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0z
'sequential/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџs
)sequential/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
!sequential/lstm_1/strided_slice_3StridedSlice=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_1/strided_slice_3/stack:output:02sequential/lstm_1/strided_slice_3/stack_1:output:02sequential/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskw
"sequential/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ь
sequential/lstm_1/transpose_1	Transpose=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCm
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
valueB"џџџџC   З
#sequential/time_distributed/ReshapeReshape!sequential/lstm_1/transpose_1:y:02sequential/time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCЧ
7sequential/time_distributed/dense/MatMul/ReadVariableOpReadVariableOpOsequential_time_distributed_dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0г
(sequential/time_distributed/dense/MatMulMatMul,sequential/time_distributed/Reshape:output:0?sequential/time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"У
8sequential/time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpNsequential_time_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0м
)sequential/time_distributed/dense/BiasAddBiasAdd2sequential/time_distributed/dense/MatMul:product:0@sequential/time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
&sequential/time_distributed/dense/ReluRelu2sequential/time_distributed/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
+sequential/time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   в
%sequential/time_distributed/Reshape_1Reshape4sequential/time_distributed/dense/Relu:activations:04sequential/time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"|
+sequential/time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Л
%sequential/time_distributed/Reshape_2Reshape!sequential/lstm_1/transpose_1:y:04sequential/time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC|
+sequential/time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ш
%sequential/time_distributed_1/ReshapeReshape.sequential/time_distributed/Reshape_1:output:04sequential/time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
.sequential/time_distributed_1/dropout/IdentityIdentity.sequential/time_distributed_1/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
-sequential/time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   й
'sequential/time_distributed_1/Reshape_1Reshape7sequential/time_distributed_1/dropout/Identity:output:06sequential/time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"~
-sequential/time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ь
'sequential/time_distributed_1/Reshape_2Reshape.sequential/time_distributed/Reshape_1:output:06sequential/time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"|
+sequential/time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ъ
%sequential/time_distributed_2/ReshapeReshape0sequential/time_distributed_1/Reshape_1:output:04sequential/time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"б
;sequential/time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0н
,sequential/time_distributed_2/dense_1/MatMulMatMul.sequential/time_distributed_2/Reshape:output:0Csequential/time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
<sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0ш
-sequential/time_distributed_2/dense_1/BiasAddBiasAdd6sequential/time_distributed_2/dense_1/MatMul:product:0Dsequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
*sequential/time_distributed_2/dense_1/ReluRelu6sequential/time_distributed_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
-sequential/time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      к
'sequential/time_distributed_2/Reshape_1Reshape8sequential/time_distributed_2/dense_1/Relu:activations:06sequential/time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
-sequential/time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ю
'sequential/time_distributed_2/Reshape_2Reshape0sequential/time_distributed_1/Reshape_1:output:06sequential/time_distributed_2/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"|
+sequential/time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ъ
%sequential/time_distributed_3/ReshapeReshape0sequential/time_distributed_2/Reshape_1:output:04sequential/time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
0sequential/time_distributed_3/dropout_1/IdentityIdentity.sequential/time_distributed_3/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
-sequential/time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      л
'sequential/time_distributed_3/Reshape_1Reshape9sequential/time_distributed_3/dropout_1/Identity:output:06sequential/time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
-sequential/time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
'sequential/time_distributed_3/Reshape_2Reshape0sequential/time_distributed_2/Reshape_1:output:06sequential/time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ|
+sequential/time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ъ
%sequential/time_distributed_4/ReshapeReshape0sequential/time_distributed_3/Reshape_1:output:04sequential/time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџб
;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpUsequential_time_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0н
,sequential/time_distributed_4/dense_2/MatMulMatMul.sequential/time_distributed_4/Reshape:output:0Csequential/time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
<sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpTsequential_time_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0ш
-sequential/time_distributed_4/dense_2/BiasAddBiasAdd6sequential/time_distributed_4/dense_2/MatMul:product:0Dsequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
-sequential/time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      и
'sequential/time_distributed_4/Reshape_1Reshape6sequential/time_distributed_4/dense_2/BiasAdd:output:06sequential/time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ~
-sequential/time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ю
'sequential/time_distributed_4/Reshape_2Reshape0sequential/time_distributed_3/Reshape_1:output:06sequential/time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ~
)sequential/cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
+sequential/cropping1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            
+sequential/cropping1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ъ
#sequential/cropping1d/strided_sliceStridedSlice0sequential/time_distributed_4/Reshape_1:output:02sequential/cropping1d/strided_slice/stack:output:04sequential/cropping1d/strided_slice/stack_1:output:04sequential/cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask
IdentityIdentity,sequential/cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџЅ
NoOpNoOp1^sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0^sequential/lstm/lstm_cell/MatMul/ReadVariableOp2^sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp^sequential/lstm/while5^sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4^sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp6^sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^sequential/lstm_1/while9^sequential/time_distributed/dense/BiasAdd/ReadVariableOp8^sequential/time_distributed/dense/MatMul/ReadVariableOp=^sequential/time_distributed_2/dense_1/BiasAdd/ReadVariableOp<^sequential/time_distributed_2/dense_1/MatMul/ReadVariableOp=^sequential/time_distributed_4/dense_2/BiasAdd/ReadVariableOp<^sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2d
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
;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp;sequential/time_distributed_4/dense_2/MatMul/ReadVariableOp:W S
+
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
lstm_input

ћ
while_cond_114785
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_114785___redundant_placeholder0.
*while_cond_114785___redundant_placeholder1.
*while_cond_114785___redundant_placeholder2.
*while_cond_114785___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
ЌK
б
B__inference_lstm_1_layer_call_and_return_conditional_losses_116837
inputs_0N
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identityЂ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЌ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCu
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116753*
condR
while_cond_116752*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCН
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџC: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
"
_user_specified_name
inputs/0
бI
Е
@__inference_lstm_layer_call_and_return_conditional_losses_116519

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116435*
condR
while_cond_116434*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCЗ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ц
Ѓ
lstm_while_cond_115299
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_strided_slice_13
/lstm_while_cond_115299___redundant_placeholder03
/lstm_while_cond_115299___redundant_placeholder13
/lstm_while_cond_115299___redundant_placeholder23
/lstm_while_cond_115299___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:

ћ
while_cond_116434
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116434___redundant_placeholder0.
*while_cond_116434___redundant_placeholder1.
*while_cond_116434___redundant_placeholder2.
*while_cond_116434___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
е
т
%__inference_lstm_layer_call_fn_115923
inputs_0(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_113313|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
Ф
ѓ
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_113992

inputs3
!dense_1_time_distributed_2_kernel:"-
dense_1_time_distributed_2_bias:
identityЂdense_1/StatefulPartitionedCall;
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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_1_time_distributed_2_kerneldense_1_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_113983\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ": : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
и
Ў
while_body_113423
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_04
!lstm_cell_lstm_lstm_cell_kernel_0:	>
+lstm_cell_lstm_lstm_cell_recurrent_kernel_0:	C.
lstm_cell_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor2
lstm_cell_lstm_lstm_cell_kernel:	<
)lstm_cell_lstm_lstm_cell_recurrent_kernel:	C,
lstm_cell_lstm_lstm_cell_bias:	Ђ!lstm_cell/StatefulPartitionedCall
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Џ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3!lstm_cell_lstm_lstm_cell_kernel_0+lstm_cell_lstm_lstm_cell_recurrent_kernel_0lstm_cell_lstm_lstm_cell_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113370С
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder*lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвG
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
: {

Identity_4Identity*lstm_cell/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC{

Identity_5Identity*lstm_cell/StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCj
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
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2F
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
 
Р
3__inference_time_distributed_2_layer_call_fn_117300

inputs+
time_distributed_2_kernel:"%
time_distributed_2_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_113992|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ": : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
Ћ
р
%__inference_lstm_layer_call_fn_115939

inputs(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_114330s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю1
§
while_body_116435
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 

В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_117647

inputs
states_0
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	J
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	C9
*biasadd_readvariableop_lstm_lstm_cell_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1
5
Ѕ	
#sequential_lstm_1_while_body_113029(
$sequential_lstm_1_while_loop_counter.
*sequential_lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3'
#sequential_lstm_1_strided_slice_1_0c
_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5%
!sequential_lstm_1_strided_slice_1a
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC    
#TensorArrayV2Read/TensorListGetItemTensorListGetItem_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"H
!sequential_lstm_1_strided_slice_1#sequential_lstm_1_strided_slice_1_0"Р
]tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Ю1
§
while_body_116149
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Л
O
3__inference_time_distributed_1_layer_call_fn_117230

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_113919m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ""
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ":\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
№
К
1__inference_time_distributed_layer_call_fn_117144

inputs)
time_distributed_kernel:C"#
time_distributed_bias:"
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_114496s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ"`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџC: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
Ћ
Р
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_117771

inputs
states_0
states_1B
/matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CN
;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	C=
.biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp;matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1

ћ
while_cond_113748
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_113748___redundant_placeholder0.
*while_cond_113748___redundant_placeholder1.
*while_cond_113748___redundant_placeholder2.
*while_cond_113748___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:

j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_113919

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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"Р
dropout/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_113912\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape dropout/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ""
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ":\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
ѕ3
и
lstm_1_while_body_115777
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_1_strided_slice_1_0X
Ttensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_1_strided_slice_1V
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"Њ
Rtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorTtensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
­
П
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114665

inputsI
7dense_1_matmul_readvariableop_time_distributed_2_kernel:"D
6dense_1_biasadd_readvariableop_time_distributed_2_bias:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ": : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ф
ѓ
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114025

inputs3
!dense_1_time_distributed_2_kernel:"-
dense_1_time_distributed_2_bias:
identityЂdense_1/StatefulPartitionedCall;
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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_1_time_distributed_2_kerneldense_1_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_113983\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape(dense_1/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
NoOpNoOp ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ": : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
Ў
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_117841

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В


C__inference_dense_1_layer_call_and_return_conditional_losses_117826

inputsA
/matmul_readvariableop_time_distributed_2_kernel:"<
.biasadd_readvariableop_time_distributed_2_bias:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ": : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ш
П
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117547

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ж
Е
(__inference_dense_2_layer_call_fn_117852

inputs+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_114119o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

b
F__inference_cropping1d_layer_call_and_return_conditional_losses_117587

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           j
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
:џџџџџџџџџ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
F
*__inference_dropout_1_layer_call_fn_117836

inputs
identityА
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_114071`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
юJ
Я
B__inference_lstm_1_layer_call_and_return_conditional_losses_114870

inputsN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identityЂ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЌ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCu
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114786*
condR
while_cond_114785*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCН
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџC: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs

j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117463

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
юJ
Я
B__inference_lstm_1_layer_call_and_return_conditional_losses_117123

inputsN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identityЂ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЌ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCu
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_117039*
condR
while_cond_117038*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCН
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџC: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
Щ
_
C__inference_dropout_layer_call_and_return_conditional_losses_117808

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ":O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs

j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114638

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
 
Р
3__inference_time_distributed_4_layer_call_fn_117470

inputs+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114128|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ч
ю
'__inference_lstm_1_layer_call_fn_116543

inputs,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	
identityЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_114477s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
I
є
__inference__traced_save_117978
file_prefix4
0savev2_training_adagrad_iter_read_readvariableop	5
1savev2_training_adagrad_decay_read_readvariableop=
9savev2_training_adagrad_learning_rate_read_readvariableop4
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
2savev2_time_distributed_4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopQ
Msavev2_training_adagrad_lstm_lstm_cell_kernel_accumulator_read_readvariableop[
Wsavev2_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulator_read_readvariableopO
Ksavev2_training_adagrad_lstm_lstm_cell_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulator_read_readvariableop_
[savev2_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_lstm_1_lstm_cell_1_bias_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_kernel_accumulator_read_readvariableopQ
Msavev2_training_adagrad_time_distributed_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_time_distributed_2_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_2_bias_accumulator_read_readvariableopU
Qsavev2_training_adagrad_time_distributed_4_kernel_accumulator_read_readvariableopS
Osavev2_training_adagrad_time_distributed_4_bias_accumulator_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: љ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ђ
valueB B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/8/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/9/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/10/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBMvariables/11/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH­
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B л
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_training_adagrad_iter_read_readvariableop1savev2_training_adagrad_decay_read_readvariableop9savev2_training_adagrad_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop2savev2_time_distributed_kernel_read_readvariableop0savev2_time_distributed_bias_read_readvariableop4savev2_time_distributed_2_kernel_read_readvariableop2savev2_time_distributed_2_bias_read_readvariableop4savev2_time_distributed_4_kernel_read_readvariableop2savev2_time_distributed_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopMsavev2_training_adagrad_lstm_lstm_cell_kernel_accumulator_read_readvariableopWsavev2_training_adagrad_lstm_lstm_cell_recurrent_kernel_accumulator_read_readvariableopKsavev2_training_adagrad_lstm_lstm_cell_bias_accumulator_read_readvariableopQsavev2_training_adagrad_lstm_1_lstm_cell_1_kernel_accumulator_read_readvariableop[savev2_training_adagrad_lstm_1_lstm_cell_1_recurrent_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_lstm_1_lstm_cell_1_bias_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_kernel_accumulator_read_readvariableopMsavev2_training_adagrad_time_distributed_bias_accumulator_read_readvariableopQsavev2_training_adagrad_time_distributed_2_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_2_bias_accumulator_read_readvariableopQsavev2_training_adagrad_time_distributed_4_kernel_accumulator_read_readvariableopOsavev2_training_adagrad_time_distributed_4_bias_accumulator_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*ћ
_input_shapesщ
ц: : : : :	:	C::	C:	C::C":":":::: : : : :	:	C::	C:	C::C":":":::: 2(
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
:	:%!

_output_shapes
:	C:!

_output_shapes	
::%!

_output_shapes
:	C:%!

_output_shapes
:	C:!	

_output_shapes	
::$
 

_output_shapes

:C": 

_output_shapes
:":$ 

_output_shapes

:": 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:%!

_output_shapes
:	C:!

_output_shapes	
::%!

_output_shapes
:	C:%!

_output_shapes
:	C:!

_output_shapes	
::$ 

_output_shapes

:C": 

_output_shapes
:":$ 

_output_shapes

:": 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
: 

А
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113236

inputs

states
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	J
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	C9
*biasadd_readvariableop_lstm_lstm_cell_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates:OK
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_namestates

O
3__inference_time_distributed_1_layer_call_fn_117240

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114510d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ":S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ш
П
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114618

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      ~
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114685

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ":S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ў
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_114049

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ќ
a
C__inference_dropout_layer_call_and_return_conditional_losses_117804

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ""!

identity_1Identity_1:output:0*&
_input_shapes
:џџџџџџџџџ":O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ъ
Џ
&__inference_dense_layer_call_fn_117778

inputs)
time_distributed_kernel:C"#
time_distributed_bias:"
identityЂStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_113846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ"`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџC: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs

Ё
*__inference_lstm_cell_layer_call_fn_117601

inputs
states_0
states_1(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	
identity

identity_1

identity_2ЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113236o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџC:џџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1

К
1__inference_time_distributed_layer_call_fn_117137

inputs)
time_distributed_kernel:C"#
time_distributed_bias:"
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_113888|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџC: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
ж
Е
(__inference_dense_1_layer_call_fn_117815

inputs+
time_distributed_2_kernel:"%
time_distributed_2_bias:
identityЂStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_113983o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ": : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
ё
D
(__inference_dropout_layer_call_fn_117799

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_113934`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ":O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
з8
Ћ
@__inference_lstm_layer_call_and_return_conditional_losses_113313

inputs2
lstm_cell_lstm_lstm_cell_kernel:	<
)lstm_cell_lstm_lstm_cell_recurrent_kernel:	C,
lstm_cell_lstm_lstm_cell_bias:	
identityЂ!lstm_cell/StatefulPartitionedCallЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113236n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : у
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113247*
condR
while_cond_113246*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
з8
Ћ
@__inference_lstm_layer_call_and_return_conditional_losses_113489

inputs2
lstm_cell_lstm_lstm_cell_kernel:	<
)lstm_cell_lstm_lstm_cell_recurrent_kernel:	C,
lstm_cell_lstm_lstm_cell_bias:	
identityЂ!lstm_cell/StatefulPartitionedCallЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_113370n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : у
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_lstm_lstm_cell_kernel)lstm_cell_lstm_lstm_cell_recurrent_kernellstm_cell_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113423*
condR
while_cond_113422*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCr
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

ћ
while_cond_116752
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116752___redundant_placeholder0.
*while_cond_116752___redundant_placeholder1.
*while_cond_116752___redundant_placeholder2.
*while_cond_116752___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
ѕ
Б
L__inference_time_distributed_layer_call_and_return_conditional_losses_114712

inputsE
3dense_matmul_readvariableop_time_distributed_kernel:C"@
2dense_biasadd_readvariableop_time_distributed_bias:"
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   ~
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ"
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџC: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs

j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117455

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

ћ
while_cond_114245
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_114245___redundant_placeholder0.
*while_cond_114245___redundant_placeholder1.
*while_cond_114245___redundant_placeholder2.
*while_cond_114245___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:

ћ
while_cond_113572
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_113572___redundant_placeholder0.
*while_cond_113572___redundant_placeholder1.
*while_cond_113572___redundant_placeholder2.
*while_cond_113572___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
в
ь
+__inference_sequential_layer_call_fn_115241

inputs(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	)
time_distributed_kernel:C"#
time_distributed_bias:"+
time_distributed_2_kernel:"%
time_distributed_2_bias:+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_115088s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
іш
У
F__inference_sequential_layer_call_and_return_conditional_losses_115915

inputsM
:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	Y
Flstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CH
9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	U
Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	Ca
Nlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CP
Alstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	V
Dtime_distributed_dense_matmul_readvariableop_time_distributed_kernel:C"Q
Ctime_distributed_dense_biasadd_readvariableop_time_distributed_bias:"\
Jtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel:"W
Itime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias:\
Jtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel:W
Itime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂ%lstm/lstm_cell/BiasAdd/ReadVariableOpЂ$lstm/lstm_cell/MatMul/ReadVariableOpЂ&lstm/lstm_cell/MatMul_1/ReadVariableOpЂ
lstm/whileЂ)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpЂ(lstm_1/lstm_cell_1/MatMul/ReadVariableOpЂ*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpЂlstm_1/whileЂ-time_distributed/dense/BiasAdd/ReadVariableOpЂ,time_distributed/dense/MatMul/ReadVariableOpЂ1time_distributed_2/dense_1/BiasAdd/ReadVariableOpЂ0time_distributed_2/dense_1/MatMul/ReadVariableOpЂ1time_distributed_4/dense_2/BiasAdd/ReadVariableOpЂ0time_distributed_4/dense_2/MatMul/ReadVariableOp@

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
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCW
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџN
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
valueB:є
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
џџџџџџџџџУ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
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
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :у
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCt
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCl
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCt
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCi
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCs
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ч
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвK
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
џџџџџџџџџY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0:lstm_lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelFlstm_lstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel9lstm_lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_115638*"
condR
lstm_while_cond_115637*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   б
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѕ
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC`
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
valueB:є
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCY
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :C
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
 *    
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCR
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
valueB:ў
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
џџџџџџџџџЩ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   ѕ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвf
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
valueB:
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskЌ
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpBlstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0Љ
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџК
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0Ѓ
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџЈ
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0Ї
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :я
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitz
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџC|
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCt
lstm_1/lstm_cell_1/ReluRelu!lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC|
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCu
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Э
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвM
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
џџџџџџџџџ[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Blstm_1_lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelNlstm_1_lstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelAlstm_1_lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_115777*$
condR
lstm_1_while_cond_115776*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   з
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџh
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ћ
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCb
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
valueB"џџџџC   
time_distributed/ReshapeReshapelstm_1/transpose_1:y:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCБ
,time_distributed/dense/MatMul/ReadVariableOpReadVariableOpDtime_distributed_dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0В
time_distributed/dense/MatMulMatMul!time_distributed/Reshape:output:04time_distributed/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"­
-time_distributed/dense/BiasAdd/ReadVariableOpReadVariableOpCtime_distributed_dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0Л
time_distributed/dense/BiasAddBiasAdd'time_distributed/dense/MatMul:product:05time_distributed/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"~
time_distributed/dense/ReluRelu'time_distributed/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"u
 time_distributed/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   Б
time_distributed/Reshape_1Reshape)time_distributed/dense/Relu:activations:0)time_distributed/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"q
 time_distributed/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
time_distributed/Reshape_2Reshapelstm_1/transpose_1:y:0)time_distributed/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCq
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ї
time_distributed_1/ReshapeReshape#time_distributed/Reshape_1:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"w
"time_distributed_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   Џ
time_distributed_1/Reshape_1Reshape#time_distributed_1/Reshape:output:0+time_distributed_1/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"s
"time_distributed_1/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Ћ
time_distributed_1/Reshape_2Reshape#time_distributed/Reshape_1:output:0+time_distributed_1/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Љ
time_distributed_2/ReshapeReshape%time_distributed_1/Reshape_1:output:0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"Л
0time_distributed_2/dense_1/MatMul/ReadVariableOpReadVariableOpJtime_distributed_2_dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0М
!time_distributed_2/dense_1/MatMulMatMul#time_distributed_2/Reshape:output:08time_distributed_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
1time_distributed_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_2_dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0Ч
"time_distributed_2/dense_1/BiasAddBiasAdd+time_distributed_2/dense_1/MatMul:product:09time_distributed_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
time_distributed_2/dense_1/ReluRelu+time_distributed_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
"time_distributed_2/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      Й
time_distributed_2/Reshape_1Reshape-time_distributed_2/dense_1/Relu:activations:0+time_distributed_2/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџs
"time_distributed_2/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   ­
time_distributed_2/Reshape_2Reshape%time_distributed_1/Reshape_1:output:0+time_distributed_2/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Љ
time_distributed_3/ReshapeReshape%time_distributed_2/Reshape_1:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџw
"time_distributed_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      Џ
time_distributed_3/Reshape_1Reshape#time_distributed_3/Reshape:output:0+time_distributed_3/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџs
"time_distributed_3/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
time_distributed_3/Reshape_2Reshape%time_distributed_2/Reshape_1:output:0+time_distributed_3/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџq
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Љ
time_distributed_4/ReshapeReshape%time_distributed_3/Reshape_1:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџЛ
0time_distributed_4/dense_2/MatMul/ReadVariableOpReadVariableOpJtime_distributed_4_dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0М
!time_distributed_4/dense_2/MatMulMatMul#time_distributed_4/Reshape:output:08time_distributed_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЗ
1time_distributed_4/dense_2/BiasAdd/ReadVariableOpReadVariableOpItime_distributed_4_dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0Ч
"time_distributed_4/dense_2/BiasAddBiasAdd+time_distributed_4/dense_2/MatMul:product:09time_distributed_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџw
"time_distributed_4/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      З
time_distributed_4/Reshape_1Reshape+time_distributed_4/dense_2/BiasAdd:output:0+time_distributed_4/Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџs
"time_distributed_4/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ­
time_distributed_4/Reshape_2Reshape%time_distributed_3/Reshape_1:output:0+time_distributed_4/Reshape_2/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџs
cropping1d/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"           u
 cropping1d/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            u
 cropping1d/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Г
cropping1d/strided_sliceStridedSlice%time_distributed_4/Reshape_1:output:0'cropping1d/strided_slice/stack:output:0)cropping1d/strided_slice/stack_1:output:0)cropping1d/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskt
IdentityIdentity!cropping1d/strided_slice:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while.^time_distributed/dense/BiasAdd/ReadVariableOp-^time_distributed/dense/MatMul/ReadVariableOp2^time_distributed_2/dense_1/BiasAdd/ReadVariableOp1^time_distributed_2/dense_1/MatMul/ReadVariableOp2^time_distributed_4/dense_2/BiasAdd/ReadVariableOp1^time_distributed_4/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2N
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
0time_distributed_4/dense_2/MatMul/ReadVariableOp0time_distributed_4/dense_2/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
2
 
lstm_while_body_115300
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_strided_slice_1_0V
Rtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_strided_slice_1T
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0".
lstm_strided_slice_1lstm_strided_slice_1_0"І
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Щ
_
C__inference_dropout_layer_call_and_return_conditional_losses_113934

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ":O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
бI
Е
@__inference_lstm_layer_call_and_return_conditional_losses_116376

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116292*
condR
while_cond_116291*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCЗ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
э5
Ф
F__inference_sequential_layer_call_and_return_conditional_losses_115088

inputs-
lstm_lstm_lstm_cell_kernel:	7
$lstm_lstm_lstm_cell_recurrent_kernel:	C'
lstm_lstm_lstm_cell_bias:	3
 lstm_1_lstm_1_lstm_cell_1_kernel:	C=
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:	C-
lstm_1_lstm_1_lstm_cell_1_bias:	:
(time_distributed_time_distributed_kernel:C"4
&time_distributed_time_distributed_bias:">
,time_distributed_2_time_distributed_2_kernel:"8
*time_distributed_2_time_distributed_2_bias:>
,time_distributed_4_time_distributed_4_kernel:8
*time_distributed_4_time_distributed_4_bias:
identityЂlstm/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂ(time_distributed/StatefulPartitionedCallЂ*time_distributed_2/StatefulPartitionedCallЂ*time_distributed_4/StatefulPartitionedCallЈ
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_115029н
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_114870е
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_114712o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ї
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCћ
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114685q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Е
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"х
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114665q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Џ
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"§
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114638q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   З
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџх
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114618q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Џ
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџэ
cropping1d/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_cropping1d_layer_call_and_return_conditional_losses_114572v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
бI
Е
@__inference_lstm_layer_call_and_return_conditional_losses_114330

inputsH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЄ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernelAlstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114246*
condR
while_cond_114245*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCЗ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о	

C__inference_dense_2_layer_call_and_return_conditional_losses_114119

inputsA
/matmul_readvariableop_time_distributed_4_kernel:<
.biasadd_readvariableop_time_distributed_4_bias:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

В
E__inference_lstm_cell_layer_call_and_return_conditional_losses_117679

inputs
states_0
states_1>
+matmul_readvariableop_lstm_lstm_cell_kernel:	J
7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	C9
*biasadd_readvariableop_lstm_lstm_cell_bias:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp+matmul_readvariableop_lstm_lstm_cell_kernel*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
MatMul_1/ReadVariableOpReadVariableOp7matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel*
_output_shapes
:	C*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ~
BiasAdd/ReadVariableOpReadVariableOp*biasadd_readvariableop_lstm_lstm_cell_bias*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:џџџџџџџџџCU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:џџџџџџџџџCN
ReluRelusplit:output:2*
T0*'
_output_shapes
:џџџџџџџџџC_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:џџџџџџџџџCK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџ:џџџџџџџџџC:џџџџџџџџџC: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1
Ю1
§
while_body_116292
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 

ћ
while_cond_116291
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116291___redundant_placeholder0.
*while_cond_116291___redundant_placeholder1.
*while_cond_116291___redundant_placeholder2.
*while_cond_116291___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:

ћ
while_cond_114392
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_114392___redundant_placeholder0.
*while_cond_114392___redundant_placeholder1.
*while_cond_114392___redundant_placeholder2.
*while_cond_114392___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
3
Ї
while_body_114786
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 

П
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117533

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp;
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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
р
%__inference_lstm_layer_call_fn_115947

inputs(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_115029s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ќ
Р
3__inference_time_distributed_4_layer_call_fn_117484

inputs+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114559s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю1
§
while_body_114246
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
Л

#sequential_lstm_1_while_cond_113028(
$sequential_lstm_1_while_loop_counter.
*sequential_lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3*
&less_sequential_lstm_1_strided_slice_1@
<sequential_lstm_1_while_cond_113028___redundant_placeholder0@
<sequential_lstm_1_while_cond_113028___redundant_placeholder1@
<sequential_lstm_1_while_cond_113028___redundant_placeholder2@
<sequential_lstm_1_while_cond_113028___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
2
 
lstm_while_body_115638
lstm_while_loop_counter!
lstm_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
lstm_strided_slice_1_0V
Rtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
lstm_strided_slice_1T
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0".
lstm_strided_slice_1lstm_strided_slice_1_0"І
Ptensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorRtensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
и
Г
lstm_1_while_cond_115438
lstm_1_while_loop_counter#
lstm_1_while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_lstm_1_strided_slice_15
1lstm_1_while_cond_115438___redundant_placeholder05
1lstm_1_while_cond_115438___redundant_placeholder15
1lstm_1_while_cond_115438___redundant_placeholder25
1lstm_1_while_cond_115438___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
Г
Џ
,__inference_lstm_cell_1_layer_call_fn_117693

inputs
states_0
states_1,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	
identity

identity_1

identity_2ЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113562o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*R
_input_shapesA
?:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/0:QM
'
_output_shapes
:џџџџџџџџџC
"
_user_specified_name
states/1
ЌK
б
B__inference_lstm_1_layer_call_and_return_conditional_losses_116694
inputs_0N
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identityЂ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOpЂwhile=
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЌ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCu
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116610*
condR
while_cond_116609*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCН
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџC: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
"
_user_specified_name
inputs/0
Ф 
д
while_body_113749
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
'lstm_cell_1_lstm_1_lstm_cell_1_kernel_0:	CD
1lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0:	C4
%lstm_cell_1_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:	CB
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:	C2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	Ђ#lstm_cell_1/StatefulPartitionedCall
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0Х
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall*TensorArrayV2Read/TensorListGetItem:item:0placeholder_2placeholder_3'lstm_cell_1_lstm_1_lstm_cell_1_kernel_01lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel_0%lstm_cell_1_lstm_1_lstm_cell_1_bias_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113696У
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholder,lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвG
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
: }

Identity_4Identity,lstm_cell_1/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџC}

Identity_5Identity,lstm_cell_1/StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCl
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
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2J
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
­
П
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114528

inputsI
7dense_1_matmul_readvariableop_time_distributed_2_kernel:"D
6dense_1_biasadd_readvariableop_time_distributed_2_bias:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ": : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
3
Ї
while_body_117039
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 

ћ
while_cond_113246
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_113246___redundant_placeholder0.
*while_cond_113246___redundant_placeholder1.
*while_cond_113246___redundant_placeholder2.
*while_cond_113246___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:

O
3__inference_time_distributed_1_layer_call_fn_117245

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114685d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ":S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ы
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117276

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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ""
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ":\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
Ю1
§
while_body_114945
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
ќ
Р
3__inference_time_distributed_2_layer_call_fn_117314

inputs+
time_distributed_2_kernel:"%
time_distributed_2_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114528s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ": : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs

ћ
while_cond_116609
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
less_strided_slice_1.
*while_cond_116609___redundant_placeholder0.
*while_cond_116609___redundant_placeholder1.
*while_cond_116609___redundant_placeholder2.
*while_cond_116609___redundant_placeholder3
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
identityIdentity:output:0*S
_input_shapesB
@: : : : :џџџџџџџџџC:џџџџџџџџџC: ::::: 
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
:
Л
j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117431

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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
юJ
Я
B__inference_lstm_1_layer_call_and_return_conditional_losses_116980

inputsN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	
identityЂ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOpЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЌ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCu
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : К
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernelGlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_116896*
condR
while_cond_116895*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџCН
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*0
_input_shapes
:џџџџџџџџџC: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
Б
Б
L__inference_time_distributed_layer_call_and_return_conditional_losses_117173

inputsE
3dense_matmul_readvariableop_time_distributed_kernel:C"@
2dense_biasadd_readvariableop_time_distributed_bias:"
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOp;
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
valueB:б
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
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"n
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџC: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
Ф
ѓ
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114161

inputs3
!dense_2_time_distributed_4_kernel:-
dense_2_time_distributed_4_bias:
identityЂdense_2/StatefulPartitionedCall;
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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0!dense_2_time_distributed_4_kerneldense_2_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_114119\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape(dense_2/StatefulPartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
NoOpNoOp ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ: : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117293

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   v
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ""
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ":S O
+
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
Ю1
§
while_body_116006
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0:	V
Clstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0:	CE
6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel:	T
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel:	CC
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias:	Ђ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
lstm_cell/MatMul/ReadVariableOpReadVariableOp7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0*
_output_shapes
:	*
dtype0Ђ
lstm_cell/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџІ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOpClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell/MatMul_1MatMulplaceholder_2)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :д
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCb
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџC_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЊ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: d

Identity_4Identitylstm_cell/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCd

Identity_5Identitylstm_cell/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЏ
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
4lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias6lstm_cell_biasadd_readvariableop_lstm_lstm_cell_bias_0"
Alstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernelClstm_cell_matmul_1_readvariableop_lstm_lstm_cell_recurrent_kernel_0"p
5lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel7lstm_cell_matmul_readvariableop_lstm_lstm_cell_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2D
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
3
Ї
while_body_116896
while_loop_counter
while_maximum_iterations
placeholder
placeholder_1
placeholder_2
placeholder_3
strided_slice_1_0Q
Mtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0:	C\
Ilstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0:	CK
<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0:	
identity

identity_1

identity_2

identity_3

identity_4

identity_5
strided_slice_1O
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorN
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel:	CZ
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel:	CI
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias:	Ђ"lstm_cell_1/BiasAdd/ReadVariableOpЂ!lstm_cell_1/MatMul/ReadVariableOpЂ#lstm_cell_1/MatMul_1/ReadVariableOp
1TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   
#TensorArrayV2Read/TensorListGetItemTensorListGetItemMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0placeholder:TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџC*
element_dtype0 
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0*
_output_shapes
:	C*
dtype0І
lstm_cell_1/MatMulMatMul*TensorArrayV2Read/TensorListGetItem:item:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџЎ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0*
_output_shapes
:	C*
dtype0
lstm_cell_1/MatMul_1MatMulplaceholder_2+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :к
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:џџџџџџџџџCr
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0placeholder_3*
T0*'
_output_shapes
:џџџџџџџџџCf
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCx
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџCn
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:џџџџџџџџџCc
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:џџџџџџџџџC
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:џџџџџџџџџCЌ
$TensorArrayV2Write/TensorListSetItemTensorListSetItemplaceholder_1placeholderlstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвG
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
: f

Identity_4Identitylstm_cell_1/mul_2:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCf

Identity_5Identitylstm_cell_1/add_1:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџCЕ
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
:lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias<lstm_cell_1_biasadd_readvariableop_lstm_1_lstm_cell_1_bias_0"
Glstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernelIlstm_cell_1_matmul_1_readvariableop_lstm_1_lstm_cell_1_recurrent_kernel_0"|
;lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel=lstm_cell_1_matmul_readvariableop_lstm_1_lstm_cell_1_kernel_0"$
strided_slice_1strided_slice_1_0"
Ktensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorMtensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*K
_input_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : 2H
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
: :-)
'
_output_shapes
:џџџџџџџџџC:-)
'
_output_shapes
:џџџџџџџџџC:

_output_shapes
: :

_output_shapes
: 
 
Р
3__inference_time_distributed_2_layer_call_fn_117307

inputs+
time_distributed_2_kernel:"%
time_distributed_2_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_2_kerneltime_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114025|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ": : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs

j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114542

inputs
identity^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџb
dropout_1/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџd
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ      
	Reshape_1Reshapedropout_1/Identity:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ^
IdentityIdentityReshape_1:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
9
С
B__inference_lstm_1_layer_call_and_return_conditional_losses_113639

inputs8
%lstm_cell_1_lstm_1_lstm_cell_1_kernel:	CB
/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel:	C2
#lstm_cell_1_lstm_1_lstm_cell_1_bias:	
identityЂ#lstm_cell_1/StatefulPartitionedCallЂwhile;
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
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cs
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Cw
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
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџCc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCD
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
:џџџџџџџџџC*
shrink_axis_maskБ
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџC:џџџџџџџџџC:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_113562n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ѕ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0%lstm_cell_1_lstm_1_lstm_cell_1_kernel/lstm_cell_1_lstm_1_lstm_cell_1_recurrent_kernel#lstm_cell_1_lstm_1_lstm_cell_1_bias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113573*
condR
while_cond_113572*K
output_shapes:
8: : : : :џџџџџџџџџC:џџџџџџџџџC: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџC*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџCt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџC: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
Ы
j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117446

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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1ReshapeReshape:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ё
№
'__inference_lstm_1_layer_call_fn_116535
inputs_0,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	
identityЂStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputs_0lstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_113815|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџC: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
"
_user_specified_name
inputs/0
Ѕ
j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114092

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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџФ
dropout_1/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_114071\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape"dropout_1/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

O
3__inference_time_distributed_3_layer_call_fn_117415

inputs
identityН
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114638d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш
П
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117343

inputsI
7dense_1_matmul_readvariableop_time_distributed_2_kernel:"D
6dense_1_biasadd_readvariableop_time_distributed_2_bias:
identityЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOp;
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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense_1/MatMul/ReadVariableOpReadVariableOp7dense_1_matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/BiasAdd/ReadVariableOpReadVariableOp6dense_1_biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense_1/Relu:activations:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ": : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
Ѕ
j
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114056

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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџФ
dropout_1/PartitionedCallPartitionedCallReshape:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_114049\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshape"dropout_1/PartitionedCall:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ5
Ш
F__inference_sequential_layer_call_and_return_conditional_losses_115154

lstm_input-
lstm_lstm_lstm_cell_kernel:	7
$lstm_lstm_lstm_cell_recurrent_kernel:	C'
lstm_lstm_lstm_cell_bias:	3
 lstm_1_lstm_1_lstm_cell_1_kernel:	C=
*lstm_1_lstm_1_lstm_cell_1_recurrent_kernel:	C-
lstm_1_lstm_1_lstm_cell_1_bias:	:
(time_distributed_time_distributed_kernel:C"4
&time_distributed_time_distributed_bias:">
,time_distributed_2_time_distributed_2_kernel:"8
*time_distributed_2_time_distributed_2_bias:>
,time_distributed_4_time_distributed_4_kernel:8
*time_distributed_4_time_distributed_4_bias:
identityЂlstm/StatefulPartitionedCallЂlstm_1/StatefulPartitionedCallЂ(time_distributed/StatefulPartitionedCallЂ*time_distributed_2/StatefulPartitionedCallЂ*time_distributed_4/StatefulPartitionedCallЌ
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_lstm_cell_kernel$lstm_lstm_lstm_cell_recurrent_kernellstm_lstm_lstm_cell_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_114330н
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0 lstm_1_lstm_1_lstm_cell_1_kernel*lstm_1_lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_1_lstm_cell_1_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџC*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_114477е
(time_distributed/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0(time_distributed_time_distributed_kernel&time_distributed_time_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_114496o
time_distributed/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   Ї
time_distributed/ReshapeReshape'lstm_1/StatefulPartitionedCall:output:0'time_distributed/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџCћ
"time_distributed_1/PartitionedCallPartitionedCall1time_distributed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_114510q
 time_distributed_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Е
time_distributed_1/ReshapeReshape1time_distributed/StatefulPartitionedCall:output:0)time_distributed_1/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"х
*time_distributed_2/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_1/PartitionedCall:output:0,time_distributed_2_time_distributed_2_kernel*time_distributed_2_time_distributed_2_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_114528q
 time_distributed_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ"   Џ
time_distributed_2/ReshapeReshape+time_distributed_1/PartitionedCall:output:0)time_distributed_2/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"§
"time_distributed_3/PartitionedCallPartitionedCall3time_distributed_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_114542q
 time_distributed_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   З
time_distributed_3/ReshapeReshape3time_distributed_2/StatefulPartitionedCall:output:0)time_distributed_3/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџх
*time_distributed_4/StatefulPartitionedCallStatefulPartitionedCall+time_distributed_3/PartitionedCall:output:0,time_distributed_4_time_distributed_4_kernel*time_distributed_4_time_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_114559q
 time_distributed_4/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Џ
time_distributed_4/ReshapeReshape+time_distributed_3/PartitionedCall:output:0)time_distributed_4/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџэ
cropping1d/PartitionedCallPartitionedCall3time_distributed_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_cropping1d_layer_call_and_return_conditional_losses_114572v
IdentityIdentity#cropping1d/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall)^time_distributed/StatefulPartitionedCall+^time_distributed_2/StatefulPartitionedCall+^time_distributed_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2T
(time_distributed/StatefulPartitionedCall(time_distributed/StatefulPartitionedCall2X
*time_distributed_2/StatefulPartitionedCall*time_distributed_2/StatefulPartitionedCall2X
*time_distributed_4/StatefulPartitionedCall*time_distributed_4/StatefulPartitionedCall:W S
+
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
lstm_input
№
К
1__inference_time_distributed_layer_call_fn_117151

inputs)
time_distributed_kernel:C"#
time_distributed_bias:"
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_114712s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ"`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџC: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs
в
ь
+__inference_sequential_layer_call_fn_115224

inputs(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	)
time_distributed_kernel:C"#
time_distributed_bias:"+
time_distributed_2_kernel:"%
time_distributed_2_bias:+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputslstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_114575s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Л
O
3__inference_time_distributed_1_layer_call_fn_117235

inputs
identityЦ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_113955m
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ""
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ":\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs
Ы
a
E__inference_dropout_1_layer_call_and_return_conditional_losses_114071

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*&
_input_shapes
:џџџџџџџџџ:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

К
1__inference_time_distributed_layer_call_fn_117130

inputs)
time_distributed_kernel:C"#
time_distributed_bias:"
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputstime_distributed_kerneltime_distributed_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_time_distributed_layer_call_and_return_conditional_losses_113855|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџC: : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџC
 
_user_specified_nameinputs
о	

C__inference_dense_2_layer_call_and_return_conditional_losses_117862

inputsA
/matmul_readvariableop_time_distributed_4_kernel:<
.biasadd_readvariableop_time_distributed_4_bias:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
№
+__inference_sequential_layer_call_fn_115120

lstm_input(
lstm_lstm_cell_kernel:	2
lstm_lstm_cell_recurrent_kernel:	C"
lstm_lstm_cell_bias:	,
lstm_1_lstm_cell_1_kernel:	C6
#lstm_1_lstm_cell_1_recurrent_kernel:	C&
lstm_1_lstm_cell_1_bias:	)
time_distributed_kernel:C"#
time_distributed_bias:"+
time_distributed_2_kernel:"%
time_distributed_2_bias:+
time_distributed_4_kernel:%
time_distributed_4_bias:
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_lstm_cell_kernellstm_lstm_cell_recurrent_kernellstm_lstm_cell_biaslstm_1_lstm_cell_1_kernel#lstm_1_lstm_cell_1_recurrent_kernellstm_1_lstm_cell_1_biastime_distributed_kerneltime_distributed_biastime_distributed_2_kerneltime_distributed_2_biastime_distributed_4_kerneltime_distributed_4_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_115088s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
lstm_input
ѕ
Б
L__inference_time_distributed_layer_call_and_return_conditional_losses_117225

inputsE
3dense_matmul_readvariableop_time_distributed_kernel:C"@
2dense_biasadd_readvariableop_time_distributed_bias:"
identityЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOp^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџC   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџC
dense/MatMul/ReadVariableOpReadVariableOp3dense_matmul_readvariableop_time_distributed_kernel*
_output_shapes

:C"*
dtype0
dense/MatMulMatMulReshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"
dense/BiasAdd/ReadVariableOpReadVariableOp2dense_biasadd_readvariableop_time_distributed_bias*
_output_shapes
:"*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ"\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"d
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"џџџџ   "   ~
	Reshape_1Reshapedense/Relu:activations:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"e
IdentityIdentityReshape_1:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ"
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџC: : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџC
 
_user_specified_nameinputs

П
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117512

inputsI
7dense_2_matmul_readvariableop_time_distributed_4_kernel:D
6dense_2_biasadd_readvariableop_time_distributed_4_bias:
identityЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOp;
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
valueB:б
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
valueB"џџџџ   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/MatMul/ReadVariableOpReadVariableOp7dense_2_matmul_readvariableop_time_distributed_4_kernel*
_output_shapes

:*
dtype0
dense_2/MatMulMatMulReshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp6dense_2_biasadd_readvariableop_time_distributed_4_bias*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedense_2/BiasAdd:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџn
IdentityIdentityReshape_1:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ: : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
В


C__inference_dense_1_layer_call_and_return_conditional_losses_113983

inputsA
/matmul_readvariableop_time_distributed_2_kernel:"<
.biasadd_readvariableop_time_distributed_2_bias:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOp/matmul_readvariableop_time_distributed_2_kernel*
_output_shapes

:"*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
BiasAdd/ReadVariableOpReadVariableOp.biasadd_readvariableop_time_distributed_2_bias*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0**
_input_shapes
:џџџџџџџџџ": : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ"
 
_user_specified_nameinputs
З
j
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117261

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
valueB:б
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
valueB"џџџџ"   d
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"`
dropout/IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ"\
Reshape_1/shape/0Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџS
Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :"
Reshape_1/shapePackReshape_1/shape/0:output:0strided_slice:output:0Reshape_1/shape/2:output:0*
N*
T0*
_output_shapes
:
	Reshape_1Reshapedropout/Identity:output:0Reshape_1/shape:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"g
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ""
identityIdentity:output:0*3
_input_shapes"
 :џџџџџџџџџџџџџџџџџџ":\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ"
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
E

lstm_input7
serving_default_lstm_input:0џџџџџџџџџB

cropping1d4
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:еп
г
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
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api

signatures
Я__call__
+а&call_and_return_all_conditional_losses
б_default_save_signature"
_tf_keras_sequential
Х
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
в__call__
+г&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Х
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
д__call__
+е&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
В
	layer
	variables
trainable_variables
regularization_losses
	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
В
	 layer
!	variables
"trainable_variables
#regularization_losses
$	keras_api
и__call__
+й&call_and_return_all_conditional_losses"
_tf_keras_layer
В
	%layer
&	variables
'trainable_variables
(regularization_losses
)	keras_api
к__call__
+л&call_and_return_all_conditional_losses"
_tf_keras_layer
В
	*layer
+	variables
,trainable_variables
-regularization_losses
.	keras_api
м__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layer
В
	/layer
0	variables
1trainable_variables
2regularization_losses
3	keras_api
о__call__
+п&call_and_return_all_conditional_losses"
_tf_keras_layer
Ї
4	variables
5trainable_variables
6regularization_losses
7	keras_api
р__call__
+с&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
8iter
	9decay
:learning_rate;accumulatorУ<accumulatorФ=accumulatorХ>accumulatorЦ?accumulatorЧ@accumulatorШAaccumulatorЩBaccumulatorЪCaccumulatorЫDaccumulatorЬEaccumulatorЭFaccumulatorЮ"
	optimizer
v
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11"
trackable_list_wrapper
v
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics

	variables
trainable_variables
regularization_losses
Я__call__
б_default_save_signature
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
-
тserving_default"
signature_map
у
L
state_size

;kernel
<recurrent_kernel
=bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
М

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
у
W
state_size

>kernel
?recurrent_kernel
@bias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
х__call__
+ц&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
>0
?1
@2"
trackable_list_wrapper
5
>0
?1
@2"
trackable_list_wrapper
 "
trackable_list_wrapper
М

\states
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
Н

Akernel
Bbias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses"
_tf_keras_layer
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
Ї
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
!	variables
"trainable_variables
#regularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
Н

Ckernel
Dbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
ы__call__
+ь&call_and_return_all_conditional_losses"
_tf_keras_layer
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
&	variables
'trainable_variables
(regularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
Ј
}	variables
~trainable_variables
regularization_losses
	keras_api
э__call__
+ю&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
С

Ekernel
Fbias
	variables
trainable_variables
regularization_losses
	keras_api
я__call__
+№&call_and_return_all_conditional_losses"
_tf_keras_layer
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
4	variables
5trainable_variables
6regularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
:	 (2training/Adagrad/iter
 : (2training/Adagrad/decay
(:& (2training/Adagrad/learning_rate
(:&	2lstm/lstm_cell/kernel
2:0	C2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
,:*	C2lstm_1/lstm_cell_1/kernel
6:4	C2#lstm_1/lstm_cell_1/recurrent_kernel
&:$2lstm_1/lstm_cell_1/bias
):'C"2time_distributed/kernel
#:!"2time_distributed/bias
+:)"2time_distributed_2/kernel
%:#2time_distributed_2/bias
+:)2time_distributed_4/kernel
%:#2time_distributed_4/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
5
;0
<1
=2"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
>0
?1
@2"
trackable_list_wrapper
5
>0
?1
@2"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
х__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
 non_trainable_variables
Ёlayers
Ђmetrics
 Ѓlayer_regularization_losses
Єlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
Е
Ѕnon_trainable_variables
Іlayers
Їmetrics
 Јlayer_regularization_losses
Љlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
Њnon_trainable_variables
Ћlayers
Ќmetrics
 ­layer_regularization_losses
Ўlayer_metrics
t	variables
utrainable_variables
vregularization_losses
ы__call__
+ь&call_and_return_all_conditional_losses
'ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
%0"
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
Е
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
}	variables
~trainable_variables
regularization_losses
э__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Дnon_trainable_variables
Еlayers
Жmetrics
 Зlayer_regularization_losses
Иlayer_metrics
	variables
trainable_variables
regularization_losses
я__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
/0"
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

Йtotal

Кcount
Л
_fn_kwargs
М	variables
Н	keras_api"
_tf_keras_metric
c

Оtotal

Пcount
Р
_fn_kwargs
С	variables
Т	keras_api"
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
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Й0
К1"
trackable_list_wrapper
.
М	variables"
_generic_user_object
:  (2total_1
:  (2count_1
 "
trackable_dict_wrapper
0
О0
П1"
trackable_list_wrapper
.
С	variables"
_generic_user_object
C:A	22training/Adagrad/lstm/lstm_cell/kernel/accumulator
M:K	C2<training/Adagrad/lstm/lstm_cell/recurrent_kernel/accumulator
=:;20training/Adagrad/lstm/lstm_cell/bias/accumulator
G:E	C26training/Adagrad/lstm_1/lstm_cell_1/kernel/accumulator
Q:O	C2@training/Adagrad/lstm_1/lstm_cell_1/recurrent_kernel/accumulator
A:?24training/Adagrad/lstm_1/lstm_cell_1/bias/accumulator
D:BC"24training/Adagrad/time_distributed/kernel/accumulator
>:<"22training/Adagrad/time_distributed/bias/accumulator
F:D"26training/Adagrad/time_distributed_2/kernel/accumulator
@:>24training/Adagrad/time_distributed_2/bias/accumulator
F:D26training/Adagrad/time_distributed_4/kernel/accumulator
@:>24training/Adagrad/time_distributed_4/bias/accumulator
њ2ї
+__inference_sequential_layer_call_fn_114590
+__inference_sequential_layer_call_fn_115224
+__inference_sequential_layer_call_fn_115241
+__inference_sequential_layer_call_fn_115120Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ц2у
F__inference_sequential_layer_call_and_return_conditional_losses_115579
F__inference_sequential_layer_call_and_return_conditional_losses_115915
F__inference_sequential_layer_call_and_return_conditional_losses_115154
F__inference_sequential_layer_call_and_return_conditional_losses_115188Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ЯBЬ
!__inference__wrapped_model_113169
lstm_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ї2є
%__inference_lstm_layer_call_fn_115923
%__inference_lstm_layer_call_fn_115931
%__inference_lstm_layer_call_fn_115939
%__inference_lstm_layer_call_fn_115947е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
у2р
@__inference_lstm_layer_call_and_return_conditional_losses_116090
@__inference_lstm_layer_call_and_return_conditional_losses_116233
@__inference_lstm_layer_call_and_return_conditional_losses_116376
@__inference_lstm_layer_call_and_return_conditional_losses_116519е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
џ2ќ
'__inference_lstm_1_layer_call_fn_116527
'__inference_lstm_1_layer_call_fn_116535
'__inference_lstm_1_layer_call_fn_116543
'__inference_lstm_1_layer_call_fn_116551е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ы2ш
B__inference_lstm_1_layer_call_and_return_conditional_losses_116694
B__inference_lstm_1_layer_call_and_return_conditional_losses_116837
B__inference_lstm_1_layer_call_and_return_conditional_losses_116980
B__inference_lstm_1_layer_call_and_return_conditional_losses_117123е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
1__inference_time_distributed_layer_call_fn_117130
1__inference_time_distributed_layer_call_fn_117137
1__inference_time_distributed_layer_call_fn_117144
1__inference_time_distributed_layer_call_fn_117151Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ў2ћ
L__inference_time_distributed_layer_call_and_return_conditional_losses_117173
L__inference_time_distributed_layer_call_and_return_conditional_losses_117195
L__inference_time_distributed_layer_call_and_return_conditional_losses_117210
L__inference_time_distributed_layer_call_and_return_conditional_losses_117225Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
3__inference_time_distributed_1_layer_call_fn_117230
3__inference_time_distributed_1_layer_call_fn_117235
3__inference_time_distributed_1_layer_call_fn_117240
3__inference_time_distributed_1_layer_call_fn_117245Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117261
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117276
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117285
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117293Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
3__inference_time_distributed_2_layer_call_fn_117300
3__inference_time_distributed_2_layer_call_fn_117307
3__inference_time_distributed_2_layer_call_fn_117314
3__inference_time_distributed_2_layer_call_fn_117321Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117343
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117365
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117380
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117395Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
3__inference_time_distributed_3_layer_call_fn_117400
3__inference_time_distributed_3_layer_call_fn_117405
3__inference_time_distributed_3_layer_call_fn_117410
3__inference_time_distributed_3_layer_call_fn_117415Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117431
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117446
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117455
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117463Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
3__inference_time_distributed_4_layer_call_fn_117470
3__inference_time_distributed_4_layer_call_fn_117477
3__inference_time_distributed_4_layer_call_fn_117484
3__inference_time_distributed_4_layer_call_fn_117491Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117512
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117533
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117547
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117561Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2џ
+__inference_cropping1d_layer_call_fn_117566
+__inference_cropping1d_layer_call_fn_117571Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
И2Е
F__inference_cropping1d_layer_call_and_return_conditional_losses_117579
F__inference_cropping1d_layer_call_and_return_conditional_losses_117587Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЮBЫ
$__inference_signature_wrapper_115207
lstm_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_lstm_cell_layer_call_fn_117601
*__inference_lstm_cell_layer_call_fn_117615О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
E__inference_lstm_cell_layer_call_and_return_conditional_losses_117647
E__inference_lstm_cell_layer_call_and_return_conditional_losses_117679О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 2
,__inference_lstm_cell_1_layer_call_fn_117693
,__inference_lstm_cell_1_layer_call_fn_117707О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ж2г
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_117739
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_117771О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
а2Э
&__inference_dense_layer_call_fn_117778Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы2ш
A__inference_dense_layer_call_and_return_conditional_losses_117789Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
(__inference_dropout_layer_call_fn_117794
(__inference_dropout_layer_call_fn_117799Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ф2С
C__inference_dropout_layer_call_and_return_conditional_losses_117804
C__inference_dropout_layer_call_and_return_conditional_losses_117808Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_1_layer_call_fn_117815Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_117826Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
*__inference_dropout_1_layer_call_fn_117831
*__inference_dropout_1_layer_call_fn_117836Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
Ш2Х
E__inference_dropout_1_layer_call_and_return_conditional_losses_117841
E__inference_dropout_1_layer_call_and_return_conditional_losses_117845Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
в2Я
(__inference_dense_2_layer_call_fn_117852Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_117862Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 Њ
!__inference__wrapped_model_113169;<=>?@ABCDEF7Ђ4
-Ђ*
(%

lstm_inputџџџџџџџџџ
Њ ";Њ8
6

cropping1d(%

cropping1dџџџџџџџџџЯ
F__inference_cropping1d_layer_call_and_return_conditional_losses_117579EЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";Ђ8
1.
0'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Њ
F__inference_cropping1d_layer_call_and_return_conditional_losses_117587`3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ ")Ђ&

0џџџџџџџџџ
 І
+__inference_cropping1d_layer_call_fn_117566wEЂB
;Ђ8
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".+'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
+__inference_cropping1d_layer_call_fn_117571S3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЃ
C__inference_dense_1_layer_call_and_return_conditional_losses_117826\CD/Ђ,
%Ђ"
 
inputsџџџџџџџџџ"
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_1_layer_call_fn_117815OCD/Ђ,
%Ђ"
 
inputsџџџџџџџџџ"
Њ "џџџџџџџџџЃ
C__inference_dense_2_layer_call_and_return_conditional_losses_117862\EF/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 {
(__inference_dense_2_layer_call_fn_117852OEF/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "џџџџџџџџџЁ
A__inference_dense_layer_call_and_return_conditional_losses_117789\AB/Ђ,
%Ђ"
 
inputsџџџџџџџџџC
Њ "%Ђ"

0џџџџџџџџџ"
 y
&__inference_dense_layer_call_fn_117778OAB/Ђ,
%Ђ"
 
inputsџџџџџџџџџC
Њ "џџџџџџџџџ"Ѕ
E__inference_dropout_1_layer_call_and_return_conditional_losses_117841\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "%Ђ"

0џџџџџџџџџ
 Ѕ
E__inference_dropout_1_layer_call_and_return_conditional_losses_117845\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "%Ђ"

0џџџџџџџџџ
 }
*__inference_dropout_1_layer_call_fn_117831O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p 
Њ "џџџџџџџџџ}
*__inference_dropout_1_layer_call_fn_117836O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ
p
Њ "џџџџџџџџџЃ
C__inference_dropout_layer_call_and_return_conditional_losses_117804\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ"
p 
Њ "%Ђ"

0џџџџџџџџџ"
 Ѓ
C__inference_dropout_layer_call_and_return_conditional_losses_117808\3Ђ0
)Ђ&
 
inputsџџџџџџџџџ"
p
Њ "%Ђ"

0џџџџџџџџџ"
 {
(__inference_dropout_layer_call_fn_117794O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ"
p 
Њ "џџџџџџџџџ"{
(__inference_dropout_layer_call_fn_117799O3Ђ0
)Ђ&
 
inputsџџџџџџџџџ"
p
Њ "џџџџџџџџџ"б
B__inference_lstm_1_layer_call_and_return_conditional_losses_116694>?@OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџC

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџC
 б
B__inference_lstm_1_layer_call_and_return_conditional_losses_116837>?@OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџC

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџC
 З
B__inference_lstm_1_layer_call_and_return_conditional_losses_116980q>?@?Ђ<
5Ђ2
$!
inputsџџџџџџџџџC

 
p 

 
Њ ")Ђ&

0џџџџџџџџџC
 З
B__inference_lstm_1_layer_call_and_return_conditional_losses_117123q>?@?Ђ<
5Ђ2
$!
inputsџџџџџџџџџC

 
p

 
Њ ")Ђ&

0џџџџџџџџџC
 Ј
'__inference_lstm_1_layer_call_fn_116527}>?@OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџC

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџCЈ
'__inference_lstm_1_layer_call_fn_116535}>?@OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџC

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџC
'__inference_lstm_1_layer_call_fn_116543d>?@?Ђ<
5Ђ2
$!
inputsџџџџџџџџџC

 
p 

 
Њ "џџџџџџџџџC
'__inference_lstm_1_layer_call_fn_116551d>?@?Ђ<
5Ђ2
$!
inputsџџџџџџџџџC

 
p

 
Њ "џџџџџџџџџCЩ
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_117739§>?@Ђ}
vЂs
 
inputsџџџџџџџџџC
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџC
EB

0/1/0џџџџџџџџџC

0/1/1џџџџџџџџџC
 Щ
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_117771§>?@Ђ}
vЂs
 
inputsџџџџџџџџџC
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p
Њ "sЂp
iЂf

0/0џџџџџџџџџC
EB

0/1/0џџџџџџџџџC

0/1/1џџџџџџџџџC
 
,__inference_lstm_cell_1_layer_call_fn_117693э>?@Ђ}
vЂs
 
inputsџџџџџџџџџC
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p 
Њ "cЂ`

0џџџџџџџџџC
A>

1/0џџџџџџџџџC

1/1џџџџџџџџџC
,__inference_lstm_cell_1_layer_call_fn_117707э>?@Ђ}
vЂs
 
inputsџџџџџџџџџC
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p
Њ "cЂ`

0џџџџџџџџџC
A>

1/0џџџџџџџџџC

1/1џџџџџџџџџCЧ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_117647§;<=Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p 
Њ "sЂp
iЂf

0/0џџџџџџџџџC
EB

0/1/0џџџџџџџџџC

0/1/1џџџџџџџџџC
 Ч
E__inference_lstm_cell_layer_call_and_return_conditional_losses_117679§;<=Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p
Њ "sЂp
iЂf

0/0џџџџџџџџџC
EB

0/1/0џџџџџџџџџC

0/1/1џџџџџџџџџC
 
*__inference_lstm_cell_layer_call_fn_117601э;<=Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p 
Њ "cЂ`

0џџџџџџџџџC
A>

1/0џџџџџџџџџC

1/1џџџџџџџџџC
*__inference_lstm_cell_layer_call_fn_117615э;<=Ђ}
vЂs
 
inputsџџџџџџџџџ
KЂH
"
states/0џџџџџџџџџC
"
states/1џџџџџџџџџC
p
Њ "cЂ`

0џџџџџџџџџC
A>

1/0џџџџџџџџџC

1/1џџџџџџџџџCЯ
@__inference_lstm_layer_call_and_return_conditional_losses_116090;<=OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџC
 Я
@__inference_lstm_layer_call_and_return_conditional_losses_116233;<=OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџC
 Е
@__inference_lstm_layer_call_and_return_conditional_losses_116376q;<=?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ ")Ђ&

0џџџџџџџџџC
 Е
@__inference_lstm_layer_call_and_return_conditional_losses_116519q;<=?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ ")Ђ&

0џџџџџџџџџC
 І
%__inference_lstm_layer_call_fn_115923};<=OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџCІ
%__inference_lstm_layer_call_fn_115931};<=OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%"џџџџџџџџџџџџџџџџџџC
%__inference_lstm_layer_call_fn_115939d;<=?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџC
%__inference_lstm_layer_call_fn_115947d;<=?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџCФ
F__inference_sequential_layer_call_and_return_conditional_losses_115154z;<=>?@ABCDEF?Ђ<
5Ђ2
(%

lstm_inputџџџџџџџџџ
p 

 
Њ ")Ђ&

0џџџџџџџџџ
 Ф
F__inference_sequential_layer_call_and_return_conditional_losses_115188z;<=>?@ABCDEF?Ђ<
5Ђ2
(%

lstm_inputџџџџџџџџџ
p

 
Њ ")Ђ&

0џџџџџџџџџ
 Р
F__inference_sequential_layer_call_and_return_conditional_losses_115579v;<=>?@ABCDEF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ ")Ђ&

0џџџџџџџџџ
 Р
F__inference_sequential_layer_call_and_return_conditional_losses_115915v;<=>?@ABCDEF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ ")Ђ&

0џџџџџџџџџ
 
+__inference_sequential_layer_call_fn_114590m;<=>?@ABCDEF?Ђ<
5Ђ2
(%

lstm_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
+__inference_sequential_layer_call_fn_115120m;<=>?@ABCDEF?Ђ<
5Ђ2
(%

lstm_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
+__inference_sequential_layer_call_fn_115224i;<=>?@ABCDEF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
+__inference_sequential_layer_call_fn_115241i;<=>?@ABCDEF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЛ
$__inference_signature_wrapper_115207;<=>?@ABCDEFEЂB
Ђ 
;Њ8
6

lstm_input(%

lstm_inputџџџџџџџџџ";Њ8
6

cropping1d(%

cropping1dџџџџџџџџџЬ
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117261zDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ"
 Ь
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117276zDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ"
 К
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117285h;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p 

 
Њ ")Ђ&

0џџџџџџџџџ"
 К
N__inference_time_distributed_1_layer_call_and_return_conditional_losses_117293h;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p

 
Њ ")Ђ&

0џџџџџџџџџ"
 Є
3__inference_time_distributed_1_layer_call_fn_117230mDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ"Є
3__inference_time_distributed_1_layer_call_fn_117235mDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ"
3__inference_time_distributed_1_layer_call_fn_117240[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p 

 
Њ "џџџџџџџџџ"
3__inference_time_distributed_1_layer_call_fn_117245[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p

 
Њ "џџџџџџџџџ"а
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117343~CDDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 а
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117365~CDDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 О
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117380lCD;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p 

 
Њ ")Ђ&

0џџџџџџџџџ
 О
N__inference_time_distributed_2_layer_call_and_return_conditional_losses_117395lCD;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p

 
Њ ")Ђ&

0џџџџџџџџџ
 Ј
3__inference_time_distributed_2_layer_call_fn_117300qCDDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџЈ
3__inference_time_distributed_2_layer_call_fn_117307qCDDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ"
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ
3__inference_time_distributed_2_layer_call_fn_117314_CD;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p 

 
Њ "џџџџџџџџџ
3__inference_time_distributed_2_layer_call_fn_117321_CD;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ"
p

 
Њ "џџџџџџџџџЬ
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117431zDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 Ь
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117446zDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 К
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117455h;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ ")Ђ&

0џџџџџџџџџ
 К
N__inference_time_distributed_3_layer_call_and_return_conditional_losses_117463h;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ ")Ђ&

0џџџџџџџџџ
 Є
3__inference_time_distributed_3_layer_call_fn_117400mDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџЄ
3__inference_time_distributed_3_layer_call_fn_117405mDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ
3__inference_time_distributed_3_layer_call_fn_117410[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
3__inference_time_distributed_3_layer_call_fn_117415[;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџа
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117512~EFDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 а
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117533~EFDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ
 О
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117547lEF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ ")Ђ&

0џџџџџџџџџ
 О
N__inference_time_distributed_4_layer_call_and_return_conditional_losses_117561lEF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ ")Ђ&

0џџџџџџџџџ
 Ј
3__inference_time_distributed_4_layer_call_fn_117470qEFDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџЈ
3__inference_time_distributed_4_layer_call_fn_117477qEFDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ
3__inference_time_distributed_4_layer_call_fn_117484_EF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
3__inference_time_distributed_4_layer_call_fn_117491_EF;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџЮ
L__inference_time_distributed_layer_call_and_return_conditional_losses_117173~ABDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџC
p 

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ"
 Ю
L__inference_time_distributed_layer_call_and_return_conditional_losses_117195~ABDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџC
p

 
Њ "2Ђ/
(%
0џџџџџџџџџџџџџџџџџџ"
 М
L__inference_time_distributed_layer_call_and_return_conditional_losses_117210lAB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџC
p 

 
Њ ")Ђ&

0џџџџџџџџџ"
 М
L__inference_time_distributed_layer_call_and_return_conditional_losses_117225lAB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџC
p

 
Њ ")Ђ&

0џџџџџџџџџ"
 І
1__inference_time_distributed_layer_call_fn_117130qABDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџC
p 

 
Њ "%"џџџџџџџџџџџџџџџџџџ"І
1__inference_time_distributed_layer_call_fn_117137qABDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџC
p

 
Њ "%"џџџџџџџџџџџџџџџџџџ"
1__inference_time_distributed_layer_call_fn_117144_AB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџC
p 

 
Њ "џџџџџџџџџ"
1__inference_time_distributed_layer_call_fn_117151_AB;Ђ8
1Ђ.
$!
inputsџџџџџџџџџC
p

 
Њ "џџџџџџџџџ"
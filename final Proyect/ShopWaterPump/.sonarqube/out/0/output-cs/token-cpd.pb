é,
oC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Controllers\AuthController.cs
	namespace		 	
ShopWaterPumpApi		
 
.		 
Controllers		 &
{

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
AuthController 
:  !
ControllerBase" 0
{ 
private 
IUserService 
userService (
;( )
public 
AuthController 
( 
IUserService *
userService+ 6
)6 7
{ 	
this 
. 
userService 
= 
userService *
;* +
} 	
[ 	
HttpPost	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
RegisterAsync) 6
(6 7
[7 8
FromBody8 @
]@ A
RegisterViewModelB S
modelT Y
)Y Z
{ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{ 
var 
result 
= 
await "
userService# .
.. /
RegisterUserAsync/ @
(@ A
modelA F
)F G
;G H
if 
( 
result 
. 
	IsSuccess $
)$ %
return 
Ok 
( 
result $
)$ %
;% &
return!! 

BadRequest!! !
(!!! "
result!!" (
)!!( )
;!!) *
}"" 
return$$ 

BadRequest$$ 
($$ 
$str$$ =
)$$= >
;$$> ?
}%% 	
['' 	
HttpPost''	 
('' 
$str'' 
)'' 
]'' 
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
CreateRolenAsync(() 9
(((9 :
[((: ;
FromBody((; C
]((C D
CreateRoleViewModel((E X
model((Y ^
)((^ _
{)) 	
if** 
(** 

ModelState** 
.** 
IsValid** "
)**" #
{++ 
var,, 
result,, 
=,, 
await,, "
userService,,# .
.,,. /
CreateRoleAsync,,/ >
(,,> ?
model,,? D
),,D E
;,,E F
if.. 
(.. 
result.. 
... 
	IsSuccess.. $
)..$ %
{// 
return00 
Ok00 
(00 
result00 $
)00$ %
;00% &
}11 
return33 

BadRequest33 !
(33! "
result33" (
)33( )
;33) *
}44 
return55 

BadRequest55 
(55 
$str55 =
)55= >
;55> ?
}66 	
[88 	
HttpPost88	 
(88 
$str88 
)88 
]88 
public99 
async99 
Task99 
<99 
IActionResult99 '
>99' ( 
CreateUserRolenAsync99) =
(99= >
[99> ?
FromBody99? G
]99G H#
CreateUserRoleViewModel99I `
model99a f
)99f g
{:: 	
if;; 
(;; 

ModelState;; 
.;; 
IsValid;; "
);;" #
{<< 
var== 
result== 
=== 
await== "
userService==# .
.==. /
CreateUserRoleAsync==/ B
(==B C
model==C H
)==H I
;==I J
if?? 
(?? 
result?? 
.?? 
	IsSuccess?? $
)??$ %
{@@ 
returnAA 
OkAA 
(AA 
resultAA $
)AA$ %
;AA% &
}BB 
returnDD 

BadRequestDD !
(DD! "
resultDD" (
)DD( )
;DD) *
}EE 
returnFF 

BadRequestFF 
(FF 
$strFF =
)FF= >
;FF> ?
}GG 	
[II 	
HttpPostII	 
(II 
$strII 
)II 
]II 
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (

LoginAsyncJJ) 3
(JJ3 4
[JJ4 5
FromBodyJJ5 =
]JJ= >
LoginViewModelJJ? M
modelJJN S
)JJS T
{KK 	
ifLL 
(LL 

ModelStateLL 
.LL 
IsValidLL "
)LL" #
{MM 
varNN 
resultNN 
=NN 
awaitNN "
userServiceNN# .
.NN. /
LoginUserAsyncNN/ =
(NN= >
modelNN> C
)NNC D
;NND E
ifPP 
(PP 
resultPP 
.PP 
	IsSuccessPP $
)PP$ %
{QQ 
returnRR 
OkRR 
(RR 
resultRR $
)RR$ %
;RR% &
}SS 
returnUU 

BadRequestUU !
(UU! "
resultUU" (
)UU( )
;UU) *
}VV 
returnXX 

BadRequestXX 
(XX 
$strXX =
)XX= >
;XX> ?
}YY 	
}[[ 
}\\ ŸK
qC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Controllers\ShopssController.cs
	namespace 	
ShopWaterPumpApi
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
ShopssController !
:" #
ControllerBase$ 2
{ 
private 
IShopService 
_shopService )
;) *
public 
ShopssController 
(  
IShopService  ,
shopService- 8
)8 9
{ 	
this 
. 
_shopService 
= 
shopService  +
;+ ,
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
	ShopModel3 <
>< =
>= >
>> ?
GetCompaniesAsync@ Q
(Q R
stringR X
orderByY `
=a b
$strc g
,g h
booli m
showWaterPumpsn |
=} ~
false	 Ñ
)
Ñ Ö
{ 	
try 
{   
var!! 
user!! 
=!! 
User!! 
;!!  
return"" 
Ok"" 
("" 
await"" 
_shopService""  ,
."", -
GetShopsAsync""- :
("": ;
orderBy""; B
,""B C
showWaterPumps""D R
)""R S
)""S T
;""T U
}## 
catch$$ 
($$ (
BadRequestOperationException$$ /
ex$$0 2
)$$2 3
{%% 
return&& 

BadRequest&& !
(&&! "
ex&&" $
.&&$ %
Message&&% ,
)&&, -
;&&- .
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
return** 

StatusCode** !
(**! "
StatusCodes**" -
.**- .(
Status500InternalServerError**. J
,**J K
$"**L N
$str**N a
{**a b
ex**b d
.**d e
Message**e l
}**l m
"**m n
)**n o
;**o p
}++ 
},, 	
[// 	
HttpGet//	 
(// 
$str// 
,//  
Name//! %
=//& '
$str//( 1
)//1 2
]//2 3
public00 
async00 
Task00 
<00 
ActionResult00 &
<00& '
	ShopModel00' 0
>000 1
>001 2
GetCompanyAync003 A
(00A B
int00B E
shopId00F L
,00L M
bool00N R
showWaterPumps00S a
=00b c
false00d i
)00i j
{11 	
try22 
{33 
return44 
await44 
_shopService44 )
.44) *
GetShopAsync44* 6
(446 7
shopId447 =
,44= >
showWaterPumps44? M
)44M N
;44N O
}55 
catch66 
(66 &
NotFoundOperationException66 -
ex66. 0
)660 1
{77 
return88 
NotFound88 
(88  
ex88  "
.88" #
Message88# *
)88* +
;88+ ,
;88- .
}99 
catch:: 
(:: 
	Exception:: 
ex:: 
)::  
{;; 
return<< 

StatusCode<< !
(<<! "
StatusCodes<<" -
.<<- .(
Status500InternalServerError<<. J
,<<J K
$"<<L N
$str<<N a
{<<a b
ex<<b d
.<<d e
Message<<e l
}<<l m
"<<m n
)<<n o
;<<o p
}== 
}>> 	
[?? 	
	Authorize??	 
(?? 
)?? 
]?? 
[@@ 	
HttpPost@@	 
]@@ 
publicAA 
asyncAA 
TaskAA 
<AA 
ActionResultAA &
<AA& '
	ShopModelAA' 0
>AA0 1
>AA1 2
CreateShopAsyncAA3 B
(AAB C
[AAC D
FromBodyAAD L
]AAL M
	ShopModelAAN W
	shopModelAAX a
)AAa b
{BB 	
tryCC 
{DD 
ifEE 
(EE 
!EE 

ModelStateEE 
.EE  
IsValidEE  '
)EE' (
{FF 
returnGG 

BadRequestGG %
(GG% &

ModelStateGG& 0
)GG0 1
;GG1 2
}HH 
varJJ 
urlJJ 
=JJ 
HttpContextJJ %
.JJ% &
RequestJJ& -
.JJ- .
HostJJ. 2
;JJ2 3
varKK 
newShopKK 
=KK 
awaitKK #
_shopServiceKK$ 0
.KK0 1
CreateShopAsyncKK1 @
(KK@ A
	shopModelKKA J
)KKJ K
;KKK L
returnLL 
CreatedAtRouteLL %
(LL% &
$strLL& 2
,LL2 3
newLL4 7
{LL8 9
shopIdLL: @
=LLA B
newShopLLC J
.LLJ K
IdLLK M
}LLN O
,LLO P
newShopLLQ X
)LLX Y
;LLY Z
}MM 
catchNN 
(NN 
	ExceptionNN 
exNN 
)NN  
{OO 
returnPP 

StatusCodePP !
(PP! "
StatusCodesPP" -
.PP- .(
Status500InternalServerErrorPP. J
,PPJ K
$"PPL N
$strPPN a
{PPa b
exPPb d
.PPd e
MessagePPe l
}PPl m
"PPm n
)PPn o
;PPo p
}QQ 
}RR 	
[VV 	
HttpPutVV	 
(VV 
$strVV 
)VV  
]VV  !
publicWW 
asyncWW 
TaskWW 
<WW 
IActionResultWW '
>WW' (
UpdateCompanyAsyncWW) ;
(WW; <
intWW< ?
shopIDWW@ F
,WWF G
[WWH I
FromBodyWWI Q
]WWQ R
	ShopModelWWS \
	shopModelWW] f
)WWf g
{XX 	
tryYY 
{ZZ 
if[[ 
([[ 
![[ 

ModelState[[ 
.[[  
IsValid[[  '
)[[' (
{\\ 
foreach]] 
(]] 
var]]  
pair]]! %
in]]& (

ModelState]]) 3
)]]3 4
{^^ 
if__ 
(__ 
pair__  
.__  !
Key__! $
==__% '
nameof__( .
(__. /
	shopModel__/ 8
.__8 9
Name__9 =
)__= >
&&__? A
pair__B F
.__F G
Value__G L
.__L M
Errors__M S
.__S T
Count__T Y
>__Z [
$num__\ ]
)__] ^
{`` 
returnaa "

BadRequestaa# -
(aa- .
pairaa. 2
.aa2 3
Valueaa3 8
.aa8 9
Errorsaa9 ?
)aa? @
;aa@ A
}bb 
}cc 
}dd 
returnff 
Okff 
(ff 
awaitff 
_shopServiceff  ,
.ff, -
UpdateShopAsyncff- <
(ff< =
shopIDff= C
,ffC D
	shopModelffE N
)ffN O
)ffO P
;ffP Q
}gg 
catchhh 
(hh &
NotFoundOperationExceptionhh -
exhh. 0
)hh0 1
{ii 
returnjj 
NotFoundjj 
(jj  
exjj  "
.jj" #
Messagejj# *
)jj* +
;jj+ ,
;jj- .
}kk 
catchll 
(ll 
	Exceptionll 
exll 
)ll  
{mm 
returnnn 

StatusCodenn !
(nn! "
StatusCodesnn" -
.nn- .(
Status500InternalServerErrornn. J
,nnJ K
$"nnL N
$strnnN a
{nna b
exnnb d
.nnd e
Messagenne l
}nnl m
"nnm n
)nnn o
;nno p
}oo 
}pp 	
[qq 	

HttpDeleteqq	 
(qq 
$strqq "
)qq" #
]qq# $
publicrr 
asyncrr 
Taskrr 
<rr 
ActionResultrr &
<rr& '
DeleteModelrr' 2
>rr2 3
>rr3 4
DeletecompanyAsyncrr5 G
(rrG H
intrrH K
shopIDrrL R
)rrR S
{ss 	
trytt 
{uu 
returnvv 
Okvv 
(vv 
awaitvv 
_shopServicevv  ,
.vv, -
DeleteShopAsyncvv- <
(vv< =
shopIDvv= C
)vvC D
)vvD E
;vvE F
}ww 
catchxx 
(xx &
NotFoundOperationExceptionxx -
exxx. 0
)xx0 1
{yy 
returnzz 
NotFoundzz 
(zz  
exzz  "
.zz" #
Messagezz# *
)zz* +
;zz+ ,
;zz- .
}{{ 
catch|| 
(|| 
	Exception|| 
ex|| 
)||  
{}} 
return~~ 

StatusCode~~ !
(~~! "
StatusCodes~~" -
.~~- .(
Status500InternalServerError~~. J
,~~J K
$"~~L N
$str~~N a
{~~a b
ex~~b d
.~~d e
Message~~e l
}~~l m
"~~m n
)~~n o
;~~o p
} 
}
ÄÄ 	
}
ÉÉ 
}ÑÑ ¿L
uC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Controllers\WaterPumpsController.cs
	namespace 	
ShopWaterPumpApi
 
. 
Controllers &
{ 
[ 
Route 

(
 
$str -
)- .
]. /
public 

class  
WaterPumpsController %
:& '
ControllerBase( 6
{ 
private 
IWaterPumpsService "
_waterPumpService# 4
;4 5
private 
IFileService 
_fileService )
;) *
public  
WaterPumpsController #
(# $
IWaterPumpsService$ 6
waterPumpService7 G
,G H
IFileServiceI U
fileServiceV a
)a b
{ 	
_waterPumpService 
= 
waterPumpService  0
;0 1
_fileService 
= 
fileService &
;& '
} 	
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
ActionResult &
<& '
IEnumerable' 2
<2 3
WaterPumpModel3 A
>A B
>B C
>C D
GetWaterPumpsE R
(R S
intS V
shopIdW ]
)] ^
{ 	
try 
{ 
return   
Ok   
(   
await    
_waterPumpService  ! 2
.  2 3
GetWaterPumpsAsync  3 E
(  E F
shopId  F L
)  L M
)  M N
;  N O
}!! 
catch"" 
("" &
NotFoundOperationException"" ,
ex""- /
)""/ 0
{## 
return$$ 
NotFound$$ 
($$  
ex$$  "
.$$" #
Message$$# *
)$$* +
;$$+ ,
}%% 
catch&& 
(&& 
	Exception&& 
ex&& 
)&&  
{'' 
return(( 

StatusCode(( !
(((! "
StatusCodes((" -
.((- .(
Status500InternalServerError((. J
,((J K
$"((L N
$str((N a
{((a b
ex((b d
.((d e
Message((e l
}((l m
"((m n
)((n o
;((o p
})) 
}** 	
[,, 	
HttpGet,,	 
(,, 
$str,, $
),,$ %
],,% &
public-- 
async-- 
Task-- 
<-- 
ActionResult-- &
<--& '
WaterPumpModel--' 5
>--5 6
>--6 7
GetWaterPumpAsync--8 I
(--I J
int--J M
shopId--N T
,--T U
int--V Y
waterPumpId--Z e
)--e f
{.. 	
try// 
{00 
return11 
Ok11 
(11 
await11 
_waterPumpService11  1
.111 2
GetWaterPumpAsync112 C
(11C D
shopId11D J
,11J K
waterPumpId11L W
)11W X
)11X Y
;11Y Z
}22 
catch33 
(33 &
NotFoundOperationException33 -
ex33. 0
)330 1
{44 
return55 
NotFound55 
(55  
ex55  "
.55" #
Message55# *
)55* +
;55+ ,
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 
return99 

StatusCode99 !
(99! "
StatusCodes99" -
.99- .(
Status500InternalServerError99. J
,99J K
$"99L N
$str99N a
{99a b
ex99b d
.99d e
Message99e l
}99l m
"99m n
)99n o
;99o p
}:: 
};; 	
[?? 	
HttpPost??	 
]?? 
public@@ 
async@@ 
Task@@ 
<@@ 
ActionResult@@ &
<@@& '
WaterPumpModel@@' 5
>@@5 6
>@@6 7 
CreateWaterPumpAsync@@8 L
(@@L M
int@@M P
shopId@@Q W
,@@W X
[@@Y Z
FromForm@@Z b
]@@b c
WaterPumpModel@@d r
	waterPump@@s |
)@@| }
{AA 	
tryBB 
{CC 
varDD 
fileDD 
=DD 
	waterPumpDD $
.DD$ %
ImageDD% *
;DD* +
stringEE 
	imagePathEE  
=EE! "
_fileServiceEE# /
.EE/ 0

UploadFileEE0 :
(EE: ;
fileEE; ?
)EE? @
;EE@ A
	waterPumpGG 
.GG 
	ImagePathGG #
=GG$ %
	imagePathGG& /
;GG/ 0
varHH 
waterPumpCreateHH #
=HH$ %
awaitHH& +
_waterPumpServiceHH, =
.HH= > 
CreateWaterPumpAsyncHH> R
(HHR S
shopIdHHS Y
,HHY Z
	waterPumpHH[ d
)HHd e
;HHe f
returnII 
CreatedAtRouteII %
(II% &
$strII& 4
,II4 5
newII6 9
{II: ;
shopIDII< B
=IIC D
shopIdIIE K
,IIK L
waterPumpIdIIM X
=IIY Z
waterPumpCreateII[ j
.IIj k
IdIIk m
}IIn o
,IIo p
waterPumpCreate	IIq Ä
)
IIÄ Å
;
IIÅ Ç
}JJ 
catchKK 
(KK &
NotFoundOperationExceptionKK -
exKK. 0
)KK0 1
{LL 
returnMM 
NotFoundMM 
(MM  
exMM  "
.MM" #
MessageMM# *
)MM* +
;MM+ ,
}NN 
catchOO 
(OO 
	ExceptionOO 
exOO 
)OO  
{PP 
returnQQ 

StatusCodeQQ !
(QQ! "
StatusCodesQQ" -
.QQ- .(
Status500InternalServerErrorQQ. J
,QQJ K
$"QQL N
$strQQN a
{QQa b
exQQb d
.QQd e
MessageQQe l
}QQl m
"QQm n
)QQn o
;QQo p
}RR 
}SS 	
[TT 	
HttpPutTT	 
(TT 
$strTT $
)TT$ %
]TT% &
publicUU 
asyncUU 
TaskUU 
<UU 
ActionResultUU &
<UU& '
WaterPumpModelUU' 5
>UU5 6
>UU6 7 
UpdateWaterPumpAsyncUU8 L
(UUL M
intUUM P
shopIdUUQ W
,UUW X
intUUY \
waterPumpIdUU] h
,UUh i
[UUj k
FromFormUUk s
]UUs t
WaterPumpModel	UUu É
	waterPump
UUÑ ç
)
UUç é
{VV 	
tryWW 
{XX 
varYY 
fileYY 
=YY 
	waterPumpYY $
.YY$ %
ImageYY% *
;YY* +
stringZZ 
	imagePathZZ  
=ZZ! "
_fileServiceZZ# /
.ZZ/ 0

UploadFileZZ0 :
(ZZ: ;
fileZZ; ?
)ZZ? @
;ZZ@ A
	waterPump\\ 
.\\ 
	ImagePath\\ #
=\\$ %
	imagePath\\& /
;\\/ 0
return]] 
Ok]] 
(]] 
await]] 
_waterPumpService]]  1
.]]1 2 
UpdateWaterPumpAsync]]2 F
(]]F G
shopId]]G M
,]]M N
waterPumpId]]O Z
,]]Z [
	waterPump]]\ e
)]]e f
)]]f g
;]]g h
}^^ 
catch__ 
(__ &
NotFoundOperationException__ -
ex__. 0
)__0 1
{`` 
returnaa 
NotFoundaa 
(aa  
exaa  "
.aa" #
Messageaa# *
)aa* +
;aa+ ,
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
returnee 

StatusCodeee !
(ee! "
StatusCodesee" -
.ee- .(
Status500InternalServerErroree. J
,eeJ K
$"eeL N
$streeN a
{eea b
exeeb d
.eed e
Messageeee l
}eel m
"eem n
)een o
;eeo p
}ff 
}gg 	
[ii 	

HttpDeleteii	 
(ii 
$strii '
)ii' (
]ii( )
publicjj 
asyncjj 
Taskjj 
<jj 
ActionResultjj &
<jj& '
booljj' +
>jj+ ,
>jj, - 
DeleteWaterPumpAsyncjj. B
(jjB C
intjjC F
shopIdjjG M
,jjM N
intjjO R
waterPumpIdjjS ^
)jj^ _
{kk 	
tryll 
{mm 
returnnn 
Oknn 
(nn 
awaitnn 
_waterPumpServicenn  1
.nn1 2 
DeleteWaterPumpAsyncnn2 F
(nnF G
shopIdnnG M
,nnM N
waterPumpIdnnO Z
)nnZ [
)nn[ \
;nn\ ]
}oo 
catchpp 
(pp &
NotFoundOperationExceptionpp -
expp. 0
)pp0 1
{qq 
returnrr 
NotFoundrr 
(rr  
exrr  "
.rr" #
Messagerr# *
)rr* +
;rr+ ,
}ss 
catchtt 
(tt 
	Exceptiontt 
extt 
)tt  
{uu 
returnvv 

StatusCodevv !
(vv! "
StatusCodesvv" -
.vv- .(
Status500InternalServerErrorvv. J
,vvJ K
$"vvL N
$strvvN a
{vva b
exvvb d
.vvd e
Messagevve l
}vvl m
"vvm n
)vvn o
;vvo p
}ww 
}xx 	
}yy 
}zz Õ
kC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\AutomapperProfile.cs
	namespace		 	
ShopWaterPumpApi		
 
.		 
Data		 
{

 
public 

class 
AutomapperProfile "
:# $
Profile% ,
{ 
public 
AutomapperProfile  
(  !
)! "
{ 	
this 
. 
	CreateMap 
< 

ShopEntity %
,% &
	ShopModel' 0
>0 1
(1 2
)2 3
. 

ReverseMap 
( 
) 
; 
this 
. 
	CreateMap 
< 
WaterPumpModel )
,) *
WaterPumpEntity+ :
>: ;
(; <
)< =
. 
	ForMember 
( 
des 
=> !
des" %
.% &
Shop& *
,* +
opt, /
=>0 2
opt3 6
.6 7
MapFrom7 >
(> ?
scr? B
=>C E
newF I

ShopEntityJ T
{U V
IdW Y
=Z [
scr\ _
._ `
shopId` f
}g h
)h i
)i j
. 

ReverseMap 
( 
) 
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
shopId( .
,. /
opt0 3
=>4 6
opt7 :
.: ;
MapFrom; B
(B C
scrC F
=>G I
scrJ M
.M N
ShopN R
.R S
IdS U
)U V
)V W
;W X
} 	
}   
}!! ¢
pC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\Entities\ProductEntity.cs
	namespace 	
ShopWaterPumpApi
 
. 
Data 
.  
Entities  (
{ 
public		 

class		 
ProductEntity		 
{

 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
float 
? 
Price 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Mark 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ´
mC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\Entities\ShopEntity.cs
	namespace 	
ShopWaterPumpApi
 
. 
Data 
.  
Entities  (
{		 
public

 

class

 

ShopEntity

 
{ 
[ 	
Key	 
] 
[ 	
Required	 
] 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
Founded  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< 
WaterPumpEntity *
>* +

WaterPumps, 6
{7 8
get9 <
;< =
set> A
;A B
}C D
} 
} Ì
rC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\Entities\WaterPumpEntity.cs
	namespace 	
ShopWaterPumpApi
 
. 
Data 
.  
Entities  (
{		 
public

 

class

 
WaterPumpEntity

  
:

! "
ProductEntity

# 0
{ 
public 
int 
? 
PowerHP 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Capacity 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

ForeignKey	 
( 
$str 
) 
] 
public	 
virtual 

ShopEntity "
Shop# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ñ
jC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\LibraryDbContext.cs
	namespace		 	
ShopWaterPumpApi		
 
.		 
Data		 
{

 
public 

class 
LibraryDbContext !
:" #
IdentityDbContext$ 5
{ 
public 
DbSet 
< 

ShopEntity 
>  
Shops! &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
WaterPumpEntity $
>$ %

WaterPumps& 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
LibraryDbContext 
(  
DbContextOptions  0
<0 1
LibraryDbContext1 A
>A B
optionsC J
)J K
: 
base 
( 
options 
) 
{ 	
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
base 
. 
OnModelCreating  
(  !
modelBuilder! -
)- .
;. /
modelBuilder 
. 
Entity 
<  

ShopEntity  *
>* +
(+ ,
), -
.- .
ToTable. 5
(5 6
$str6 =
)= >
;> ?
modelBuilder 
. 
Entity 
<  

ShopEntity  *
>* +
(+ ,
), -
.- .
Property. 6
(6 7
c7 8
=>9 ;
c< =
.= >
Id> @
)@ A
.A B
ValueGeneratedOnAddB U
(U V
)V W
;W X
modelBuilder 
. 
Entity 
<  

ShopEntity  *
>* +
(+ ,
), -
.- .
HasMany. 5
(5 6
c6 7
=>8 :
c; <
.< =

WaterPumps= G
)G H
.H I
WithOneI P
(P Q
vQ R
=>S U
vV W
.W X
ShopX \
)\ ]
;] ^
modelBuilder 
. 
Entity 
<  
WaterPumpEntity  /
>/ 0
(0 1
)1 2
.2 3
ToTable3 :
(: ;
$str; G
)G H
;H I
modelBuilder 
. 
Entity 
<  
WaterPumpEntity  /
>/ 0
(0 1
)1 2
.2 3
Property3 ;
(; <
v< =
=>> @
vA B
.B C
IdC E
)E F
.F G
ValueGeneratedOnAddG Z
(Z [
)[ \
;\ ]
modelBuilder 
. 
Entity 
<  
WaterPumpEntity  /
>/ 0
(0 1
)1 2
.2 3
HasOne3 9
(9 :
v: ;
=>< >
v? @
.@ A
ShopA E
)E F
.F G
WithManyG O
(O P
cP Q
=>R T
cU V
.V W

WaterPumpsW a
)a b
;b c
}   	
}'' 
}(( ∏
wC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\Repository\ILibraryRepository.cs
	namespace 	
ShopWaterPumpApi
 
. 
Data 
.  

Repository  *
{ 
public		 

	interface		 
ILibraryRepository		 '
{

 
Task	 
< 
IEnumerable 
< 

ShopEntity $
>$ %
>% &
GetShopssAsync' 5
(5 6
string6 <
orderBy= D
,D E
boolF J
showWaterPumpsK Y
=Z [
false\ a
)a b
;b c
Task 
< 

ShopEntity 
> 
GetShopAsync %
(% &
int& )
shopId* 0
,0 1
bool2 6
showWaterPumps7 E
=F G
falseH M
)M N
;N O
void 

CreateShop 
( 

ShopEntity "
	shopModel# ,
), -
;- .
Task 
< 
bool 
> 
DeleteShopAsync "
(" #
int# &
shopId' -
)- .
;. /
bool 

UpdateShop 
( 

ShopEntity "
	shopModel# ,
), -
;- .
void 
CreateWaterPump 
( 
WaterPumpEntity ,
	waterPump- 6
)6 7
;7 8
Task 
< 
WaterPumpEntity 
> 
GetWaterPumpAsync /
(/ 0
int0 3
waterPumpId4 ?
)? @
;@ A
Task 
< 
IEnumerable 
< 
WaterPumpEntity (
>( )
>) *
GetWaterPumpsAsync+ =
(= >
int> A
shopIdB H
)H I
;I J
Task 
< 
bool 
>  
UpdateWaterPumpAsync '
(' (
WaterPumpEntity( 7
	waterPump8 A
)A B
;B C
bool 
DeleteWaterPump 
( 
int  
waterPumpId! ,
), -
;- .
Task 
< 
bool 
> 
SaveChangesAsync #
(# $
)$ %
;% &
} 
} ÷h
vC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Data\Repository\LibraryRepository.cs
	namespace 	
ShopWaterPumpApi
 
. 
Data 
.  

Repository  *
{		 
public

 

class

 
LibraryRepository

 "
:

# $
ILibraryRepository

% 7
{ 
private 
LibraryDbContext  

_dbContext! +
;+ ,
public 
LibraryRepository  
(  !
LibraryDbContext! 1
	dbContext2 ;
); <
{ 	

_dbContext 
= 
	dbContext "
;" #
} 	
public 
void 

CreateShop 
( 

ShopEntity )
	shopModel* 3
)3 4
{ 	

_dbContext 
. 
Shops 
. 
Add  
(  !
	shopModel! *
)* +
;+ ,
} 	
public 
async 
Task 
< 
bool 
> 
DeleteShopAsync  /
(/ 0
int0 3
shopId4 :
): ;
{ 	
var 
shopToDelete 
= 
await $

_dbContext% /
./ 0
Shops0 5
.5 6
FirstOrDefaultAsync6 I
(I J
cJ K
=>L N
cO P
.P Q
IdQ S
==T V
shopIdW ]
)] ^
;^ _

_dbContext 
. 
Shops 
. 
Remove #
(# $
shopToDelete$ 0
)0 1
;1 2
return 
true 
; 
} 	
public## 
async## 
Task## 
<## 

ShopEntity## $
>##$ %
GetShopAsync##& 2
(##2 3
int##3 6
shopId##7 =
,##= >
bool##? C
showWaterPump##D Q
=##R S
false##T Y
)##Y Z
{$$ 	

IQueryable%% 
<%% 

ShopEntity%% !
>%%! "
query%%# (
=%%) *

_dbContext%%+ 5
.%%5 6
Shops%%6 ;
;%%; <
query&& 
=&& 
query&& 
.&& 
AsNoTracking&& &
(&&& '
)&&' (
;&&( )
if(( 
((( 
showWaterPump(( 
)(( 
{)) 
query** 
=** 
query** 
.** 
Include** %
(**% &
c**& '
=>**( *
c**+ ,
.**, -

WaterPumps**- 7
)**7 8
;**8 9
}++ 
return,, 
await,, 
query,, 
.,, 
FirstOrDefaultAsync,, 2
(,,2 3
c,,3 4
=>,,5 7
c,,8 9
.,,9 :
Id,,: <
==,,= ?
shopId,,@ F
),,F G
;,,G H
}-- 	
public// 
async// 
Task// 
<// 
IEnumerable// %
<//% &

ShopEntity//& 0
>//0 1
>//1 2
GetShopssAsync//3 A
(//A B
string//B H
orderBy//I P
,//P Q
bool//R V
showWaterPumpss//W f
=//g h
false//i n
)//n o
{00 	

IQueryable11 
<11 

ShopEntity11 !
>11! "
query11# (
=11) *

_dbContext11+ 5
.115 6
Shops116 ;
;11; <
query22 
=22 
query22 
.22 
AsNoTracking22 &
(22& '
)22' (
;22( )
switch44 
(44 
orderBy44 
)44 
{55 
case66 
$str66 
:66 
query77 
=77 
query77 !
.77! "
OrderBy77" )
(77) *
c77* +
=>77, .
c77/ 0
.770 1
Id771 3
)773 4
;774 5
break88 
;88 
case99 
$str99 
:99 
query:: 
=:: 
query:: !
.::! "
OrderBy::" )
(::) *
c::* +
=>::, .
c::/ 0
.::0 1
Name::1 5
)::5 6
;::6 7
break;; 
;;; 
case<< 
$str<< %
:<<% &
query== 
=== 
query== !
.==! "
OrderBy==" )
(==) *
c==* +
=>==, .
c==/ 0
.==0 1
Founded==1 8
)==8 9
;==9 :
break>> 
;>> 
case?? 
$str?? 
:?? 
query@@ 
=@@ 
query@@ !
.@@! "
OrderBy@@" )
(@@) *
c@@* +
=>@@, .
c@@/ 0
.@@0 1
Address@@1 8
)@@8 9
;@@9 :
breakAA 
;AA 
defaultBB 
:BB 
queryCC 
=CC 
queryCC !
.CC! "
OrderByCC" )
(CC) *
cCC* +
=>CC, .
cCC/ 0
.CC0 1
IdCC1 3
)CC3 4
;CC4 5
;CC6 7
breakDD 
;DD 
}EE 
varFF 
resultFF 
=FF 
queryFF 
.FF 
ToListFF %
(FF% &
)FF& '
;FF' (
returnGG 
resultGG 
;GG 
}HH 	
publicJJ 
voidJJ 
CreateWaterPumpJJ #
(JJ# $
WaterPumpEntityJJ$ 3
	waterPumpJJ4 =
)JJ= >
{KK 	
ifLL 
(LL 
	waterPumpLL 
.LL 
ShopLL 
!=LL !
nullLL" &
)LL& '
{MM 

_dbContextNN 
.NN 
EntryNN  
(NN  !
	waterPumpNN! *
.NN* +
ShopNN+ /
)NN/ 0
.NN0 1
StateNN1 6
=NN7 8
EntityStateNN9 D
.NND E
	UnchangedNNE N
;NNN O
}OO 

_dbContextPP 
.PP 

WaterPumpsPP !
.PP! "
AddPP" %
(PP% &
	waterPumpPP& /
)PP/ 0
;PP0 1
}QQ 	
publicSS 
asyncSS 
TaskSS 
<SS 
WaterPumpEntitySS )
>SS) *
GetWaterPumpAsyncSS+ <
(SS< =
intSS= @
waterPumpIdSSA L
)SSL M
{TT 	

IQueryableUU 
<UU 
WaterPumpEntityUU &
>UU& '
queryUU( -
=UU. /

_dbContextUU0 :
.UU: ;

WaterPumpsUU; E
;UUE F
queryVV 
=VV 
queryVV 
.VV 
IncludeVV !
(VV! "
vVV" #
=>VV$ &
vVV' (
.VV( )
ShopVV) -
)VV- .
;VV. /
queryWW 
=WW 
queryWW 
.WW 
AsNoTrackingWW &
(WW& '
)WW' (
;WW( )
varXX 
	waterPumpXX 
=XX 
awaitXX !
queryXX" '
.XX' ( 
SingleOrDefaultAsyncXX( <
(XX< =
vXX= >
=>XX? A
vXXB C
.XXC D
IdXXD F
==XXG I
waterPumpIdXXJ U
)XXU V
;XXV W
returnYY 
	waterPumpYY 
;YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
IEnumerable\\ %
<\\% &
WaterPumpEntity\\& 5
>\\5 6
>\\6 7
GetWaterPumpsAsync\\8 J
(\\J K
int\\K N
shopId\\O U
)\\U V
{]] 	

IQueryable`` 
<`` 
WaterPumpEntity`` &
>``& '
query``( -
=``. /

_dbContext``0 :
.``: ;

WaterPumps``; E
;``E F
queryaa 
=aa 
queryaa 
.aa 
Whereaa 
(aa  
vaa  !
=>aa" $
vaa% &
.aa& '
Shopaa' +
.aa+ ,
Idaa, .
==aa/ 1
shopIdaa2 8
)aa8 9
;aa9 :
querybb 
=bb 
querybb 
.bb 
Includebb !
(bb! "
vbb" #
=>bb$ &
vbb' (
.bb( )
Shopbb) -
)bb- .
;bb. /
querycc 
=cc 
querycc 
.cc 
AsNoTrackingcc &
(cc& '
)cc' (
;cc( )
returnee 
awaitee 
queryee 
.ee 
ToArrayAsyncee +
(ee+ ,
)ee, -
;ee- .
;ee/ 0
}ff 	
publicgg 
boolgg 
DeleteWaterPumpgg #
(gg# $
intgg$ '
waterPumpIdgg( 3
)gg3 4
{hh 	
varii 
waterPumpDeleteii 
=ii  !
newii" %
WaterPumpEntityii& 5
(ii5 6
)ii6 7
{ii8 9
Idii: <
=ii= >
waterPumpIdii? J
}iiK L
;iiL M

_dbContextjj 
.jj 
Entryjj 
(jj 
waterPumpDeletejj ,
)jj, -
.jj- .
Statejj. 3
=jj4 5
EntityStatejj6 A
.jjA B
DeletedjjB I
;jjI J
returnkk 
truekk 
;kk 
}ll 	
publicnn 
asyncnn 
Tasknn 
<nn 
boolnn 
>nn 
SaveChangesAsyncnn  0
(nn0 1
)nn1 2
{oo 	
trypp 
{qq 
varrr 
resrr 
=rr 
awaitrr 

_dbContextrr  *
.rr* +
SaveChangesAsyncrr+ ;
(rr; <
)rr< =
;rr= >
returnss 
resss 
>ss 
$numss 
;ss 
}tt 
catchuu 
(uu 
	Exceptionuu 
exuu 
)uu  
{vv 
throwxx 
exxx 
;xx 
}yy 
}zz 	
public|| 
bool|| 

UpdateShop|| 
(|| 

ShopEntity|| )

shopEntity||* 4
)||4 5
{}} 	
var~~ 

shopUpdate~~ 
=~~ 

_dbContext~~ '
.~~' (
Shops~~( -
.~~- .
FirstOrDefault~~. <
(~~< =
c~~= >
=>~~? A
c~~B C
.~~C D
Id~~D F
==~~G I

shopEntity~~J T
.~~T U
Id~~U W
)~~W X
;~~X Y

_dbContext
ÄÄ 
.
ÄÄ 
Entry
ÄÄ 
(
ÄÄ 

shopUpdate
ÄÄ '
)
ÄÄ' (
.
ÄÄ( )
CurrentValues
ÄÄ) 6
.
ÄÄ6 7
	SetValues
ÄÄ7 @
(
ÄÄ@ A

shopEntity
ÄÄA K
)
ÄÄK L
;
ÄÄL M
return
ÉÉ 
true
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 
bool
ÜÜ 
>
ÜÜ "
UpdateWaterPumpAsync
ÜÜ  4
(
ÜÜ4 5
WaterPumpEntity
ÜÜ5 D
	waterPump
ÜÜE N
)
ÜÜN O
{
áá 	
var
àà 
waterPumpUpdate
àà 
=
àà  !
await
àà" '

_dbContext
àà( 2
.
àà2 3

WaterPumps
àà3 =
.
àà= >!
FirstOrDefaultAsync
àà> Q
(
ààQ R
v
ààR S
=>
ààT V
v
ààW X
.
ààX Y
Id
ààY [
==
àà\ ^
	waterPump
àà_ h
.
ààh i
Id
àài k
)
ààk l
;
ààl m
waterPumpUpdate
ââ 
.
ââ 
Name
ââ  
=
ââ! "
	waterPump
ââ# ,
.
ââ, -
Name
ââ- 1
??
ââ2 4
waterPumpUpdate
ââ5 D
.
ââD E
Name
ââE I
;
ââI J
waterPumpUpdate
ää 
.
ää 
Description
ää '
=
ää( )
	waterPump
ää* 3
.
ää3 4
Description
ää4 ?
??
ää@ B
waterPumpUpdate
ääC R
.
ääR S
Description
ääS ^
;
ää^ _
waterPumpUpdate
ãã 
.
ãã 
Price
ãã !
=
ãã" #
	waterPump
ãã$ -
.
ãã- .
Price
ãã. 3
??
ãã4 6
waterPumpUpdate
ãã7 F
.
ããF G
Price
ããG L
;
ããL M
waterPumpUpdate
åå 
.
åå 
Mark
åå  
=
åå! "
	waterPump
åå# ,
.
åå, -
Mark
åå- 1
??
åå2 4
waterPumpUpdate
åå5 D
.
ååD E
Mark
ååE I
;
ååI J
waterPumpUpdate
çç 
.
çç 
PowerHP
çç #
=
çç$ %
	waterPump
çç& /
.
çç/ 0
PowerHP
çç0 7
??
çç8 :
waterPumpUpdate
çç; J
.
ççJ K
PowerHP
ççK R
;
ççR S
waterPumpUpdate
éé 
.
éé 
Capacity
éé $
=
éé% &
	waterPump
éé' 0
.
éé0 1
Capacity
éé1 9
??
éé: <
waterPumpUpdate
éé= L
.
ééL M
Capacity
ééM U
;
ééU V
return
êê 
true
êê 
;
êê 
}
ëë 	
}
îî 	
}
ïï ˛
|C:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Exceptions\BadRequestOperationException.cs
	namespace 	
ShopWaterPumpApi
 
. 

Exceptions %
{ 
public 

class (
BadRequestOperationException -
:. /
	Exception0 9
{		 
public

 (
BadRequestOperationException

 +
(

+ ,
string

, 2
message

3 :
)

: ;
: 
base 
( 
message 
) 
{ 	
} 	
} 
} ¯
zC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Exceptions\NotFoundOperationException.cs
	namespace 	
ShopWaterPumpApi
 
. 

Exceptions %
{ 
public 

class &
NotFoundOperationException +
:, -
	Exception. 7
{		 
public

 &
NotFoundOperationException

 )
(

) *
string

* 0
message

1 8
)

8 9
: 
base 
( 
message 
) 
{ 	
} 	
} 
} ¨‰
|C:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Migrations\20220106205631_InitialCreate.cs
	namespace 	
ShopWaterPumpApi
 
. 

Migrations %
{ 
public 

partial 
class 
InitialCreate &
:' (
	Migration) 2
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email 
= 
table !
.! "
Column" (
<( )
string) /
>/ 0
(0 1
	maxLength1 :
:: ;
$num< ?
,? @
nullableA I
:I J
trueK O
)O P
,P Q
NormalizedEmail   #
=  $ %
table  & +
.  + ,
Column  , 2
<  2 3
string  3 9
>  9 :
(  : ;
	maxLength  ; D
:  D E
$num  F I
,  I J
nullable  K S
:  S T
true  U Y
)  Y Z
,  Z [
EmailConfirmed!! "
=!!# $
table!!% *
.!!* +
Column!!+ 1
<!!1 2
bool!!2 6
>!!6 7
(!!7 8
nullable!!8 @
:!!@ A
false!!B G
)!!G H
,!!H I
PasswordHash""  
=""! "
table""# (
.""( )
Column"") /
<""/ 0
string""0 6
>""6 7
(""7 8
nullable""8 @
:""@ A
true""B F
)""F G
,""G H
SecurityStamp## !
=##" #
table##$ )
.##) *
Column##* 0
<##0 1
string##1 7
>##7 8
(##8 9
nullable##9 A
:##A B
true##C G
)##G H
,##H I
ConcurrencyStamp$$ $
=$$% &
table$$' ,
.$$, -
Column$$- 3
<$$3 4
string$$4 :
>$$: ;
($$; <
nullable$$< D
:$$D E
true$$F J
)$$J K
,$$K L
PhoneNumber%% 
=%%  !
table%%" '
.%%' (
Column%%( .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
nullable%%7 ?
:%%? @
true%%A E
)%%E F
,%%F G 
PhoneNumberConfirmed&& (
=&&) *
table&&+ 0
.&&0 1
Column&&1 7
<&&7 8
bool&&8 <
>&&< =
(&&= >
nullable&&> F
:&&F G
false&&H M
)&&M N
,&&N O
TwoFactorEnabled'' $
=''% &
table''' ,
.'', -
Column''- 3
<''3 4
bool''4 8
>''8 9
(''9 :
nullable'': B
:''B C
false''D I
)''I J
,''J K

LockoutEnd(( 
=((  
table((! &
.((& '
Column((' -
<((- .
DateTimeOffset((. <
>((< =
(((= >
nullable((> F
:((F G
true((H L
)((L M
,((M N
LockoutEnabled)) "
=))# $
table))% *
.))* +
Column))+ 1
<))1 2
bool))2 6
>))6 7
())7 8
nullable))8 @
:))@ A
false))B G
)))G H
,))H I
AccessFailedCount** %
=**& '
table**( -
.**- .
Column**. 4
<**4 5
int**5 8
>**8 9
(**9 :
nullable**: B
:**B C
false**D I
)**I J
}++ 
,++ 
constraints,, 
:,, 
table,, "
=>,,# %
{-- 
table.. 
... 

PrimaryKey.. $
(..$ %
$str..% 5
,..5 6
x..7 8
=>..9 ;
x..< =
...= >
Id..> @
)..@ A
;..A B
}// 
)// 
;// 
migrationBuilder11 
.11 
CreateTable11 (
(11( )
name22 
:22 
$str22 
,22 
columns33 
:33 
table33 
=>33 !
new33" %
{44 
Id55 
=55 
table55 
.55 
Column55 %
<55% &
int55& )
>55) *
(55* +
nullable55+ 3
:553 4
false555 :
)55: ;
.66 

Annotation66 #
(66# $
$str66$ 8
,668 9
$str66: @
)66@ A
,66A B
Name77 
=77 
table77  
.77  !
Column77! '
<77' (
string77( .
>77. /
(77/ 0
nullable770 8
:778 9
true77: >
)77> ?
,77? @
Address88 
=88 
table88 #
.88# $
Column88$ *
<88* +
string88+ 1
>881 2
(882 3
nullable883 ;
:88; <
true88= A
)88A B
,88B C
Phone99 
=99 
table99 !
.99! "
Column99" (
<99( )
string99) /
>99/ 0
(990 1
nullable991 9
:999 :
true99; ?
)99? @
,99@ A
Founded:: 
=:: 
table:: #
.::# $
Column::$ *
<::* +
DateTime::+ 3
>::3 4
(::4 5
nullable::5 =
:::= >
true::? C
)::C D
};; 
,;; 
constraints<< 
:<< 
table<< "
=><<# %
{== 
table>> 
.>> 

PrimaryKey>> $
(>>$ %
$str>>% /
,>>/ 0
x>>1 2
=>>>3 5
x>>6 7
.>>7 8
Id>>8 :
)>>: ;
;>>; <
}?? 
)?? 
;?? 
migrationBuilderAA 
.AA 
CreateTableAA (
(AA( )
nameBB 
:BB 
$strBB (
,BB( )
columnsCC 
:CC 
tableCC 
=>CC !
newCC" %
{DD 
IdEE 
=EE 
tableEE 
.EE 
ColumnEE %
<EE% &
intEE& )
>EE) *
(EE* +
nullableEE+ 3
:EE3 4
falseEE5 :
)EE: ;
.FF 

AnnotationFF #
(FF# $
$strFF$ 8
,FF8 9
$strFF: @
)FF@ A
,FFA B
RoleIdGG 
=GG 
tableGG "
.GG" #
ColumnGG# )
<GG) *
stringGG* 0
>GG0 1
(GG1 2
nullableGG2 :
:GG: ;
falseGG< A
)GGA B
,GGB C
	ClaimTypeHH 
=HH 
tableHH  %
.HH% &
ColumnHH& ,
<HH, -
stringHH- 3
>HH3 4
(HH4 5
nullableHH5 =
:HH= >
trueHH? C
)HHC D
,HHD E

ClaimValueII 
=II  
tableII! &
.II& '
ColumnII' -
<II- .
stringII. 4
>II4 5
(II5 6
nullableII6 >
:II> ?
trueII@ D
)IID E
}JJ 
,JJ 
constraintsKK 
:KK 
tableKK "
=>KK# %
{LL 
tableMM 
.MM 

PrimaryKeyMM $
(MM$ %
$strMM% :
,MM: ;
xMM< =
=>MM> @
xMMA B
.MMB C
IdMMC E
)MME F
;MMF G
tableNN 
.NN 

ForeignKeyNN $
(NN$ %
nameOO 
:OO 
$strOO F
,OOF G
columnPP 
:PP 
xPP  !
=>PP" $
xPP% &
.PP& '
RoleIdPP' -
,PP- .
principalTableQQ &
:QQ& '
$strQQ( 5
,QQ5 6
principalColumnRR '
:RR' (
$strRR) -
,RR- .
onDeleteSS  
:SS  !
ReferentialActionSS" 3
.SS3 4
CascadeSS4 ;
)SS; <
;SS< =
}TT 
)TT 
;TT 
migrationBuilderVV 
.VV 
CreateTableVV (
(VV( )
nameWW 
:WW 
$strWW (
,WW( )
columnsXX 
:XX 
tableXX 
=>XX !
newXX" %
{YY 
IdZZ 
=ZZ 
tableZZ 
.ZZ 
ColumnZZ %
<ZZ% &
intZZ& )
>ZZ) *
(ZZ* +
nullableZZ+ 3
:ZZ3 4
falseZZ5 :
)ZZ: ;
.[[ 

Annotation[[ #
([[# $
$str[[$ 8
,[[8 9
$str[[: @
)[[@ A
,[[A B
UserId\\ 
=\\ 
table\\ "
.\\" #
Column\\# )
<\\) *
string\\* 0
>\\0 1
(\\1 2
nullable\\2 :
:\\: ;
false\\< A
)\\A B
,\\B C
	ClaimType]] 
=]] 
table]]  %
.]]% &
Column]]& ,
<]], -
string]]- 3
>]]3 4
(]]4 5
nullable]]5 =
:]]= >
true]]? C
)]]C D
,]]D E

ClaimValue^^ 
=^^  
table^^! &
.^^& '
Column^^' -
<^^- .
string^^. 4
>^^4 5
(^^5 6
nullable^^6 >
:^^> ?
true^^@ D
)^^D E
}__ 
,__ 
constraints`` 
:`` 
table`` "
=>``# %
{aa 
tablebb 
.bb 

PrimaryKeybb $
(bb$ %
$strbb% :
,bb: ;
xbb< =
=>bb> @
xbbA B
.bbB C
IdbbC E
)bbE F
;bbF G
tablecc 
.cc 

ForeignKeycc $
(cc$ %
namedd 
:dd 
$strdd F
,ddF G
columnee 
:ee 
xee  !
=>ee" $
xee% &
.ee& '
UserIdee' -
,ee- .
principalTableff &
:ff& '
$strff( 5
,ff5 6
principalColumngg '
:gg' (
$strgg) -
,gg- .
onDeletehh  
:hh  !
ReferentialActionhh" 3
.hh3 4
Cascadehh4 ;
)hh; <
;hh< =
}ii 
)ii 
;ii 
migrationBuilderkk 
.kk 
CreateTablekk (
(kk( )
namell 
:ll 
$strll (
,ll( )
columnsmm 
:mm 
tablemm 
=>mm !
newmm" %
{nn 
LoginProvideroo !
=oo" #
tableoo$ )
.oo) *
Columnoo* 0
<oo0 1
stringoo1 7
>oo7 8
(oo8 9
nullableoo9 A
:ooA B
falseooC H
)ooH I
,ooI J
ProviderKeypp 
=pp  !
tablepp" '
.pp' (
Columnpp( .
<pp. /
stringpp/ 5
>pp5 6
(pp6 7
nullablepp7 ?
:pp? @
falseppA F
)ppF G
,ppG H
ProviderDisplayNameqq '
=qq( )
tableqq* /
.qq/ 0
Columnqq0 6
<qq6 7
stringqq7 =
>qq= >
(qq> ?
nullableqq? G
:qqG H
trueqqI M
)qqM N
,qqN O
UserIdrr 
=rr 
tablerr "
.rr" #
Columnrr# )
<rr) *
stringrr* 0
>rr0 1
(rr1 2
nullablerr2 :
:rr: ;
falserr< A
)rrA B
}ss 
,ss 
constraintstt 
:tt 
tablett "
=>tt# %
{uu 
tablevv 
.vv 

PrimaryKeyvv $
(vv$ %
$strvv% :
,vv: ;
xvv< =
=>vv> @
newvvA D
{vvE F
xvvG H
.vvH I
LoginProvidervvI V
,vvV W
xvvX Y
.vvY Z
ProviderKeyvvZ e
}vvf g
)vvg h
;vvh i
tableww 
.ww 

ForeignKeyww $
(ww$ %
namexx 
:xx 
$strxx F
,xxF G
columnyy 
:yy 
xyy  !
=>yy" $
xyy% &
.yy& '
UserIdyy' -
,yy- .
principalTablezz &
:zz& '
$strzz( 5
,zz5 6
principalColumn{{ '
:{{' (
$str{{) -
,{{- .
onDelete||  
:||  !
ReferentialAction||" 3
.||3 4
Cascade||4 ;
)||; <
;||< =
}}} 
)}} 
;}} 
migrationBuilder 
. 
CreateTable (
(( )
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ '
,
ÄÄ' (
columns
ÅÅ 
:
ÅÅ 
table
ÅÅ 
=>
ÅÅ !
new
ÅÅ" %
{
ÇÇ 
UserId
ÉÉ 
=
ÉÉ 
table
ÉÉ "
.
ÉÉ" #
Column
ÉÉ# )
<
ÉÉ) *
string
ÉÉ* 0
>
ÉÉ0 1
(
ÉÉ1 2
nullable
ÉÉ2 :
:
ÉÉ: ;
false
ÉÉ< A
)
ÉÉA B
,
ÉÉB C
RoleId
ÑÑ 
=
ÑÑ 
table
ÑÑ "
.
ÑÑ" #
Column
ÑÑ# )
<
ÑÑ) *
string
ÑÑ* 0
>
ÑÑ0 1
(
ÑÑ1 2
nullable
ÑÑ2 :
:
ÑÑ: ;
false
ÑÑ< A
)
ÑÑA B
}
ÖÖ 
,
ÖÖ 
constraints
ÜÜ 
:
ÜÜ 
table
ÜÜ "
=>
ÜÜ# %
{
áá 
table
àà 
.
àà 

PrimaryKey
àà $
(
àà$ %
$str
àà% 9
,
àà9 :
x
àà; <
=>
àà= ?
new
àà@ C
{
ààD E
x
ààF G
.
ààG H
UserId
ààH N
,
ààN O
x
ààP Q
.
ààQ R
RoleId
ààR X
}
ààY Z
)
ààZ [
;
àà[ \
table
ââ 
.
ââ 

ForeignKey
ââ $
(
ââ$ %
name
ää 
:
ää 
$str
ää E
,
ääE F
column
ãã 
:
ãã 
x
ãã  !
=>
ãã" $
x
ãã% &
.
ãã& '
RoleId
ãã' -
,
ãã- .
principalTable
åå &
:
åå& '
$str
åå( 5
,
åå5 6
principalColumn
çç '
:
çç' (
$str
çç) -
,
çç- .
onDelete
éé  
:
éé  !
ReferentialAction
éé" 3
.
éé3 4
Cascade
éé4 ;
)
éé; <
;
éé< =
table
èè 
.
èè 

ForeignKey
èè $
(
èè$ %
name
êê 
:
êê 
$str
êê E
,
êêE F
column
ëë 
:
ëë 
x
ëë  !
=>
ëë" $
x
ëë% &
.
ëë& '
UserId
ëë' -
,
ëë- .
principalTable
íí &
:
íí& '
$str
íí( 5
,
íí5 6
principalColumn
ìì '
:
ìì' (
$str
ìì) -
,
ìì- .
onDelete
îî  
:
îî  !
ReferentialAction
îî" 3
.
îî3 4
Cascade
îî4 ;
)
îî; <
;
îî< =
}
ïï 
)
ïï 
;
ïï 
migrationBuilder
óó 
.
óó 
CreateTable
óó (
(
óó( )
name
òò 
:
òò 
$str
òò (
,
òò( )
columns
ôô 
:
ôô 
table
ôô 
=>
ôô !
new
ôô" %
{
öö 
UserId
õõ 
=
õõ 
table
õõ "
.
õõ" #
Column
õõ# )
<
õõ) *
string
õõ* 0
>
õõ0 1
(
õõ1 2
nullable
õõ2 :
:
õõ: ;
false
õõ< A
)
õõA B
,
õõB C
LoginProvider
úú !
=
úú" #
table
úú$ )
.
úú) *
Column
úú* 0
<
úú0 1
string
úú1 7
>
úú7 8
(
úú8 9
nullable
úú9 A
:
úúA B
false
úúC H
)
úúH I
,
úúI J
Name
ùù 
=
ùù 
table
ùù  
.
ùù  !
Column
ùù! '
<
ùù' (
string
ùù( .
>
ùù. /
(
ùù/ 0
nullable
ùù0 8
:
ùù8 9
false
ùù: ?
)
ùù? @
,
ùù@ A
Value
ûû 
=
ûû 
table
ûû !
.
ûû! "
Column
ûû" (
<
ûû( )
string
ûû) /
>
ûû/ 0
(
ûû0 1
nullable
ûû1 9
:
ûû9 :
true
ûû; ?
)
ûû? @
}
üü 
,
üü 
constraints
†† 
:
†† 
table
†† "
=>
††# %
{
°° 
table
¢¢ 
.
¢¢ 

PrimaryKey
¢¢ $
(
¢¢$ %
$str
¢¢% :
,
¢¢: ;
x
¢¢< =
=>
¢¢> @
new
¢¢A D
{
¢¢E F
x
¢¢G H
.
¢¢H I
UserId
¢¢I O
,
¢¢O P
x
¢¢Q R
.
¢¢R S
LoginProvider
¢¢S `
,
¢¢` a
x
¢¢b c
.
¢¢c d
Name
¢¢d h
}
¢¢i j
)
¢¢j k
;
¢¢k l
table
££ 
.
££ 

ForeignKey
££ $
(
££$ %
name
§§ 
:
§§ 
$str
§§ F
,
§§F G
column
•• 
:
•• 
x
••  !
=>
••" $
x
••% &
.
••& '
UserId
••' -
,
••- .
principalTable
¶¶ &
:
¶¶& '
$str
¶¶( 5
,
¶¶5 6
principalColumn
ßß '
:
ßß' (
$str
ßß) -
,
ßß- .
onDelete
®®  
:
®®  !
ReferentialAction
®®" 3
.
®®3 4
Cascade
®®4 ;
)
®®; <
;
®®< =
}
©© 
)
©© 
;
©© 
migrationBuilder
´´ 
.
´´ 
CreateTable
´´ (
(
´´( )
name
¨¨ 
:
¨¨ 
$str
¨¨ "
,
¨¨" #
columns
≠≠ 
:
≠≠ 
table
≠≠ 
=>
≠≠ !
new
≠≠" %
{
ÆÆ 
Id
ØØ 
=
ØØ 
table
ØØ 
.
ØØ 
Column
ØØ %
<
ØØ% &
int
ØØ& )
>
ØØ) *
(
ØØ* +
nullable
ØØ+ 3
:
ØØ3 4
false
ØØ5 :
)
ØØ: ;
.
∞∞ 

Annotation
∞∞ #
(
∞∞# $
$str
∞∞$ 8
,
∞∞8 9
$str
∞∞: @
)
∞∞@ A
,
∞∞A B
Name
±± 
=
±± 
table
±±  
.
±±  !
Column
±±! '
<
±±' (
string
±±( .
>
±±. /
(
±±/ 0
nullable
±±0 8
:
±±8 9
false
±±: ?
)
±±? @
,
±±@ A
Description
≤≤ 
=
≤≤  !
table
≤≤" '
.
≤≤' (
Column
≤≤( .
<
≤≤. /
string
≤≤/ 5
>
≤≤5 6
(
≤≤6 7
nullable
≤≤7 ?
:
≤≤? @
true
≤≤A E
)
≤≤E F
,
≤≤F G
Price
≥≥ 
=
≥≥ 
table
≥≥ !
.
≥≥! "
Column
≥≥" (
<
≥≥( )
float
≥≥) .
>
≥≥. /
(
≥≥/ 0
nullable
≥≥0 8
:
≥≥8 9
false
≥≥: ?
)
≥≥? @
,
≥≥@ A
Mark
¥¥ 
=
¥¥ 
table
¥¥  
.
¥¥  !
Column
¥¥! '
<
¥¥' (
string
¥¥( .
>
¥¥. /
(
¥¥/ 0
nullable
¥¥0 8
:
¥¥8 9
true
¥¥: >
)
¥¥> ?
,
¥¥? @
PowerHP
µµ 
=
µµ 
table
µµ #
.
µµ# $
Column
µµ$ *
<
µµ* +
int
µµ+ .
>
µµ. /
(
µµ/ 0
nullable
µµ0 8
:
µµ8 9
false
µµ: ?
)
µµ? @
,
µµ@ A
Capacity
∂∂ 
=
∂∂ 
table
∂∂ $
.
∂∂$ %
Column
∂∂% +
<
∂∂+ ,
string
∂∂, 2
>
∂∂2 3
(
∂∂3 4
nullable
∂∂4 <
:
∂∂< =
true
∂∂> B
)
∂∂B C
,
∂∂C D
ShopId
∑∑ 
=
∑∑ 
table
∑∑ "
.
∑∑" #
Column
∑∑# )
<
∑∑) *
int
∑∑* -
>
∑∑- .
(
∑∑. /
nullable
∑∑/ 7
:
∑∑7 8
true
∑∑9 =
)
∑∑= >
}
∏∏ 
,
∏∏ 
constraints
ππ 
:
ππ 
table
ππ "
=>
ππ# %
{
∫∫ 
table
ªª 
.
ªª 

PrimaryKey
ªª $
(
ªª$ %
$str
ªª% 4
,
ªª4 5
x
ªª6 7
=>
ªª8 :
x
ªª; <
.
ªª< =
Id
ªª= ?
)
ªª? @
;
ªª@ A
table
ºº 
.
ºº 

ForeignKey
ºº $
(
ºº$ %
name
ΩΩ 
:
ΩΩ 
$str
ΩΩ :
,
ΩΩ: ;
column
ææ 
:
ææ 
x
ææ  !
=>
ææ" $
x
ææ% &
.
ææ& '
ShopId
ææ' -
,
ææ- .
principalTable
øø &
:
øø& '
$str
øø( /
,
øø/ 0
principalColumn
¿¿ '
:
¿¿' (
$str
¿¿) -
,
¿¿- .
onDelete
¡¡  
:
¡¡  !
ReferentialAction
¡¡" 3
.
¡¡3 4
Restrict
¡¡4 <
)
¡¡< =
;
¡¡= >
}
¬¬ 
)
¬¬ 
;
¬¬ 
migrationBuilder
ƒƒ 
.
ƒƒ 
CreateIndex
ƒƒ (
(
ƒƒ( )
name
≈≈ 
:
≈≈ 
$str
≈≈ 2
,
≈≈2 3
table
∆∆ 
:
∆∆ 
$str
∆∆ )
,
∆∆) *
column
«« 
:
«« 
$str
««  
)
««  !
;
««! "
migrationBuilder
…… 
.
…… 
CreateIndex
…… (
(
……( )
name
   
:
   
$str
   %
,
  % &
table
ÀÀ 
:
ÀÀ 
$str
ÀÀ $
,
ÀÀ$ %
column
ÃÃ 
:
ÃÃ 
$str
ÃÃ (
,
ÃÃ( )
unique
ÕÕ 
:
ÕÕ 
true
ÕÕ 
,
ÕÕ 
filter
ŒŒ 
:
ŒŒ 
$str
ŒŒ 6
)
ŒŒ6 7
;
ŒŒ7 8
migrationBuilder
–– 
.
–– 
CreateIndex
–– (
(
––( )
name
—— 
:
—— 
$str
—— 2
,
——2 3
table
““ 
:
““ 
$str
““ )
,
““) *
column
”” 
:
”” 
$str
””  
)
””  !
;
””! "
migrationBuilder
’’ 
.
’’ 
CreateIndex
’’ (
(
’’( )
name
÷÷ 
:
÷÷ 
$str
÷÷ 2
,
÷÷2 3
table
◊◊ 
:
◊◊ 
$str
◊◊ )
,
◊◊) *
column
ÿÿ 
:
ÿÿ 
$str
ÿÿ  
)
ÿÿ  !
;
ÿÿ! "
migrationBuilder
⁄⁄ 
.
⁄⁄ 
CreateIndex
⁄⁄ (
(
⁄⁄( )
name
€€ 
:
€€ 
$str
€€ 1
,
€€1 2
table
‹‹ 
:
‹‹ 
$str
‹‹ (
,
‹‹( )
column
›› 
:
›› 
$str
››  
)
››  !
;
››! "
migrationBuilder
ﬂﬂ 
.
ﬂﬂ 
CreateIndex
ﬂﬂ (
(
ﬂﬂ( )
name
‡‡ 
:
‡‡ 
$str
‡‡ "
,
‡‡" #
table
·· 
:
·· 
$str
·· $
,
··$ %
column
‚‚ 
:
‚‚ 
$str
‚‚ )
)
‚‚) *
;
‚‚* +
migrationBuilder
‰‰ 
.
‰‰ 
CreateIndex
‰‰ (
(
‰‰( )
name
ÂÂ 
:
ÂÂ 
$str
ÂÂ %
,
ÂÂ% &
table
ÊÊ 
:
ÊÊ 
$str
ÊÊ $
,
ÊÊ$ %
column
ÁÁ 
:
ÁÁ 
$str
ÁÁ ,
,
ÁÁ, -
unique
ËË 
:
ËË 
true
ËË 
,
ËË 
filter
ÈÈ 
:
ÈÈ 
$str
ÈÈ :
)
ÈÈ: ;
;
ÈÈ; <
migrationBuilder
ÎÎ 
.
ÎÎ 
CreateIndex
ÎÎ (
(
ÎÎ( )
name
ÏÏ 
:
ÏÏ 
$str
ÏÏ ,
,
ÏÏ, -
table
ÌÌ 
:
ÌÌ 
$str
ÌÌ #
,
ÌÌ# $
column
ÓÓ 
:
ÓÓ 
$str
ÓÓ  
)
ÓÓ  !
;
ÓÓ! "
}
ÔÔ 	
	protected
ÒÒ 
override
ÒÒ 
void
ÒÒ 
Down
ÒÒ  $
(
ÒÒ$ %
MigrationBuilder
ÒÒ% 5
migrationBuilder
ÒÒ6 F
)
ÒÒF G
{
ÚÚ 	
migrationBuilder
ÛÛ 
.
ÛÛ 
	DropTable
ÛÛ &
(
ÛÛ& '
name
ÙÙ 
:
ÙÙ 
$str
ÙÙ (
)
ÙÙ( )
;
ÙÙ) *
migrationBuilder
ˆˆ 
.
ˆˆ 
	DropTable
ˆˆ &
(
ˆˆ& '
name
˜˜ 
:
˜˜ 
$str
˜˜ (
)
˜˜( )
;
˜˜) *
migrationBuilder
˘˘ 
.
˘˘ 
	DropTable
˘˘ &
(
˘˘& '
name
˙˙ 
:
˙˙ 
$str
˙˙ (
)
˙˙( )
;
˙˙) *
migrationBuilder
¸¸ 
.
¸¸ 
	DropTable
¸¸ &
(
¸¸& '
name
˝˝ 
:
˝˝ 
$str
˝˝ '
)
˝˝' (
;
˝˝( )
migrationBuilder
ˇˇ 
.
ˇˇ 
	DropTable
ˇˇ &
(
ˇˇ& '
name
ÄÄ 
:
ÄÄ 
$str
ÄÄ (
)
ÄÄ( )
;
ÄÄ) *
migrationBuilder
ÇÇ 
.
ÇÇ 
	DropTable
ÇÇ &
(
ÇÇ& '
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ "
)
ÉÉ" #
;
ÉÉ# $
migrationBuilder
ÖÖ 
.
ÖÖ 
	DropTable
ÖÖ &
(
ÖÖ& '
name
ÜÜ 
:
ÜÜ 
$str
ÜÜ #
)
ÜÜ# $
;
ÜÜ$ %
migrationBuilder
àà 
.
àà 
	DropTable
àà &
(
àà& '
name
ââ 
:
ââ 
$str
ââ #
)
ââ# $
;
ââ$ %
migrationBuilder
ãã 
.
ãã 
	DropTable
ãã &
(
ãã& '
name
åå 
:
åå 
$str
åå 
)
åå 
;
åå 
}
çç 	
}
éé 
}èè ˚
ÑC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Migrations\20220109170828_InitialCreateImagenes.cs
	namespace 	
ShopWaterPumpApi
 
. 

Migrations %
{ 
public 

partial 
class !
InitialCreateImagenes .
:/ 0
	Migration1 :
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
migrationBuilder		 
.		 
AlterColumn		 (
<		( )
float		) .
>		. /
(		/ 0
name

 
:

 
$str

 
,

 
table 
: 
$str #
,# $
nullable 
: 
true 
, 

oldClrType 
: 
typeof "
(" #
float# (
)( )
,) *
oldType 
: 
$str 
)  
;  !
migrationBuilder 
. 
AlterColumn (
<( )
int) ,
>, -
(- .
name 
: 
$str 
,  
table 
: 
$str #
,# $
nullable 
: 
true 
, 

oldClrType 
: 
typeof "
(" #
int# &
)& '
,' (
oldType 
: 
$str 
) 
;  
migrationBuilder 
. 
	AddColumn &
<& '
string' -
>- .
(. /
name 
: 
$str !
,! "
table 
: 
$str #
,# $
nullable 
: 
true 
) 
;  
} 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
migrationBuilder 
. 

DropColumn '
(' (
name   
:   
$str   !
,  ! "
table!! 
:!! 
$str!! #
)!!# $
;!!$ %
migrationBuilder## 
.## 
AlterColumn## (
<##( )
float##) .
>##. /
(##/ 0
name$$ 
:$$ 
$str$$ 
,$$ 
table%% 
:%% 
$str%% #
,%%# $
type&& 
:&& 
$str&& 
,&& 
nullable'' 
:'' 
false'' 
,''  

oldClrType(( 
:(( 
typeof(( "
(((" #
float((# (
)((( )
,(() *
oldNullable)) 
:)) 
true)) !
)))! "
;))" #
migrationBuilder++ 
.++ 
AlterColumn++ (
<++( )
int++) ,
>++, -
(++- .
name,, 
:,, 
$str,, 
,,,  
table-- 
:-- 
$str-- #
,--# $
type.. 
:.. 
$str.. 
,.. 
nullable// 
:// 
false// 
,//  

oldClrType00 
:00 
typeof00 "
(00" #
int00# &
)00& '
,00' (
oldNullable11 
:11 
true11 !
)11! "
;11" #
}22 	
}33 
}44 ó
yC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Migrations\20220109171518_ImagenPath.cs
	namespace 	
ShopWaterPumpApi
 
. 

Migrations %
{ 
public 

partial 
class 

ImagenPath #
:$ %
	Migration& /
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} Ì
gC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\DeleteModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
{ 
public 

class 
DeleteModel 
{		 
public

 
bool

 
	IsSuccess

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˚

hC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\ProductModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
{ 
public 

class 
ProductModel 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
Description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
float 
? 
Price 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Mark 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
	IFormFile 
Image 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ó
xC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\Security\CreateRoleViewModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
.! "
Security" *
{ 
public		 

class		 
CreateRoleViewModel		 $
{

 
[ 	
Required	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
Required	 
] 
public 
string 
NormalizedName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} ±
|C:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\Security\CreateUserRoleViewModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
.! "
Security" *
{ 
public 

class #
CreateUserRoleViewModel (
{		 
public

 
string

 
UserId

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
string 
RoleId 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} €
sC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\Security\LoginViewModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
.! "
Security" *
{ 
public		 

class		 
LoginViewModel		 
{

 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Î
vC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\Security\RegisterViewModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
.! "
Security" *
{ 
public		 

class		 
RegisterViewModel		 "
{

 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
MinimumLength '
=( )
$num* +
)+ ,
], -
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ©
xC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\Security\UserManagerResponse.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
.! "
Security" *
{ 
public 

class 
UserManagerResponse $
{		 
public

 
string

 
Token

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
bool 
	IsSuccess 
{ 
get  #
;# $
set% (
;( )
}* +
public 
IEnumerable 
< 
string !
>! "
Errors# )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DateTime 
? 

ExpireDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} õ

eC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\ShopModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
{ 
public		 

class		 
	ShopModel		 
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Phone 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
? 
Founded  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< 
WaterPumpModel )
>) *

WaterPumps+ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} ’
jC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Models\WaterPumpModel.cs
	namespace 	
ShopWaterPumpApi
 
. 
Models !
{ 
public 

class 
WaterPumpModel 
:  !
ProductModel" .
{		 
public 
int 
? 
PowerHP 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Capacity 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
int 
shopId !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ∫

\C:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Program.cs
	namespace

 	
ShopWaterPumpApi


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ∫
iC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\FileService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
{		 
public

 

class

 
FileService

 
:

 
IFileService

 +
{ 
public 
string 

UploadFile  
(  !
	IFormFile! *
file+ /
)/ 0
{ 	
string 
	imagePath 
= 
string %
.% &
Empty& +
;+ ,
var 

folderName 
= 
Path !
.! "
Combine" )
() *
$str* 5
,5 6
$str7 ?
)? @
;@ A
var 

pathToSave 
= 
Path !
.! "
Combine" )
() *
	Directory* 3
.3 4
GetCurrentDirectory4 G
(G H
)H I
,I J

folderNameK U
)U V
;V W
if 
( 
file 
. 
Length 
> 
$num 
)  
{ 
string 
	extension  
=! "
Path# '
.' (
GetExtension( 4
(4 5
file5 9
.9 :
FileName: B
)B C
;C D
var 
fileName 
= 
$" !
{! "
Guid" &
.& '
NewGuid' .
(. /
)/ 0
.0 1
ToString1 9
(9 :
): ;
}; <
{< =
	extension= F
}F G
"G H
;H I
var 
fullPath 
= 
Path #
.# $
Combine$ +
(+ ,

pathToSave, 6
,6 7
fileName8 @
)@ A
;A B
	imagePath 
= 
Path  
.  !
Combine! (
(( )

folderName) 3
,3 4
fileName5 =
)= >
;> ?
using 
( 
var 
stream !
=" #
new$ '

FileStream( 2
(2 3
fullPath3 ;
,; <
FileMode= E
.E F
CreateF L
)L M
)M N
{ 
file 
. 
CopyTo 
(  
stream  &
)& '
;' (
} 
} 
return 
	imagePath 
; 
} 	
}   
}!! √
jC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\IFileService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
{ 
public 

	interface 
IFileService !
{ 
string 

UploadFile 
( 
	IFormFile #
file$ (
)( )
;) *
} 
}		  
jC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\IShopService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
{ 
public		 

	interface		 
IShopService		 !
{

 
Task 
< 
IEnumerable 
< 
	ShopModel "
>" #
># $
GetShopsAsync% 2
(2 3
string3 9
orderBy: A
,A B
boolC G
showWaterPumpsH V
)V W
;W X
Task 
< 
	ShopModel 
> 
GetShopAsync $
($ %
int% (
	companyId) 2
,2 3
bool4 8
showWaterPumps9 G
)G H
;H I
Task 
< 
	ShopModel 
> 
CreateShopAsync '
(' (
	ShopModel( 1
	shopModel2 ;
); <
;< =
Task 
< 
DeleteModel 
> 
DeleteShopAsync )
() *
int* -
shopId. 4
)4 5
;5 6
Task 
< 
	ShopModel 
> 
UpdateShopAsync '
(' (
int( +
shopId, 2
,2 3
	ShopModel4 =
	shopModel> G
)G H
;H I
} 
} ⁄
pC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\IWaterPumpsService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
{ 
public		 

	interface		 
IWaterPumpsService		 '
{

 
Task 
< 
WaterPumpModel 
>  
CreateWaterPumpAsync 1
(1 2
int2 5
ShopId6 <
,< =
WaterPumpModel> L
	waterPumpM V
)V W
;W X
Task 
< 
WaterPumpModel 
> 
GetWaterPumpAsync .
(. /
int/ 2
ShopId3 9
,9 :
int; >
waterPumpId? J
)J K
;K L
Task 
< 
IEnumerable 
< 
WaterPumpModel '
>' (
>( )
GetWaterPumpsAsync* <
(< =
int= @
ShopIdA G
)G H
;H I
Task 
< 
bool 
>  
UpdateWaterPumpAsync '
(' (
int( +
ShopId, 2
,2 3
int4 7
waterPumpId8 C
,C D
WaterPumpModelE S
	WaterPumpT ]
)] ^
;^ _
Task 
< 
bool 
>  
DeleteWaterPumpAsync '
(' (
int( +
ShopId, 2
,2 3
int4 7
waterPumpId8 C
)C D
;D E
} 
} ≠	
sC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\Security\IUserService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
.# $
Security$ ,
{ 
public		 

	interface		 
IUserService		 !
{

 
Task 
< 
UserManagerResponse  
>  !
RegisterUserAsync" 3
(3 4
RegisterViewModel4 E
modelF K
)K L
;L M
Task 
< 
UserManagerResponse  
>  !
CreateRoleAsync" 1
(1 2
CreateRoleViewModel2 E
modelF K
)K L
;L M
Task 
< 
UserManagerResponse  
>  !
LoginUserAsync" 0
(0 1
LoginViewModel1 ?
model@ E
)E F
;F G
Task 
< 
UserManagerResponse  
>  !
CreateUserRoleAsync" 5
(5 6#
CreateUserRoleViewModel6 M
modelN S
)S T
;T U
} 
} ¸i
rC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\Security\UserService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
.# $
Security$ ,
{ 
public 

class 
UserService 
: 
IUserService *
{ 
private 
UserManager 
< 
IdentityUser (
>( )
userManager* 5
;5 6
private 
RoleManager 
< 
IdentityRole (
>( )
roleManager* 5
;5 6
private 
IConfiguration 
configuration ,
;, -
public 
UserService 
( 
UserManager &
<& '
IdentityUser' 3
>3 4
userManager5 @
,@ A
RoleManagerB M
<M N
IdentityRoleN Z
>Z [
roleManager\ g
,g h
IConfigurationi w
configuration	x Ö
)
Ö Ü
{ 	
this 
. 
userManager 
= 
userManager *
;* +
this 
. 
roleManager 
= 
roleManager *
;* +
this 
. 
configuration 
=  
configuration! .
;. /
} 	
public 
async 
Task 
< 
UserManagerResponse -
>- .
LoginUserAsync/ =
(= >
LoginViewModel> L
modelM R
)R S
{ 	
var 
user 
= 
await 
userManager (
.( )
FindByEmailAsync) 9
(9 :
model: ?
.? @
Email@ E
)E F
;F G
if!! 
(!! 
user!! 
==!! 
null!! 
)!! 
{"" 
return## 
new## 
UserManagerResponse## .
{$$ 
Token%% 
=%% 
$str%% F
,%%F G
	IsSuccess&& 
=&& 
false&&  %
,&&% &
}'' 
;'' 
}(( 
var** 
result** 
=** 
await** 
userManager** *
.*** +
CheckPasswordAsync**+ =
(**= >
user**> B
,**B C
model**D I
.**I J
Password**J R
)**R S
;**S T
if,, 
(,, 
!,, 
result,, 
),, 
return-- 
new-- 
UserManagerResponse-- .
{.. 
Token// 
=// 
$str// .
,//. /
	IsSuccess00 
=00 
false00  %
,00% &
}11 
;11 
var33 
roles33 
=33 
await33 
userManager33 )
.33) *
GetRolesAsync33* 7
(337 8
user338 <
)33< =
;33= >
var55 
claims55 
=55 
new55 
List55 !
<55! "
Claim55" '
>55' (
(55( )
)55) *
{66 
new77 
Claim77 
(77 
$str77 !
,77! "
model77# (
.77( )
Email77) .
)77. /
,77/ 0
new88 
Claim88 
(88 

ClaimTypes88 $
.88$ %
NameIdentifier88% 3
,883 4
user885 9
.889 :
Id88: <
)88< =
,88= >
}99 
;99 
foreach;; 
(;; 
var;; 
role;; 
in;;  
roles;;! &
);;& '
{<< 
claims== 
.== 
Add== 
(== 
new== 
Claim== $
(==$ %

ClaimTypes==% /
.==/ 0
Role==0 4
,==4 5
role==6 :
)==: ;
)==; <
;==< =
}>> 
varAA 
keyAA 
=AA 
newAA  
SymmetricSecurityKeyAA .
(AA. /
EncodingAA/ 7
.AA7 8
UTF8AA8 <
.AA< =
GetBytesAA= E
(AAE F
configurationAAF S
[AAS T
$strAAT f
]AAf g
)AAg h
)AAh i
;AAi j
varCC 
tokenCC 
=CC 
newCC 
JwtSecurityTokenCC ,
(CC, -
issuerDD 
:DD 
configurationDD %
[DD% &
$strDD& ;
]DD; <
,DD< =
audienceEE 
:EE 
configurationEE '
[EE' (
$strEE( ?
]EE? @
,EE@ A
claimsFF 
:FF 
claimsFF 
,FF 
expiresGG 
:GG 
DateTimeGG !
.GG! "
NowGG" %
.GG% &
AddHoursGG& .
(GG. /
$numGG/ 0
)GG0 1
,GG1 2
signingCredentialsHH "
:HH" #
newHH$ '
SigningCredentialsHH( :
(HH: ;
keyHH; >
,HH> ?
SecurityAlgorithmsHH@ R
.HHR S

HmacSha256HHS ]
)HH] ^
)HH^ _
;HH_ `
stringJJ 
tokenAsStringJJ  
=JJ! "
newJJ# &#
JwtSecurityTokenHandlerJJ' >
(JJ> ?
)JJ? @
.JJ@ A

WriteTokenJJA K
(JJK L
tokenJJL Q
)JJQ R
;JJR S
returnLL 
newLL 
UserManagerResponseLL *
{MM 
TokenNN 
=NN 
tokenAsStringNN %
,NN% &
	IsSuccessOO 
=OO 
trueOO  
,OO  !

ExpireDatePP 
=PP 
tokenPP "
.PP" #
ValidToPP# *
}QQ 
;QQ 
}RR 	
publicTT 
asyncTT 
TaskTT 
<TT 
UserManagerResponseTT -
>TT- .
RegisterUserAsyncTT/ @
(TT@ A
RegisterViewModelTTA R
modelTTS X
)TTX Y
{UU 	
ifVV 
(VV 
modelVV 
==VV 
nullVV 
)VV 
{WW 
throwXX 
newXX "
NullReferenceExceptionXX 0
(XX0 1
$strXX1 @
)XX@ A
;XXA B
}YY 
if[[ 
([[ 
model[[ 
.[[ 
Password[[ 
!=[[ !
model[[" '
.[[' (
ConfirmPassword[[( 7
)[[7 8
return\\ 
new\\ 
UserManagerResponse\\ .
{]] 
Token^^ 
=^^ 
$str^^ I
,^^I J
	IsSuccess__ 
=__ 
false__  %
,__% &
}`` 
;`` 
varbb 
identityUserbb 
=bb 
newbb "
IdentityUserbb# /
{cc 
Emaildd 
=dd 
modeldd 
.dd 
Emaildd #
,dd# $
UserNameee 
=ee 
modelee  
.ee  !
Emailee! &
}ff 
;ff 
varhh 
resulthh 
=hh 
awaithh 
userManagerhh *
.hh* +
CreateAsynchh+ 6
(hh6 7
identityUserhh7 C
,hhC D
modelhhE J
.hhJ K
PasswordhhK S
)hhS T
;hhT U
ifjj 
(jj 
resultjj 
.jj 
	Succeededjj  
)jj  !
{kk 
returnll 
newll 
UserManagerResponsell .
{mm 
Tokennn 
=nn 
$strnn 8
,nn8 9
	IsSuccessoo 
=oo 
trueoo  $
,oo$ %
}pp 
;pp 
}qq 
returnss 
newss 
UserManagerResponsess *
{tt 
Tokenuu 
=uu 
$struu -
,uu- .
	IsSuccessvv 
=vv 
falsevv !
,vv! "
Errorsww 
=ww 
resultww 
.ww  
Errorsww  &
.ww& '
Selectww' -
(ww- .
eww. /
=>ww0 2
eww3 4
.ww4 5
Descriptionww5 @
)ww@ A
}xx 
;xx 
}yy 	
public{{ 
async{{ 
Task{{ 
<{{ 
UserManagerResponse{{ -
>{{- .
CreateRoleAsync{{/ >
({{> ?
CreateRoleViewModel{{? R
model{{S X
){{X Y
{|| 	
var~~ 
identityRole~~ 
=~~ 
new~~ "
IdentityRole~~# /
(~~/ 0
)~~0 1
{ 
Name
ÄÄ 
=
ÄÄ 
model
ÄÄ 
.
ÄÄ 
Name
ÄÄ !
,
ÄÄ! "
NormalizedName
ÅÅ 
=
ÅÅ  
model
ÅÅ! &
.
ÅÅ& '
NormalizedName
ÅÅ' 5
}
ÇÇ 
;
ÇÇ 
var
ÑÑ 
result
ÑÑ 
=
ÑÑ 
await
ÑÑ 
roleManager
ÑÑ *
.
ÑÑ* +
CreateAsync
ÑÑ+ 6
(
ÑÑ6 7
identityRole
ÑÑ7 C
)
ÑÑC D
;
ÑÑD E
if
ÜÜ 
(
ÜÜ 
result
ÜÜ 
.
ÜÜ 
	Succeeded
ÜÜ  
)
ÜÜ  !
{
áá 
return
àà 
new
àà !
UserManagerResponse
àà .
{
ââ 
Token
ää 
=
ää 
$str
ää 8
,
ää8 9
	IsSuccess
ãã 
=
ãã 
true
ãã  $
,
ãã$ %
}
åå 
;
åå 
}
çç 
return
èè 
new
èè !
UserManagerResponse
èè *
{
êê 
Token
ëë 
=
ëë 
$str
ëë -
,
ëë- .
	IsSuccess
íí 
=
íí 
false
íí !
,
íí! "
Errors
ìì 
=
ìì 
result
ìì 
.
ìì  
Errors
ìì  &
.
ìì& '
Select
ìì' -
(
ìì- .
e
ìì. /
=>
ìì0 2
e
ìì3 4
.
ìì4 5
Description
ìì5 @
)
ìì@ A
}
îî 
;
îî 
}
ïï 	
public
òò 
async
òò 
Task
òò 
<
òò !
UserManagerResponse
òò -
>
òò- .!
CreateUserRoleAsync
òò/ B
(
òòB C%
CreateUserRoleViewModel
òòC Z
model
òò[ `
)
òò` a
{
ôô 	
var
öö 
role
öö 
=
öö 
await
öö 
roleManager
öö (
.
öö( )
FindByIdAsync
öö) 6
(
öö6 7
model
öö7 <
.
öö< =
RoleId
öö= C
)
ööC D
;
ööD E
if
õõ 
(
õõ 
role
õõ 
==
õõ 
null
õõ 
)
õõ 
{
úú 
return
ùù 
new
ùù !
UserManagerResponse
ùù .
{
ûû 
Token
üü 
=
üü 
$str
üü 1
,
üü1 2
	IsSuccess
†† 
=
†† 
false
††  %
}
°° 
;
°° 
}
¢¢ 
var
§§ 
user
§§ 
=
§§ 
await
§§ 
userManager
§§ (
.
§§( )
FindByIdAsync
§§) 6
(
§§6 7
model
§§7 <
.
§§< =
UserId
§§= C
)
§§C D
;
§§D E
if
•• 
(
•• 
role
•• 
==
•• 
null
•• 
)
•• 
{
¶¶ 
return
ßß 
new
ßß !
UserManagerResponse
ßß .
{
®® 
Token
©© 
=
©© 
$str
©© 1
,
©©1 2
	IsSuccess
™™ 
=
™™ 
false
™™  %
}
´´ 
;
´´ 
}
¨¨ 
if
ÆÆ 
(
ÆÆ 
await
ÆÆ 
userManager
ÆÆ !
.
ÆÆ! "
IsInRoleAsync
ÆÆ" /
(
ÆÆ/ 0
user
ÆÆ0 4
,
ÆÆ4 5
role
ÆÆ6 :
.
ÆÆ: ;
Name
ÆÆ; ?
)
ÆÆ? @
)
ÆÆ@ A
{
ØØ 
return
∞∞ 
new
∞∞ !
UserManagerResponse
∞∞ .
{
±± 
Token
≤≤ 
=
≤≤ 
$str
≤≤ 3
,
≤≤3 4
	IsSuccess
≥≥ 
=
≥≥ 
false
≥≥  %
}
¥¥ 
;
¥¥ 
}
µµ 
var
∑∑ 
result
∑∑ 
=
∑∑ 
await
∑∑ 
userManager
∑∑ *
.
∑∑* +
AddToRoleAsync
∑∑+ 9
(
∑∑9 :
user
∑∑: >
,
∑∑> ?
role
∑∑@ D
.
∑∑D E
Name
∑∑E I
)
∑∑I J
;
∑∑J K
if
ππ 
(
ππ 
result
ππ 
.
ππ 
	Succeeded
ππ  
)
ππ  !
{
∫∫ 
return
ªª 
new
ªª !
UserManagerResponse
ªª .
{
ºº 
Token
ΩΩ 
=
ΩΩ 
$str
ΩΩ +
,
ΩΩ+ ,
	IsSuccess
ææ 
=
ææ 
true
ææ  $
}
øø 
;
øø 
}
¿¿ 
return
¬¬ 
new
¬¬ !
UserManagerResponse
¬¬ *
{
√√ 
Token
ƒƒ 
=
ƒƒ 
$str
ƒƒ .
,
ƒƒ. /
	IsSuccess
≈≈ 
=
≈≈ 
false
≈≈ !
}
∆∆ 
;
∆∆ 
}
«« 	
}
»» 
}…… —B
jC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\ShopsService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
{ 
public 

class 
ShopsService 
: 
IShopService  ,
{ 
ILibraryRepository 
_libraryRepository -
;- .
private 
IMapper 
_mapper 
;  
private 
HashSet 
< 
string 
> $
allowedOrderByParameters  8
=9 :
new; >
HashSet? F
<F G
stringG M
>M N
(N O
)O P
{ 	
$str 
, 
$str 
, 
$str 
, 
$str 
} 	
;	 

public 
ShopsService 
( 
ILibraryRepository .
libraryRepository/ @
,@ A
IMapperB I
mapperJ P
)P Q
{ 	
_libraryRepository 
=  
libraryRepository! 2
;2 3
_mapper 
= 
mapper 
; 
} 	
public   
async   
Task   
<   
	ShopModel   #
>  # $
CreateShopAsync  % 4
(  4 5
	ShopModel  5 >
	shopModel  ? H
)  H I
{!! 	
var"" 

shopEntity"" 
="" 
_mapper"" $
.""$ %
Map""% (
<""( )

ShopEntity"") 3
>""3 4
(""4 5
	shopModel""5 >
)""> ?
;""? @
_libraryRepository## 
.## 

CreateShop## )
(##) *

shopEntity##* 4
)##4 5
;##5 6
var$$ 
result$$ 
=$$ 
await$$ 
_libraryRepository$$ 1
.$$1 2
SaveChangesAsync$$2 B
($$B C
)$$C D
;$$D E
if&& 
(&& 
result&& 
)&& 
{'' 
return(( 
_mapper(( 
.(( 
Map(( "
<((" #
	ShopModel((# ,
>((, -
(((- .

shopEntity((. 8
)((8 9
;((9 :
})) 
throw++ 
new++ 
	Exception++ 
(++  
$str++  0
)++0 1
;++1 2
},, 	
public.. 
async.. 
Task.. 
<.. 
DeleteModel.. %
>..% &
DeleteShopAsync..' 6
(..6 7
int..7 :
shopId..; A
)..A B
{// 	
await00 
GetShopAsync00 
(00 
shopId00 %
)00% &
;00& '
var22 
DeleteResult22 
=22 
await22 $
_libraryRepository22% 7
.227 8
DeleteShopAsync228 G
(22G H
shopId22H N
)22N O
;22O P
var44 

saveResult44 
=44 
await44 "
_libraryRepository44# 5
.445 6
SaveChangesAsync446 F
(44F G
)44G H
;44H I
if66 
(66 
!66 

saveResult66 
||66 
!66 
DeleteResult66 *
)66* +
{77 
throw88 
new88 
	Exception88 #
(88# $
$str88$ 4
)884 5
;885 6
}99 
if<< 
(<< 

saveResult<< 
)<< 
{== 
return>> 
new>> 
DeleteModel>> &
(>>& '
)>>' (
{?? 
	IsSuccess@@ 
=@@ 

saveResult@@  *
,@@* +
MessageAA 
=AA 
$strAA 5
}BB 
;BB 
}CC 
elseCC 
{DD 
returnEE 
newEE 
DeleteModelEE &
(EE& '
)EE' (
{FF 
	IsSuccessGG 
=GG 

saveResultGG  *
,GG* +
MessageHH 
=HH 
$strHH 9
}II 
;II 
}JJ 
}KK 	
publicMM 
asyncMM 
TaskMM 
<MM 
IEnumerableMM %
<MM% &
	ShopModelMM& /
>MM/ 0
>MM0 1
GetShopsAsyncMM2 ?
(MM? @
stringMM@ F
orderByMMG N
,MMN O
boolMMP T
showWaterPumpsMMU c
)MMc d
{NN 	
ifOO 
(OO 
!OO $
allowedOrderByParametersOO )
.OO) *
ContainsOO* 2
(OO2 3
orderByOO3 :
.OO: ;
ToLowerOO; B
(OOB C
)OOC D
)OOD E
)OOE F
{PP 
throwQQ 
newQQ (
BadRequestOperationExceptionQQ 6
(QQ6 7
$"QQ7 9
$strQQ9 D
{QQD E
orderByQQE L
}QQL M
$strQQM x
{QQx y
stringQQy 
.	QQ Ä
Join
QQÄ Ñ
(
QQÑ Ö
$str
QQÖ à
,
QQà â&
allowedOrderByParameters
QQä ¢
)
QQ¢ £
}
QQ£ §
"
QQ§ •
)
QQ• ¶
;
QQ¶ ß
}RR 
varTT 

entityListTT 
=TT 
awaitTT "
_libraryRepositoryTT# 5
.TT5 6
GetShopssAsyncTT6 D
(TTD E
orderByTTE L
,TTL M
showWaterPumpsTTN \
)TT\ ]
;TT] ^
varUU 
	modelListUU 
=UU 
_mapperUU #
.UU# $
MapUU$ '
<UU' (
IEnumerableUU( 3
<UU3 4
	ShopModelUU4 =
>UU= >
>UU> ?
(UU? @

entityListUU@ J
)UUJ K
;UUK L
returnVV 
	modelListVV 
;VV 
}WW 	
publicYY 
asyncYY 
TaskYY 
<YY 
	ShopModelYY #
>YY# $
GetShopAsyncYY% 1
(YY1 2
intYY2 5
	companyIDYY6 ?
,YY? @
boolYYA E
showWaterPumpsYYF T
=YYU V
falseYYW \
)YY\ ]
{ZZ 	
var[[ 
shop[[ 
=[[ 
await[[ 
_libraryRepository[[ /
.[[/ 0
GetShopAsync[[0 <
([[< =
	companyID[[= F
,[[F G
showWaterPumps[[H V
)[[V W
;[[W X
if\\ 
(\\ 
shop\\ 
==\\ 
null\\ 
)\\ 
{]] 
throw^^ 
new^^ &
NotFoundOperationException^^ 4
(^^4 5
$"^^5 7
$str^^7 H
{^^H I
shop^^I M
.^^M N
Id^^N P
}^^P Q
$str^^Q a
"^^a b
)^^b c
;^^c d
}__ 
returnaa 
_mapperaa 
.aa 
Mapaa 
<aa 
	ShopModelaa (
>aa( )
(aa) *
shopaa* .
)aa. /
;aa/ 0
}bb 	
publicdd 
asyncdd 
Taskdd 
<dd 
	ShopModeldd #
>dd# $
UpdateShopAsyncdd% 4
(dd4 5
intdd5 8
shopIddd9 ?
,dd? @
	ShopModelddA J
	shopModelddK T
)ddT U
{ee 	
varff 
companyEntityff 
=ff 
_mapperff  '
.ff' (
Mapff( +
<ff+ ,

ShopEntityff, 6
>ff6 7
(ff7 8
	shopModelff8 A
)ffA B
;ffB C
awaitgg 
GetShopAsyncgg 
(gg 
shopIdgg %
)gg% &
;gg& '
companyEntityhh 
.hh 
Idhh 
=hh 
shopIdhh %
;hh% &
_libraryRepositoryii 
.ii 

UpdateShopii )
(ii) *
companyEntityii* 7
)ii7 8
;ii8 9
varkk 

saveResultkk 
=kk 
awaitkk "
_libraryRepositorykk# 5
.kk5 6
SaveChangesAsynckk6 F
(kkF G
)kkG H
;kkH I
ifmm 
(mm 
!mm 

saveResultmm 
)mm 
{nn 
throwoo 
newoo 
	Exceptionoo #
(oo# $
$stroo$ 4
)oo4 5
;oo5 6
}pp 
returnqq 
	shopModelqq 
;qq 
}rr 	
}ss 
}tt àG
oC:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Services\WaterPumpsService.cs
	namespace 	
ShopWaterPumpApi
 
. 
Services #
{ 
public 

class 
WaterPumpsService "
:# $
IWaterPumpsService% 7
{ 
private 
IMapper 
_mapper 
;  
private 
ILibraryRepository "
_libraryRepository# 5
;5 6
public 
WaterPumpsService  
(  !
IMapper! (
mapper) /
,/ 0
ILibraryRepository1 C
libraryRepositoryD U
)U V
{ 	
_mapper 
= 
mapper 
; 
_libraryRepository 
=  
libraryRepository! 2
;2 3
} 	
public 
async 
Task 
< 
WaterPumpModel (
>( ) 
CreateWaterPumpAsync* >
(> ?
int? B
ShopIdC I
,I J
WaterPumpModelK Y
	waterPumpZ c
)c d
{ 	
await 
validateShop 
( 
ShopId %
)% &
;& '
	waterPump 
. 
shopId 
= 
ShopId %
;% &
var 
waterPumpEntity 
=  !
_mapper" )
.) *
Map* -
<- .
WaterPumpEntity. =
>= >
(> ?
	waterPump? H
)H I
;I J
_libraryRepository 
. 
CreateWaterPump .
(. /
waterPumpEntity/ >
)> ?
;? @
var 

saveResult 
= 
await "
_libraryRepository# 5
.5 6
SaveChangesAsync6 F
(F G
)G H
;H I
if 
( 
! 

saveResult 
) 
{   
throw!! 
new!! 
	Exception!! #
(!!# $
$str!!$ 0
)!!0 1
;!!1 2
}"" 
var$$ 
modelToReturn$$ 
=$$ 
_mapper$$  '
.$$' (
Map$$( +
<$$+ ,
WaterPumpModel$$- ;
>$$; <
($$< =
waterPumpEntity$$= L
)$$L M
;$$M N
modelToReturn%% 
.%% 
shopId%%  
=%%! "
ShopId%%# )
;%%) *
return&& 
modelToReturn&&  
;&&  !
}'' 	
public)) 
async)) 
Task)) 
<)) 
bool)) 
>))  
DeleteWaterPumpAsync))  4
())4 5
int))5 8
ShopId))9 ?
,))? @
int))A D
waterPumpId))E P
)))P Q
{** 	
await++ 
GetWaterPumpAsync++ #
(++# $
ShopId++$ *
,++* +
waterPumpId++, 7
)++7 8
;++8 9
_libraryRepository,, 
.,, 
DeleteWaterPump,, .
(,,. /
waterPumpId,,/ :
),,: ;
;,,; <
var-- 

saveRestul-- 
=-- 
await-- "
_libraryRepository--# 5
.--5 6
SaveChangesAsync--6 F
(--F G
)--G H
;--H I
if.. 
(.. 
!.. 

saveRestul.. 
).. 
{// 
throw00 
new00 
	Exception00 #
(00# $
$str00$ 9
)009 :
;00: ;
}11 
return22 
true22 
;22 
}33 	
public55 
async55 
Task55 
<55 
WaterPumpModel55 (
>55( )
GetWaterPumpAsync55* ;
(55; <
int55< ?
ShopId55@ F
,55F G
int55H K
waterPumpId55L W
)55W X
{66 	
await77 
validateShop77 
(77 
ShopId77 %
)77% &
;77& '
await88 
validateWaterPump88 #
(88# $
waterPumpId88$ /
)88/ 0
;880 1
var99 
	waterPump99 
=99 
await99 !
_libraryRepository99" 4
.994 5
GetWaterPumpAsync995 F
(99F G
waterPumpId99G R
)99R S
;99S T
if:: 
(:: 
	waterPump:: 
.:: 
Shop:: 
.:: 
Id:: !
!=::" $
ShopId::% +
)::+ ,
{;; 
throw<< 
new<< &
NotFoundOperationException<< 4
(<<4 5
$"<<5 7
$str<<7 H
{<<H I
waterPumpId<<I T
}<<T U
$str<<U u
{<<u v
ShopId<<v |
}<<| }
"<<} ~
)<<~ 
;	<< Ä
}== 
return>> 
_mapper>> 
.>> 
Map>> 
<>> 
WaterPumpModel>> -
>>>- .
(>>. /
	waterPump>>/ 8
)>>8 9
;>>9 :
}?? 	
publicAA 
asyncAA 
TaskAA 
<AA 
IEnumerableAA %
<AA% &
WaterPumpModelAA& 4
>AA4 5
>AA5 6
GetWaterPumpsAsyncAA7 I
(AAI J
intAAJ M
ShopIdAAN T
)AAT U
{BB 	
awaitCC 
validateShopCC 
(CC 
ShopIdCC %
)CC% &
;CC& '
varDD 

waterPumpsDD 
=DD 
awaitDD "
_libraryRepositoryDD# 5
.DD5 6
GetWaterPumpsAsyncDD6 H
(DDH I
ShopIdDDI O
)DDO P
;DDP Q
returnEE 
_mapperEE 
.EE 
MapEE 
<EE 
IEnumerableEE *
<EE* +
WaterPumpModelEE+ 9
>EE9 :
>EE: ;
(EE; <

waterPumpsEE< F
)EEF G
;EEG H
}FF 	
publicHH 
asyncHH 
TaskHH 
<HH 
boolHH 
>HH  
UpdateWaterPumpAsyncHH  4
(HH4 5
intHH5 8
ShopIdHH9 ?
,HH? @
intHHA D
waterPumpIdHHE P
,HHP Q
WaterPumpModelHHR `
	waterPumpHHa j
)HHj k
{II 	
awaitJJ 
GetWaterPumpAsyncJJ #
(JJ# $
ShopIdJJ$ *
,JJ* +
waterPumpIdJJ, 7
)JJ7 8
;JJ8 9
	waterPumpKK 
.KK 
IdKK 
=KK 
waterPumpIdKK &
;KK& '
awaitLL 
_libraryRepositoryLL $
.LL$ % 
UpdateWaterPumpAsyncLL% 9
(LL9 :
_mapperLL: A
.LLA B
MapLLB E
<LLE F
WaterPumpEntityLLF U
>LLU V
(LLV W
	waterPumpLLW `
)LL` a
)LLa b
;LLb c
varMM 

saveRestulMM 
=MM 
awaitMM "
_libraryRepositoryMM# 5
.MM5 6
SaveChangesAsyncMM6 F
(MMF G
)MMG H
;MMH I
ifNN 
(NN 
!NN 

saveRestulNN 
)NN 
{OO 
throwPP 
newPP 
	ExceptionPP #
(PP# $
$strPP$ 9
)PP9 :
;PP: ;
}QQ 
returnRR 
trueRR 
;RR 
}SS 	
privateUU 
asyncUU 
TaskUU 
validateShopUU '
(UU' (
intUU( +
shopIdUU, 2
)UU2 3
{VV 	
varWW 
companyWW 
=WW 
awaitWW 
_libraryRepositoryWW  2
.WW2 3
GetShopAsyncWW3 ?
(WW? @
shopIdWW@ F
)WWF G
;WWG H
ifXX 
(XX 
companyXX 
==XX 
nullXX 
)XX  
{YY 
throwZZ 
newZZ &
NotFoundOperationExceptionZZ 4
(ZZ4 5
$"ZZ5 7
$strZZ7 F
{ZZF G
shopIdZZG M
}ZZM N
$strZZN ^
"ZZ^ _
)ZZ_ `
;ZZ` a
}[[ 
}\\ 	
private^^ 
async^^ 
Task^^ 
validateWaterPump^^ ,
(^^, -
int^^- 0
waterPumpId^^1 <
)^^< =
{__ 	
var`` 
	waterPump`` 
=`` 
await`` !
_libraryRepository``" 4
.``4 5
GetWaterPumpAsync``5 F
(``F G
waterPumpId``G R
)``R S
;``S T
ifaa 
(aa 
	waterPumpaa 
==aa 
nullaa !
)aa! "
{bb 
throwcc 
newcc &
NotFoundOperationExceptioncc 4
(cc4 5
$"cc5 7
$strcc7 H
{ccH I
waterPumpIdccI T
}ccT U
$strccU e
"cce f
)ccf g
;ccg h
}dd 
}ee 	
}ff 
}gg ﬂA
\C:\uNIVERSIDAD\Gestion de calidad\respos\final Proyect\ShopWaterPump\VideoGameAPI\Startup.cs
	namespace 	
ShopWaterPumpApi
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration   
=   
configuration   )
;  ) *
}!! 	
public## 
IConfiguration## 
Configuration## +
{##, -
get##. 1
;##1 2
}##3 4
public&& 
void&& 
ConfigureServices&& %
(&&% &
IServiceCollection&&& 8
services&&9 A
)&&A B
{'' 	
services(( 
.(( 
AddControllers(( #
(((# $
)(($ %
;((% &
services** 
.** 
AddTransient** !
<**! "
IShopService**" .
,**. /
ShopsService**0 <
>**< =
(**= >
)**> ?
;**? @
services++ 
.++ 
AddTransient++ !
<++! "
IWaterPumpsService++" 4
,++4 5
WaterPumpsService++6 G
>++G H
(++H I
)++I J
;++J K
services,, 
.,, 
AddTransient,, !
<,,! "
ILibraryRepository,," 4
,,,4 5
LibraryRepository,,6 G
>,,G H
(,,H I
),,I J
;,,J K
services-- 
.-- 
	AddScoped-- 
<-- 
IUserService-- +
,--+ ,
UserService--- 8
>--8 9
(--9 :
)--: ;
;--; <
services.. 
... 
AddTransient.. !
<..! "
IFileService.." .
,... /
FileService..0 ;
>..; <
(..< =
)..= >
;..> ?
services11 
.11 
AddDbContext11 !
<11! "
LibraryDbContext11" 2
>112 3
(113 4
options114 ;
=>11< >
{11? @
options22 
.22 
UseSqlServer22 $
(22$ %
Configuration22% 2
.222 3
GetConnectionString223 F
(22F G
$str22G Y
)22Y Z
)22Z [
;22[ \
}33 
)33 
;33 
services66 
.66 
AddIdentity66  
<66  !
IdentityUser66! -
,66- .
IdentityRole66/ ;
>66; <
(66< =
options66= D
=>66E G
{66H I
options77 
.77 
Password77  
.77  !
RequireDigit77! -
=77. /
true770 4
;774 5
options88 
.88 
Password88  
.88  !
RequireLowercase88! 1
=882 3
true884 8
;888 9
}99 
)99 
.99 $
AddEntityFrameworkStores99 '
<99' (
LibraryDbContext99( 8
>998 9
(999 :
)99: ;
.:: $
AddDefaultTokenProviders:: %
(::% &
)::& '
;::' (
services== 
.== 
AddAuthentication== &
(==& '
auth==' +
=>==, .
{>> 
auth?? 
.?? %
DefaultAuthenticateScheme?? .
=??/ 0
JwtBearerDefaults??1 B
.??B C 
AuthenticationScheme??C W
;??W X
auth@@ 
.@@ "
DefaultChallengeScheme@@ +
=@@, -
JwtBearerDefaults@@. ?
.@@? @ 
AuthenticationScheme@@@ T
;@@T U
}AA 
)AA 
.AA 
AddJwtBearerAA 
(AA 
optionsAA #
=>AA$ &
{BB 
optionsCC 
.CC %
TokenValidationParametersCC 1
=CC2 3
newCC4 7
	MicrosoftCC8 A
.CCA B
IdentityModelCCB O
.CCO P
TokensCCP V
.CCV W%
TokenValidationParametersCCW p
{DD 
ValidateIssuerEE "
=EE# $
trueEE% )
,EE) *
ValidateAudienceFF $
=FF% &
trueFF' +
,FF+ ,
ValidAudienceGG !
=GG" #
ConfigurationGG$ 1
[GG1 2
$strGG2 I
]GGI J
,GGJ K
ValidIssuerHH 
=HH  !
ConfigurationHH" /
[HH/ 0
$strHH0 E
]HHE F
,HHF G!
RequireExpirationTimeII )
=II* +
trueII, 0
,II0 1
IssuerSigningKeyJJ $
=JJ% &
newJJ' * 
SymmetricSecurityKeyJJ+ ?
(JJ? @
EncodingJJ@ H
.JJH I
UTF8JJI M
.JJM N
GetBytesJJN V
(JJV W
ConfigurationJJW d
[JJd e
$strJJe w
]JJw x
)JJx y
)JJy z
,JJz {$
ValidateIssuerSigningKeyKK ,
=KK- .
trueKK/ 3
}LL 
;LL 
}MM 
)MM 
;MM 
servicesPP 
.PP 
AddAutoMapperPP "
(PP" #
typeofPP# )
(PP) *
StartupPP* 1
)PP1 2
)PP2 3
;PP3 4
servicesRR 
.RR 
AddCorsRR 
(RR 
cRR 
=>RR !
{SS 
cTT 
.TT 
	AddPolicyTT 
(TT 
$strTT )
,TT) *
optionsTT+ 2
=>TT3 5
{TT6 7
optionsTT8 ?
.TT? @
AllowAnyOriginTT@ N
(TTN O
)TTO P
;TTP Q
optionsTTR Y
.TTY Z
AllowAnyMethodTTZ h
(TTh i
)TTi j
;TTj k
optionsTTl s
.TTs t
AllowAnyHeader	TTt Ç
(
TTÇ É
)
TTÉ Ñ
;
TTÑ Ö
}
TTÜ á
)
TTá à
;
TTà â
}UU 
)UU 
;UU 
}VV 	
publicXX 
voidXX 
	ConfigureXX 
(XX 
IApplicationBuilderXX 1
appXX2 5
,XX5 6
IWebHostEnvironmentXX7 J
envXXK N
)XXN O
{YY 	
if\\ 
(\\ 
env\\ 
.\\ 
IsDevelopment\\ !
(\\! "
)\\" #
)\\# $
{]] 
app^^ 
.^^ %
UseDeveloperExceptionPage^^ -
(^^- .
)^^. /
;^^/ 0
}__ 
appaa 
.aa 
UseCorsaa 
(aa 
optionsaa 
=>aa  "
{aa# $
optionsaa% ,
.aa, -
AllowAnyOriginaa- ;
(aa; <
)aa< =
;aa= >
optionsaa? F
.aaF G
AllowAnyMethodaaG U
(aaU V
)aaV W
;aaW X
optionsaaY `
.aa` a
AllowAnyHeaderaaa o
(aao p
)aap q
;aaq r
}aas t
)aat u
;aau v
appcc 
.cc 

UseRoutingcc 
(cc 
)cc 
;cc 
appee 
.ee 
UseAuthenticationee !
(ee! "
)ee" #
;ee# $
appff 
.ff 
UseAuthorizationff  
(ff  !
)ff! "
;ff" #
apphh 
.hh 
UseEndpointshh 
(hh 
	endpointshh &
=>hh' )
{ii 
	endpointsjj 
.jj 
MapControllersjj (
(jj( )
)jj) *
;jj* +
}kk 
)kk 
;kk 
appmm 
.mm 
UseStaticFilesmm 
(mm 
)mm  
;mm  !
appnn 
.nn 
UseStaticFilesnn "
(nn" #
newnn# &
StaticFileOptionsnn' 8
(nn8 9
)nn9 :
{oo 
FileProviderpp 
=pp 
newpp " 
PhysicalFileProviderpp# 7
(pp7 8
Pathpp8 <
.pp< =
Combinepp= D
(ppD E
	DirectoryppE N
.ppN O
GetCurrentDirectoryppO b
(ppb c
)ppc d
,ppd e
$strppf r
)ppr s
)pps t
,ppt u
RequestPathqq 
=qq 
newqq !

PathStringqq" ,
(qq, -
$strqq- 9
)qq9 :
}rr 
)rr 
;rr 
}ss 	
}tt 
}uu 
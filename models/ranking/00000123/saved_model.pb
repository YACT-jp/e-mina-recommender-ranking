˿
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
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
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
l
Adagrad/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdagrad/iter
e
 Adagrad/iter/Read/ReadVariableOpReadVariableOpAdagrad/iter*
_output_shapes
: *
dtype0	
n
Adagrad/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdagrad/decay
g
!Adagrad/decay/Read/ReadVariableOpReadVariableOpAdagrad/decay*
_output_shapes
: *
dtype0
~
Adagrad/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdagrad/learning_rate
w
)Adagrad/learning_rate/Read/ReadVariableOpReadVariableOpAdagrad/learning_rate*
_output_shapes
: *
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	? *
dtype0
?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	? *
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@?*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name174*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name196*
value_dtype0	
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
?
(Adagrad/embedding/embeddings/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *9
shared_name*(Adagrad/embedding/embeddings/accumulator
?
<Adagrad/embedding/embeddings/accumulator/Read/ReadVariableOpReadVariableOp(Adagrad/embedding/embeddings/accumulator*
_output_shapes
:	? *
dtype0
?
*Adagrad/embedding_1/embeddings/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *;
shared_name,*Adagrad/embedding_1/embeddings/accumulator
?
>Adagrad/embedding_1/embeddings/accumulator/Read/ReadVariableOpReadVariableOp*Adagrad/embedding_1/embeddings/accumulator*
_output_shapes
:	? *
dtype0
?
 Adagrad/dense/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*1
shared_name" Adagrad/dense/kernel/accumulator
?
4Adagrad/dense/kernel/accumulator/Read/ReadVariableOpReadVariableOp Adagrad/dense/kernel/accumulator*
_output_shapes
:	@?*
dtype0
?
Adagrad/dense/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adagrad/dense/bias/accumulator
?
2Adagrad/dense/bias/accumulator/Read/ReadVariableOpReadVariableOpAdagrad/dense/bias/accumulator*
_output_shapes	
:?*
dtype0
?
"Adagrad/dense_1/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*3
shared_name$"Adagrad/dense_1/kernel/accumulator
?
6Adagrad/dense_1/kernel/accumulator/Read/ReadVariableOpReadVariableOp"Adagrad/dense_1/kernel/accumulator*
_output_shapes
:	?@*
dtype0
?
 Adagrad/dense_1/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adagrad/dense_1/bias/accumulator
?
4Adagrad/dense_1/bias/accumulator/Read/ReadVariableOpReadVariableOp Adagrad/dense_1/bias/accumulator*
_output_shapes
:@*
dtype0
?
"Adagrad/dense_2/kernel/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adagrad/dense_2/kernel/accumulator
?
6Adagrad/dense_2/kernel/accumulator/Read/ReadVariableOpReadVariableOp"Adagrad/dense_2/kernel/accumulator*
_output_shapes

:@*
dtype0
?
 Adagrad/dense_2/bias/accumulatorVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adagrad/dense_2/bias/accumulator
?
4Adagrad/dense_2/bias/accumulator/Read/ReadVariableOpReadVariableOp Adagrad/dense_2/bias/accumulator*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
?$
Const_2Const*
_output_shapes	
:?*
dtype0*?$
value?$B?$?B1B10B100B101B102B103B104B105B106B107B108B109B11B110B111B112B113B114B115B116B117B118B119B12B120B121B122B123B124B125B126B127B128B129B13B130B131B132B133B134B135B136B137B138B139B14B140B141B142B143B144B145B146B147B148B149B15B150B151B152B153B154B155B156B157B158B159B16B160B161B162B163B164B165B166B167B168B169B17B170B171B172B173B174B175B176B177B178B179B18B180B181B182B183B184B185B186B187B188B189B19B190B191B192B193B194B195B196B197B198B199B2B20B200B201B202B203B204B205B206B207B208B209B21B210B211B212B213B214B215B216B217B218B219B22B220B221B222B223B224B225B226B227B228B229B23B230B231B232B233B234B235B236B237B238B239B24B240B241B242B243B244B245B246B247B248B249B25B250B251B252B253B254B255B256B257B258B259B26B260B261B262B263B264B265B266B267B268B269B27B270B271B272B273B274B275B276B277B278B279B28B280B281B282B283B284B285B286B287B288B289B29B290B291B292B293B294B295B296B297B298B299B3B30B300B301B302B303B304B305B306B307B308B309B31B310B311B312B313B314B315B316B317B318B319B32B320B321B322B323B324B325B326B327B328B329B33B330B331B332B333B334B335B336B337B338B339B34B340B341B342B343B344B345B346B347B348B349B35B350B351B352B353B354B355B356B357B358B359B36B360B361B362B363B364B365B366B367B368B369B37B370B371B372B373B374B375B376B377B378B379B38B380B381B382B383B384B385B386B387B388B389B39B390B391B392B393B394B395B396B397B398B399B4B40B400B401B402B403B404B405B406B407B408B409B41B410B411B412B413B414B415B416B417B418B419B42B420B421B422B423B424B425B426B427B428B429B43B430B431B432B433B434B435B436B437B438B439B44B440B441B442B443B444B445B446B447B448B449B45B450B451B452B453B454B455B456B457B458B459B46B460B461B462B463B464B465B466B467B468B469B47B470B471B472B473B474B475B476B477B478B479B48B480B481B482B483B484B485B486B487B488B489B49B490B491B492B493B494B495B496B497B498B499B5B50B500B501B502B503B504B505B506B507B508B509B51B510B511B512B513B514B515B516B517B518B519B52B520B521B522B523B524B525B526B527B528B529B53B530B531B532B533B534B535B536B537B538B539B54B540B541B542B543B544B545B546B547B548B549B55B550B551B552B553B554B555B556B557B558B559B56B560B561B562B563B564B565B566B567B568B569B57B570B571B572B573B574B575B576B577B578B579B58B580B581B582B583B584B585B586B587B588B589B59B590B591B592B593B594B595B596B597B598B599B6B60B600B601B602B603B604B605B606B607B608B609B61B610B611B612B613B614B615B616B617B618B619B62B620B621B622B623B624B625B626B627B628B629B63B630B631B632B633B634B635B636B637B638B639B64B640B641B642B643B644B645B646B647B648B649B65B650B651B652B653B654B655B656B657B658B659B66B660B661B662B663B664B665B666B667B668B669B67B670B671B672B673B674B675B676B677B678B679B68B680B681B682B683B684B685B686B687B688B689B69B690B691B692B693B694B695B696B697B698B699B7B70B700B701B702B703B704B705B706B707B708B709B71B710B711B712B713B714B715B716B717B718B719B72B720B721B722B723B724B725B726B727B728B729B73B730B731B732B733B734B735B736B737B738B739B74B740B741B742B743B744B745B746B747B748B749B75B750B751B752B753B754B755B756B757B758B759B76B760B761B762B763B764B765B766B767B768B769B77B770B771B772B773B774B775B776B777B778B779B78B780B781B782B783B784B785B786B787B788B789B79B790B791B792B793B794B795B796B797B798B799B8B80B800B801B802B803B804B805B806B807B808B809B81B810B811B812B813B814B815B816B817B818B819B82B820B821B822B823B824B825B826B827B828B829B83B830B831B832B833B834B835B836B837B838B839B84B840B841B842B843B844B845B846B847B848B849B85B850B851B852B853B854B855B856B857B858B859B86B860B861B862B863B864B865B866B867B868B869B87B870B871B872B873B874B875B876B877B878B879B88B880B881B882B883B884B885B886B887B888B889B89B890B891B892B893B894B895B896B897B898B899B9B90B900B901B902B903B904B905B906B907B908B909B91B910B911B912B913B914B915B916B917B918B919B92B920B921B922B923B924B925B926B927B928B929B93B930B931B932B933B934B935B936B937B938B939B94B940B941B942B943B95B96B97B98B99
?;
Const_3Const*
_output_shapes	
:?*
dtype0	*?;
value?;B?;	?"?:                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
ղ
Const_4Const*
_output_shapes	
:?*
dtype0*??
value??B???B'Til There Was YouB!.hack//Tasogare no Udewa DensetsuB!100-nichikan Ikita Wani X BourbonB101 DalmatiansB#12-sai.: Chicchana Mune no TokimekiB187B1yearB2 Days in the ValleyB2020 Nyeon Ujuui Wonder KiddyB8 Heads in a Duffel BagB&8-gatsu no Symphony: Shibuya 2002-2003B486 Special Edition: Senya ni Akaku Hinageshi no SakuBA Brother's KissBA Chef in LoveBA Clockwork OrangeBA Further GestureBA Goofy MovieBA Grand Day OutBA Great Day in HarlemBA Hungarian Fairy TaleBA Kid in King Arthur's CourtBA Life Less OrdinaryBA Little PrincessBA Low Down Dirty ShameBA Man of No ImportanceBA Modern AffairBA Month by the LakeBA Perfect WorldBA Price Above RubiesBA Simple WishBA Streetcar Named DesireB!A Thin Line Between Love and HateBA Very Brady SequelBA Walk in the CloudsBA Walk in the SunBAa HarimanadaBAb-rahBAce Ventura: Pet DetectiveBAce Ventura: When Nature CallsBAcross the Sea of TimeBAdachi to ShimamuraBAddams Family ValuesBAdo: AitakuteBAdventure Time Season 3BAdventure Time Season 4BAfrica no SalarymanB	AfterglowB	AftermathBAhiru no KoBAi Tenchi Muyou!B0Aikatsu!: Dai Starmiya Ichigo Matsuri Zenyasai!!BAimer: PolarisBAiqing wansuiBAir BudBAir Force OneBAirheadsBAkai ItoBAkiraBAladdin and the King of ThievesBAlaskaBAldum klaka (Cold Fever)BAlice in City RoamingBAlice to ZourokuBAliensBAll Things FairB
AlphavilleBAmateurBAme no Ten TenBAmerican BuffaloBAmerican DreamB Amityville 1992: It's About TimeBAmityville 3-DBAmityville: DollhouseBAn American Werewolf in LondonBAn American in ParisBAn Awfully Big AdventureBAnacondaBAngel (Special)BAngel's FeatherBAngelaBAngels and InsectsBAngels in the OutfieldBAnime Rakugo KanBAnna KareninaBAnne Frank RememberedBAnother StakeoutBAnother TimeBAo no Exorcist: Kuro no IedeBAo no StradaBAonitamerauB	AparajitoB	Apollo 13BApril Fool's DayBArbeit Shiyo!!BArigato Thank YouBAs Good As It GetsBAshita no Joe (Movie)B	AssassinsB?Astro Boy: Tetsuwan Atom - Getsumen Kichi - Kieta Robot no NazoBAsura Cryin'BAudrey RoseB+Austin Powers: International Man of MysteryBAware! Meisaku-kun (2020)B$Aya Hito Shiki to Iu na no Ishi HataBAzuki-chan the MovieBB: The Beginning SuccessionBBOY's LOVE Nitro+CHiRALB7Ba La La Xiao Mo Xian Zhi: Feiyue Cai Ling Bao Di Er JiBBabeBBabel Nisei (2001)BBackkom Mission ImpossibleBBad BoysBBad CompanyB	Bad GirlsB	Bad TasteBBai Bian Bu Lu KeBBai Bian Xiao BaBBaka Baka Baka na SekaiB<Bakuten Shoot Beyblade the Movie: Gekitou!! Takao vs. DaichiBBakuten!! MovieBBananyaB
Bao Bao WoB%Baobao Yue Xuetang: Binfen Kuaile HaoBBaosheng Dadi Zhi Qi Er Duo BaoB	Barb WireB	BarcelonaB	BartenderBBasic InstinctBBaymax and MochiBBeam!BBeat the DevilBBeautiful GirlsBBeautiful ThingBBeauty and the BeastBBefore SunriseBBeing ThereBBelle de jourBBen-HurBBenny & JoonBBentBBest Care GroupBBest MenBBetsu ni Daijoubu desuBBetsuni DaijoubudesuBBetter Off Dead...B	BettermanBBeuledeu IbalsoBBeverly Hills NinjaB	Big NightB(Binan Koukou Chikyuu Boueibu LOVE! LOVE!BBio-DomeBBird of PreyB>Bishoujo Animerama: Gokkun Doll - Choujigen Pico-chan Toujou!!B?Bishoujo Senshi Sailor Moon SuperS Gaiden: Ami-chan no HatsukoiBBitter MoonBBlack BeautyBBlack ChannelBBlack ChristmasBBlack SheepBBlade RunnerBBlissBBlood & WineBBloodsport 2B
Blown AwayBBlue SkyBBlues Brothers 2000BBob RobertsBBobby ni KubittakeB
Body PartsBBody SnatchersB*Boku no Lyric no Bouyomi: Boku wa Mou InaiBBoku wa Ou-sama (2013) SpecialsBBokura no Saibanin MonogatariBTBokutachi wa Benkyou ga Dekinai: Nagisa ni Usemono Arite Senjin wa Enzen to [X] SuruBBonnie and ClydeB	BoomerangB
Booty CallB,Boukensha-tachi: Gamba to Nanahiki no NakamaB	Boys LifeB	BraindeadBBram Stoker's DraculaBBrazilB'Bread and Chocolate (Pane e cioccolata)BBreaking the HabitB0Brother Minister: The Assassination of Malcolm XBBulletproofBBullets Over BroadwayBBuou JinglingB"Butch Cassidy and the Sundance KidBButterfly KissBCaesura of DespairBCandyman: Farewell to the FleshBCaptain BalBCardfight!! Vanguard GBCareer GirlsBCarefulBCaro Diario (Dear Diary)BCarpoolBCarrieB
CasablancaBCasinoBCasperBCastle FreakBCat StepBCat on a Hot Tin RoofBCatmanBCats Don't DanceBCatwalkBCaughtBCelestial ClockworkB#Cemetery Man (Dellamorte Dellamore)BChain ReactionBChairman of the BoardBChan Shuo A KuanBChang Jian Fengyun 2BChaoji Fei XiaBChaos;Child: Chaos;HeadBChasing AmyB&Cheng Cheng Xue Falu Zhi Xiaofang PianBChengshi Yezhan PaiBChildren of the RevolutionB	ChinatownBChinzei Hachirou TametomoB	ChristmasB$Chuang Tang Tu 2 Fengkuang Maxi TuanBChuuken Mochi ShibaBCiao, Professore!B
CinderellaB'Cinderella Girls Gekijou: Climax SeasonBCitizen RuthB	City HallBCity Hunter 2BICity Hunter Special: Kinkyuu Namachuukei!? Kyouakuhan Saeba Ryou no SaigoB,City Slickers II: The Legend of Curly's GoldBClassroom CrisisBClean Slate (Coup de Torchon)BClimbingBClockersBCobbBDCode Geass: Boukoku no Akito 5 - Itoshiki Mono-tachi e Picture DramaB$Code Geass: Lelouch of the RebellionBComedy Skit 1989BComiwa BebeBConan the BarbarianB	ConeheadsBCongming Chongwu Dan Xue ShuxueBConspiracy TheoryBCool RunningsBCop LandBCops and RobbersonsBCopycatBCorrina, CorrinaBCosiBCountdown (2017)BCrashB-Crayon Shin-chan Movie 03: Unkokusai no YabouB>Crayon Shin-chan Movie 24: Bakusui! Yumemi World Dai TotsugekiBCreatokyo Vega CMBCritical CareBCronosB	CrossfireBCry, the Beloved CountryBCycloBDD Hokuto no Ken 2 Ichigo Aji+B$DLsite CM: Kouhai Kanojo Yuzu Ki-henBDaensBDagashi KashiBDai Mahou TougeB8Dakaretai Otoko 1-i ni Odosarete Imasu. Movie: Spain-henBDanball SenkiBDang doi thang CaoB8Danganronpa 3: The End of Kibougamine Gakuen - Kibou-henBDangerous BeautyBDangerous GroundBDangerous MindsBDaniel Defoe's Robinson CrusoeBDappysBDas BootBDazed and ConfusedBDear GodB
Death NoteBDeath and the MaidenBDeath in BrunswickBDeca-Dence: InstallBDeceiverBDeep Sea TentacleBDekimonBDemolition ManBDenise Calls UpBDenpa Onna to Seishun OtokoBDesert WindsB	DesperadoBDesperate MeasuresBCDetective Conan - Approaching the Mystery of the Ancient Dinosaurs!B-Detective Conan Movie 05: Countdown to HeavenB/Detective Conan OVA 01: Conan vs. Kid vs. YaibaB?Detective Conan: Episode One - The Great Detective Turned SmallBDevil in a Blue DressBDi Gi Charat Tsuyu SpecialsBDiabolik LoversBDiamond no Ace OVABDie HardB
Die Hard 2BDigimon Adventure MovieBGDigimon Savers: Agumon! Gaomon! Lalamon! Bakuretsu! Jougai Last Battle!BDirty DancingB
DisclosureBDitou RenshengBDivaBDolores ClaiborneBDon Juan DeMarcoBDon Pepe no UtaBHDon't Be a Menace to South Central While Drinking Your Juice in the HoodB"Dongfang Ke Er Zhi Modeng Xue YuanBDonten ni Warau x MameshibaB*Doraemon Movie 23: Nobita to Robot KingdomBDouble TeamBDoupo Cangqiong 2nd SeasonBDown PeriscopeBDracula: Dead and Loving ItB
Dragon EggBDragon PinkBDragon RiderBDragonheartB	Dream ManBDream With the FishesBDrifters (OVA)BDropBDrop Dead FredB	Drop ZoneBDu La Jiang GushiBDu La Zhihui LeyuanB<Dungeon ni Deai wo Motomeru no wa Machigatteiru Darou ka OVABDunston Checks InBDuo Xuan ShiBDuoluo tianshiBEast of EdenBEat Drink Man WomanBEdBEd's Next MoveBEddieB
Edens ZeroBEgao no DaikaB1Eiga Enzetsu: Seiji no Rinrika Gotou Shinpei 1926B0Electric Magic feat. Kagamine Len & Kagamine RinBEn En NikoliB*Entertaining Angels: The Dorothy Day StoryBEnyoguB1Eroge de Subete wa Kaiketsu Dekiru! The AnimationB)Eroge! H mo Game mo Kaihatsu Zanmai RecapB+Eureka Seven AO: Jungfrau no Hanabana-tachiBEvangelion 3DBEve's BayouBEven Cowgirls Get the BluesBEvery Other WeekendBEveryone Says I Love YouBEvitaBExecutive DecisionBExit to EdenBFace/OffBFacesB	Fair GameB+Fairy Tail: Houou no Miko - Hajimari no AsaBFairyTale: A True StoryBFake Style IIBFallBFallenBFalling in Love AgainBFanta Jiisan no UtaBFarewell My ConcubineBFargoBFarinelli: il castratoBFarmer & ChaseB%Fatal Fury: Legend of the Hungry WolfBFate/Extra: Last EncoreB6Fate/Grand Order: Haishin 5 Shuunen Kinen Animation PVBAFate/Grand Order: Shuukyoku Tokuiten - Kani Jikan Shinden SolomonBBFate/kaleid liner Prisma Illya 2wei!: Mahou Shoujo in Onsen RyokouBFather of the Bride Part IIBFaustoBFeast of JulyBFeeling MinnesotaBFei Meng ShaonBFei Ren Zai 5th SeasonBFemale PerversionsB+Final Fantasy VII: Advent Children CompleteBFire Down BelowBFire on the MountainB	First KidBFirst KnightBFlesh and BoneBFlirting With DisasterBFlubberBFlukeBFly Away HomeBFlying MessengerBFools Rush InBForBFor CampanellaBFor Ever MozartBFor the MomentBForbidden PlanetBForeign CorrespondentBForeign StudentBForest and TreesBForget ParisB
Four RoomsBFoxfireBFragtimeBAFrancois CM: Cassis to Arles no Monogatari - Atarashii MonogatariBFrankie StarlightBFreeB
Free WillyBFreewayBFrench KissBFreshBFridayBFriends: Mononoke Shima no NakiBFrom Dusk Till DawnBFu Le Xunbao Lixian JiBFujinkoron-senpaiBFull Metal JacketB
Full SpeedBFumikiri JikanBFurusato JapanB#Fuse: Teppou Musume no TorimonochouB#Fuuma no Kojirou: Seiken Sensou-henB#Fuxing Ba Jie Zhi Da Nian Xiao GuaiBFuyu no NijiB	G.I. JaneB GS Mikami: Gokuraku Daisakusen!!BGabbehBGaina TamagerBGakitabi!: Seishun Oshiro-henBGakken no Zunou Kaihatsu VideoB0Gakkou no Kowai Uwasa Shin: Hanako-san ga Kita!!BGamba to Kawauso no BoukenBGan Bu Da MaoxianBGang RelatedB&Gang Tie Fei Long Zhi Ao Te Man Jue QiBGarakuta-doori no StainBGaslightB:Gegege no Kitarou: Saikyou Youkai Gundan! Nippon Jouriku!!BJGekijouban Pocket Monsters Advanced Generation: Rekkuu no Houmonsha DeoxysB,Gekijouban Soushuuhen Overlord: Manner MovieB;Gekijouban: Chou Henshin Cosprayers vs Ankoku Uchuu ShougunBGen Hoshino: SarashimonoB(Geomjeong Gomusin: Television Sadeon NalBGerminalBGeronimo: An American LegendB
Get ShortyBGet on the BusBGetter Robo ArcBGetting dressedB#Ghost in the Shell (Kokaku kidotai)B4Ghost in the Shell Arise: Border 5 - Pyrophoric CultBGilligan's Island: The MovieBGintama x MameshibaB Girls & Panzer: Shoukai Shimasu!B
Girls TownBGiven: Uragawa no SonzaiB,Glass no Kamen: Sen no Kamen wo Motsu ShoujoBGleipnirBGlengarry Glen RossBGloryBGo to the TopBGoblin Slayer PVBGolden EarringsBGolden Kamuy 2 OVAB
GomennasaiBGood MorningBGood Will HuntingB
GoodFellasB	Goro-chanBGou Gou Xiongxiong Le FantianBGrace of My HeartBGramias Circus ShowBGrateful DeadBGreat ExpectationsB,Greek Roman Sinhwa: Olympus Guardian (Movie)BGrimm (Tentative Title)BGroundhog DayBGu Xiong: Huo QiB	GuilsteinBGundam vs Hello KittyBGuobao Te Gong 2nd SeasonB	Guraburu!B'Gyakkyou Burai Kaiji: Ultimate SurvivorBHaidao JinglingB3Haikara-san ga Tooru Movie 1: Benio, Hana no 17-saiBHaitai Nanafa 2nd SeasonBHaitoku no KyoukaiBHaiyore! Nyaruko-san W OVABHakata Tonkotsu RamensB
Half BakedBEHam-chanz no Mezase! Ham-Ham Kin Medal: Hashire! Hashire! Daisakusen!BHamatora The AnimationBHamletBHamster no KumachuBHan Solo/Star Wars StoryBHana (2006)BHana no Asuka Gumi!BHana-biBHanasaku Kizuna no RomantanBHand ShakersBHandsome Kenya: RandomBHangyodon no 00 7/2: Doctor-sanBHangyodon: Hadaka no Ou-samaB=Happiness Charge PreCure! Movie: Ningyou no Kuni no BallerinaBHappy GilmoreB
Hard EightB	Hard RainBHard TargetBHarebare FanfareBHarriet the SpyB-Harukanaru Toki no Naka de: Ajisai YumegatariB%Harumaki Gohan: Yakusoku (vocal ver.)BHataraki ManBHate (La Haine)B&He Ni'er De Richang 2nd Season SpecialBHead Above WaterBJHealin' Good Precure Movie: Yume no Machi de Kyun! tto GoGo! Dai Henshin!!BHeartful Maman The AnimationBHearts and MindsBHeathersBHeaven & EarthBHeavy MetalBHeavyweightsBHedd WynB!Hello Kitty no Fushigi na MizuumiBHello Kitty no Hakuchou no OujiBHellraiser: BloodlineBHenry VBHentatsu (2019)B#Heppoko Jikken Animation Excel SagaB-Heppoko Jikken Animation Excel Saga: YarisugiBHibabeBHideawayB	High NoonBHigh School HighBHighlander III: The SorcererB$Highlander: The Search for VengeanceBHiguma no OngaeshiBHikari no MachiBHikari no MegamiBHikaru no Go: MemoriesBHimeyuri no TouBHimitsukessha Taka no Tsume GGB$Himitsukessha Taka no Tsume SpecialsB	Hinomaru!B+Hirune Hime: Shiranai Watashi no MonogatariBHis Girl FridayBHitori no Shita: The Outcast 4BHitotsu no HanaBHitsugi no Chaika OVABHollow ReedBHome Alone 3B%HoneyWorks: Kotoba no Iranai YakusokuB
Hong HuangB!Honkai Impact 3 Animation: BronyaB>Honkai Impact 3rd Official Anime "Tenjo no Meteor" Chapter XIVBHoshi no Kirby: PilotBHotsure ni FureruBHoukago: Nureta SeifukuBHouse Party 3BHouseki no Kuni (ONA)BHow to Make an American QuiltBHua Jianghu: Buliang Ren 4BHua Jianghu: Buliang Ren IIIBHuanbao Tegong DuiB	Hugo PoolBHushB%Huyao Xiao Hongniang: Liang Sheng HuaBHyper-Psychic Geo GaragaBI Know What You Did Last SummerBI Love TroubleBI Shot Andy WarholBIce DropBIdol MemoriesBIe Naki Ko Remi Specials (2001)BIf Lucy FellBIjimekko Ookami to Nana-chanB$Ikoku Meiro no Croiste Picture DramaBIl torero CamomilloBIll Gotten GainsB0Ima demo Senchou to Yobarete iru Senchou no YoruBImmortal BelovedBImouto Paradise! 2BIn the Bleak MidwinterBIn the Line of Duty 2BIn the Line of FireB6Inari, Konkon, Koi Iroha.: Inari, Konkon, Semishigure.B"Indiana Jones and the Last CrusadeBInemuri Buu-chanBInferno Cop 2nd SeasonBInfinityBInventing the AbbottsBIppatsu Hicchuu!! DevanderB-Isekai Izakaya: Koto Aitheria no Izakaya NobuBIssei Kiyuukyoku: DivertimentoBIt's a Wonderful LifeBItsudatte My Santa!B
JANTAMA PVBJack and SarahBJackie Chan's First StrikeB Jaku-Chara Tomozaki-kun SpecialsB	Jane EyreBJarinko Chie (TV)BJashin-chan Dropkick Episode 12BJason's LyricBJawsBJaws 2BJaws 3-DBJeoryeon Juui SahangBJi Jia DashiBJian Ji XingshiBJie Li Dou season2BJigoku de Naze WaruiBJijia Shou ShenBJimmy HollywoodB#Jin Guang Yu Jiu Jie: Mo Shi Fu JieBJing Jing Lai Le DaoBJing Ling Qi YuanBJingle All the WayB"Jinkou Shoujo: Henshin Sex AndroidBJinmen ToukaB"Jiutian Xing Dai Ni Wan Zhuan XiquBJixiang Baobao season4BJo UtaB"JoJo's Bizarre Adventure Re-editedBJohnsBJoutokuBJubileeBJudeBJudge DreddBJudgment NightBJumanjiBJungle Taitei Movie (1997)BJuniorBJurassic ParkB	Jury DutyB
Just CauseBJuushin LigerBKAGEROU DAZE No.9B*Kabushikigaisha OPT Shinsotsu Saiyou MovieBKaeru Ouji to Imomushi HenryBKagirinaki RakuenB(Kaibutsu-kun: Kaibutsu Land e no ShoutaiB/Kaijuu Girls Kuro: Ultra Kaijuu Gijinka KeikakuB'Kakashi Anbu Hen: Yami wo Ikiru ShinobuBKama Sutra: A Tale of LoveB(Kaminari Boy Pikatta-kun no Koutsu AnzenBKana Kana Kazoku: Stop RubellaBKangetsu Ittou: Akuryou KiriB*Kanojo to Kanojo no Neko: Everything FlowsBKanon KazahanaBKansas CityB*Kara no Kyoukai 2: Satsujin Kousatsu (Zen)BKarakuri Circus (TV)BKashisu to Aruru no MonogatariBKaspar HauserBKaze GurumaBXKeishicho Tokumu-bu Tokushu Kyoaku-han Taisaku-Shitsu Dai-Nana-ka: Tokunana OVA File 0.5B-Kekkai Sensen: Ousama no Restaurant no OusamaB/Kemeko Deluxe!: Izumi-chan, Fukenkou yo! (Kari)BKemono no Souja ErinBKenzen Robo DaimidalerBKetsuekigata-kun! 3BKeys to TulsaBKibun KibunBKidsBKikaBKiller: A Journal of MurderBKilling ZoeBKimagure RobotBKimi no Sekai ni Hanataba woBKimi o MatsuBKKimi to Boku no Saigo no Senjou, Aruiwa Sekai ga Hajimaru Seisen (Zoku-hen)B;Kindaichi Shounen no Jikenbo: Operaza-kan Saigo no SatsujinBKing of New YorkB=King of Prism: Shiny Seven Stars I - Prologue Yukinojou TaigaBKing of the HillBKingpinBKininaru KimochiB'Kinnikuman: Kinnikusei Oui Soudatsu-henBKinoshita: Do My Best!BKirakiraBKisaku SpiritBKiss Me, GuidoBKiss of DeathBKiss the GirlsBKitakubu Katsudou KirokuBKobo-chan: Matsuri ga Ippai!BKobutori (1929)BKoe wo KikaseteBKoi TsubomiBKoisuru BoukunBKomadori Eiga: KomanekoBKonjiki no Gash Bell!!B%Kono Danshi, Uchuujin to Tatakaemasu.BKonpeitou no OmajinaiBKoshiore TsubameBUKosys! Lite: Tsuyoku Suishou Bansaku no Sunglasses - Password Tsukai-mawashi no JutsuBRKoukaku Kidoutai: Stand Alone Complex - Solid State Society 3D - Tachikoma no HibiBAKoukaku Kidoutai: Stand Alone Complex 2nd GIG - Individual ElevenBKoyaanisqatsiBKuaile Meng Duo DuoB0Kuaile Peng Chacha Zhi Guo Cha Cunzhuang De MimiBKuku NenbutsuBKull the ConquerorB'Kuma no Gakkou Movie 1: Jackie to KatieBKuma no KeimushoBKundunBKunoichi SakuyaBKuro-Nikuru GirlsBKuroko no Baske (2015): NG-shuuB(Kuroko no Basket: Saikou no Present DesuBKyou no 5 no 2 (TV): TakarabakoBL' EnferBLa CeremoniaBLa CollectionneuseB9La Double vie de Veronique (The Double Life of Veronique)BLa PromesseB La Vie est belle (Life is Rosey)BLadybird LadybirdBLalala Demacia Third SeasonB6Land Before Time III: The Time of the Great Giving (19B$Land and Freedom (Tierra y libertad)B
LandreaallB#Lao Fu Zi Zhi Xiao Shui Hu Chuan QiB1Laoying Zhua Xiao Ji Zhi Mowang Shijie Da MaoxianBLarvaBLashou shentanBLast Action HeroB
Last DanceB"Last Night, Good Night (Re:Dialed)BLast Summer in the HamptonsBLate BloomersBLauraB"Lawnmower Man 2: Beyond CyberspaceBLawrence of ArabiaB
Le BonheurBLeaving Las VegasBLegal DeceitBLei Bi Baobei Yu Ha Pai LeyuanBLei Su Deng Yi Fei Chong TianB-Leonardo Hakase to Kirin-mura no Nakama-tachiBLes MiserablesBLet's Nupu NupuBLie Yang Tiandao IIBLife with MikeyBLightning JackBLike Sex, the FishB3Like Water For Chocolate (Como agua para chocolate)BLineBLingyun DaimaBLittle Big LeagueBLittle BuddhaBLittle WomenBLive Nude GirlsBLiving in OblivionB
Local HeroB	Loch NessBLodoss-tou SenkiB	Lone StarBLong Xin Shaon: ZhuiluoBLord of IllusionsBLosing ChaseBLosing IsaiahBLost in SpaceB
Lotto LandBLove & Human RemainsBLove AffairBLove Bitch: Yasashii OnnaBLove Is All There IsB
Love JonesBLove Nights! A.DBLove SerenadeBLove and a .45B@Love x Holic: Miwaku no Otome to Hakudaku Kankei - The AnimationBLuo Xiao Hei Zhan Ji: Fan WaiBLupin III (2015) SpecialsB)Lupin III Special 18: Seven Days RhapsodyB&Lupin Sansei: Napoleon no Jisho o UbaeBMBM*A*S*HBM. ButterflyBMILPOMBMURDER and murderBMaburahoBMachikado no MerchenBMacross 94 Preview SpecialB&Macross F Movie 2: Sayonara no TsubasaBMade in AmericaBMadonna: Truth or DareBMagical HatBMagical Suite Prism NanaBMah: Kazami ToriBMahou Shoujo OreB0Mahouka Koukou no Rettousei: 10th Anniversary PVBMahoutsukai JijiBMahoutsukai no YomeBMai Ge ChuanqiBMaid of the DeadB2Maison Ikkoku: Shiki Utsuriyuku Kisetsu no Naka deBMajokko Tsukune-chanBMajor 2nd (TV) 2nd SeasonBMajor PayneBMameshi-Pamyu-PamyuB
Mamma RomaB Man Jie Guoxue Xilie-Yuyan GushiBMan Shu Lan LiuliuBMan of the HouseBMan of the YearBManga Hajimete MonogatariBMarie's Sugar PlumBMarine Bloomin'BMarine SnowBMarked for DeathB#Marlene Dietrich: Shadow and Light BMars Attacks!BMary ReillyBMasamune Datenicle (2021)B)Mashiro-iro Symphony: The Color of LoversB
Mat' i synBMaverickBMawaru PenguindrumBMaximum RiskBMaya Lin: A Strong Clear VisionB#Maybe, Maybe Not (Der Bewegte Mann)B;Mayonaka no Occult Koumuin: Fukurokouji to Ano Ko to Ore toBMediterraneoBMeet John DoeB@Megumi to Taiyou III: Kajuu Gummi Tweet Fantasy - Timeline WorldBMei Jian ChiB-Meiji Tokyo Renka Movie: Yumihari no SerenadeB/Meishi Da Maoxian Di Yi Ji: Zheng He Hao QihangBMelty LancerBMemoriesBMen With GunsBMen of MeansBMenghuan Shuyuan 3rd SeasonBMenghuan Shuyuan 4th SeasonBMenghuan Zhen 4BMercury RisingBMessage SongBMetamorphosisBMetroBMetropolitan MuseumBMey-chan: Nanba AnainBMiami RhapsodyBMiaoshou XiandanB<Miboujin Nikki: Akogare no Ano Hito to Hitotsu Yane no ShitaBMichael CollinsB!Microcosmos: Le peuple de l'herbeBMidnight Eye: Gokuu IIB'Midnight in the Garden of Good and EvilBMighty AphroditeB'Mighty Morphin Power Rangers: The MovieB
Milk MoneyBMille bolle bluBMiller's CrossingBMimicBMina no Mura to MoriBMinamoBMinerva no KenshiB!Minimoni: Minihams no Kekkon SongBMiracle on 34th StreetBMirageBMiraijin Go HomeBMiss Monochrome: Music ClipsBMizu no KotobaBMo Fang Da ShaBMo Ji BianxingB3Mobile Suit Gundam SEED Movie II: The Far-Away DawnB,Mobile Suit Gundam Thunderbolt: December SkyB&Mobile Suit Gundam Wing: Endless WaltzBMobile Suit SD Gundam Mk IIBModern No.2B	Mofu MofuBMogui XinpianB!Mohuan Tuoluo Zhi Ji Jia Zhan CheBMoll FlandersBMomoiro no CrayonB#Mon-Soni! D'Artagnan no Idol SengenBMoney TrainB"Monster Farm: Enbanseki no HimitsuB%Monster Musume no Iru Nichijou (2016)B7Monster Strike the Animation: Trouble in Monster StrikeBMoonlight and ValentinoBMori no DensetsuB
MormorandoBMortal KombatBMortal Kombat: AnnihilationBMoshi Juexing: SuyuanBMotherB%Mouretsu Pirates: Abyss of HyperspaceB
Mouse HuntB	Mr. JonesB	Mr. MagooBMr. Smith Goes to WashingtonB	Mr. WrongBMrs. DallowayBMrs. WinterbourneBMu Ji BanjiaBMu Ma YijiaBMugen no KyoukaiB5Muse / Exogenesis Part 3 (Redemption) Tekken "Furiko"BMushi ShinobuB0Mushoku Tensei: Isekai Ittara Honki Dasu SpecialBMutou GuniangBMuzumuzu EighteenBMy Crazy Life (Mi vida loca)BMy Fair LadyB	My FamilyBMy Favorite YearBMy Fellow AmericansBMy Left FootBEMy Life and Times With Antonin Artaud (En compagnie d'Antonin Artaud)B$My Life as a Dog (Mitt liv som hund)BMy Man GodfreyBMy Own Private IdahoB
My ShelterB'Mystery Science Theater 3000: The MovieBNa Nian Na Tu Naxie Shi season2BNadjaBNaengjanggo Nara Cocomong 2B>Naikaku Kenryoku Hanzai Kyousei Torishimarikan Zaizen JoutarouB@Nakado Riku Animation: Hijouyou Mochidashi Bukuro wo Youi ShiyouB"Naked Gun 33 1/3: The Final InsultBNanette et BoniB'Nanocore: NG Scenes - Nano's Daily LifeB*Naruto Shippuden Movie 3: The Will of FireBNatane ShigureBNatsuyasumi no OsakanaBNaze Nani DendrogramBNazotoki-hime wa MeitanteiBNegibouzu no AsatarouBNegigekiBNeko Jockey 2nd SeasonBNeko no Dayan (2017)B$Nekogami Yaoyorozu: Dennou WanderersBNellBNeru: Tokyo Teddy BearB-New Big Head Son and Little Head Dad Season 3BNew Jersey DriveBNi Yian Jian ShenBNi Zhuan Ci Yuan: AI Jue QiBNi no Kuni Nara: Cross WorldsBNick of TimeB	Nico IconBNight Falls on ManhattanB'Night Raid 1931: Demon of the Opium DenBNight of the Living DeadBNight on EarthB
NightwatchBNihon Omoshiro MukashibanashiB)Niji no Kanata e! Shoujo Diana MonogatariB#Nijuusou: Wana ni Ochita Onna-tachiBNikita (La Femme Nikita)BNil By MouthBNine MonthsB	NinotchkaBANintama Rantarou no Uchuu Daibouken with Cosmic Front Next (2016)B8Nippon Chinbotsu 2020 Gekijou Henshuban: Shizumanu KibouBNixonBNo Guns Life MiniBNo Money SpecialsB#Nobody Loves Me (Keiner liebt mich)BNobody's FoolBNoiseBNoragami OVABNorakuro RecapBNormal LifeBNosferatu a VeneziaBNothing PersonalBNothing to LoseB	NotoriousBKNouryoku Hikitsugi de Otome Game no Sekai ni Tensei Shita Ken ni Tsuite wwwBNow and ThenBNowhereBOSTER project: Letzel no KishiB2Oam Monogatari: Sono Natsu, Watashi ga Shitta kotoBOf Human BondageBOffside GirlBOgaki Matsuri ni Ikou yo!BOishinboBOishinbo PilotB8Oishinbo: Kyuukyoku tai Shikou, Chouju Ryouri Taiketsu!!B$Ojamajo Doremi#: Hana-chan to Issho!B*Ojarumaru: Chitchai Mono no Ookina ChikaraBOkane ga Nai SpecialsBOkusama wa Moto YarimanB
Old YellerBOne Fine DayB@One Piece: Episode of Merry - Mou Hitori no Nakama no MonogatariB"One Piece: Jango no Dance CarnivalBOnikiri ShoujoBOniku Daisuki! Zeushi-kunBOnna Kyoushi: Nikutai JugyouBOoatari Sora no EntakuBOpen SeasonBOperation Dumbo DropBOrchid and EmblemB Ore, Twintail ni Narimasu. RecapBOren no yuraiBOrientationBOriginal GangstasB,Oshiete Mahou no Pendulum: Rilu Rilu FairiluBOther Voices, Other RoomsB
Otome ChicB:Otome wa Boku ni Koishiteru: Futari no Elder The AnimationB
Out to SeaBOwari no SeraphBOyasumi SexBPalmettoBPantherBPao Fu XiaojieB
Paper FilmBParadiseBParadise RoadBPassion FishBPattonBPenny SerenadeBPersona 3 The MovieB"Personal Computer Travel TanteidanBPhantomsBPharaoh's ArmyBPia Carrot e Youkoso!! 2BPia Carrot e Youkoso!! 2 DXBPicnicBPico to ChicoBPicture PerfectB+Planetarium Pokemon: Aurora kara no MessageB>Pocket Monster Advanced Generation: Pikachuu no Obake CarnivalB*Pocket Monsters: Kesshoutou no Teiou ENTEIBPoetic JusticeBPoison Ivy IIB7Pokemon Diamond & Pearl Atsumare! Pokemon Hoshi MatsuriB.Pokemon Movie 03: Kesshoutou no Teiou Entei PVBPokemon: The Magikarp SongB/Pokemon: Utae Meloetta - Rinka no Mi wo Sagase!B*Police Story 4: Project S (Chao ji ji hua)B	PollyannaBPonetteBPorong Porong Pororo 6BPower 98BPpalgan Gudu JeunghugunB)Princess Principal: Crown Handler Movie 2BPrison SchoolB-Prisoner of the Mountains (Kavkazsky Plennik)BPrivate BenjaminBPrivate PartsB<Pro Golfer Saru: Kouga Hikyou! Kage no Ninpou Golfer Sanjou!B)Puchitto Gargantia: Marumaru no GargantiaBPulp FictionBPushing HandsBQi Niu Nan XiaBQian Qian WenB-Qian Ting Zong Dong Yuan: Hai Di Liang Wan LiBQian Zi WenBQiang Huo Tian LingBQiang Zhen TouBQianting Zongdongyuan 2B Qin Shi Ming Yue: Junlin TianxiaBQin Shi Mingyue: Junlin TianxiaBQise ZhanjiBQueen Margot (La Reine Margot)B+ROXY x Masanobu Featuring Stephanie GilmoreBRaise the Red LanternBRaising ArizonaBRakushou! Hyper DollB	Ranma 1/2BRansomBRaw DealBReady to Wear (Pret-A-Porter)BReal GeniusBReality BitesBRear WindowBRebel Without a CauseBRed Rock WestBReizouko no Tsukenosuke!BRekka no Honoo: Final BurningBRekka no SuiryokuBRenaissance ManB.Rendezvous in Paris (Les Rendez-vous de Paris)BRenou XueyuanB
Rent-a-KidBRescueBRestorationBRhyme & ReasonBRibbon-chanBRichard IIIBRichie RichBRidiculeB5Rikei ga Koi ni Ochita no de Shoumei shitemita. HeartBRiki-Oh 2: Horobi no KoB"Rilu Rilu Fairilu: Mahou no KagamiBRoboDzB	Robocop 3BRock`n OyoneB	Roll CallBRoman HolidayBRomper StomperBRoppou Yabure-kunBRoseanna's Grave (For Roseanna)BRosewoodB0Royal Space Force: The Wings of Honneamise PilotBRuleBRumble in the BronxB'Rurouni Kenshin: Meiji Kenkaku RomantanB5Rurouni Kenshin: Meiji Kenkaku Romantan - Tsuioku-henBRyoukan-sanB-Ryuuzou to Shichinin no Kobun-tachi x FrogmanBS.F.W.BSINBADBPSKET Dance: Imouto no Nayami ni Nayamu Ani ni Nayamu Imouto to Sono Nakama-tachiB$SKET Dance: SD Character Flash AnimeBSabage-bu! SpecialsBSabrinaBSafeBSafe PassageB%Sai Er Hao Season 6: Cangqiong LiehuoB+Saint Seiya: The Lost Canvas - Meiou ShinwaBSaiunkoku Monogatari SoushuuhenBSakura Taisen: Katsudou ShashinBSakura Taisen: SumireBSalut cousin!BSamurai Deeper KyouB#Sangatsu no Lion: Zenhan SoushuuhenB(Sanguo Yanyi 2nd Season: Zhulu ZhongyuanBSankarea OVAB"Sanrio Anime Sekai Meisaku GekijouB"Sansha Sanyou OVA mi Houei EpisodeBSanta with MusclesBSasurai-kunB4Sayonara Zetsubou Sensei Jo: Zetsubou Shoujo SenshuuBSchindler's ListBSchizopolisBSchool Days: Valentine DaysBScreamB	ScreamersBSearching for Bobby FischerBSecrets & LiesBSeer 7BSeirei Gensouki 2nd SeasonBFSeishun Buta Yarou wa Bunny Girl Senpai no Yume wo Minai Picture DramaBSeishun no kaoB#Seiyuu's Life! A Small After-Party!BSelenaBSen no Hana Sen no SoraB-Sengoku Gyoujin Dullahan: Kagen no KeishoushaBSense and SensibilityB,Sensei no Ojikan: Doki Doki School Hours OVAB
Serial MomBSeven (Se7en)BSex, Lies, and VideotapeB+Sexy Commando Gaiden: Sugoi yo!! Masaru-sanBSha Jia Bang Xin ChuanB%Shadow of Angels (Schatten der Engel)BShadowlandsBShakugan no Shana-tan IIBShall We Dance?BShan Hai JuelunB-Shanghai Triad (Yao a yao yao dao waipo qiao)BShaonian Hua TuoB"Shaonian Shiye Zhi Ji Yu ShengdianBSheng Xin Shi Zhan Ji season2BShengxiao BaobeiBShenqi Da MaoxianBShentan Bao XingxingBShi Wan Ge Leng Xiao HuaB%Shi Wan Ge Leng Xiaohua Di 3rd SeasonBShigeruB%Shikoyaka Naru Toki mo Hameru Toki moBShilohBShin Doha Kokusai KuukouBShineB-Shingeki no Kyojin: The Final Season SpecialsBShingetsutan TsukihimeBShinju KusaBShinkai no Survival!B!Shinkansen Henkei Robo ShinkalionBShinsetsu Kachikachi YamaB!Shironeko Project: Zero ChronicleBShitamachi Alien PapiPipiPupiBShokupan Mimi SpecialsBShoppingBShoujo Senki Brain JackerBShounen Sunday CM: ARMSB	ShowgirlsBShuten DoujiBSi Hai Jing Qi 2BSifanBSighBGSilk Road Shounen Yuuto: Toki wo Kakeru Shounen Yuuto no Hyouryuu NikkiBSkate-Leading StarsBSkylandBSleepersBSleepless in SeattleB	SleepoverBSliding DoorsBSmall GardenBSmilla's Sense of SnowBSo I Married an Axe MurdererBSojunghan Nal-ui KkumBSokkuri OyakoBSoloBSome Like It HotBSome Mother's SonBSomebody to LoveBSon Gokuu War and the StarsBSong Dai Zu Qiu Xiao JiangBSonic the Hedgehog (TV)BSora no Otoshimono: ForteB5Sore Ike! Anpanman: Anpanman to Yukai na Nakama-tachiB:Sore Ike! Anpanman: Franken-Robo-kun's Surprised ChristmasB,Sore Ike! Anpanman: Horrorman to Hora HorakoB<Soukou Kihei Votoms Vol. II: Highlights from the "AT Votoms"BSoukou Kihei Votoms: SunsaB	Soul FoodBSouten no Ken: Regenesis 2BSpace Cobra PilotBSpawnBSpeciesBSpeedBSpeed 2: Cruise ControlBSphereBSpice and Wolf VRBSprite: Between Two WorldsBSprungBStagB
StalingradBStalkerBStar Beat!: Hoshi no KodouBStar KidBStar Smash PVBStar Trek V: The Final FrontierBStar Trek: First ContactBStar Trek: GenerationsB	Star WarsBStarry RegretsBStarship TroopersBStealing BeautyBDSteins;Gate 0: Kesshou Takei no Valentine's - Bittersweet IntermedioBStella no Mahou SpecialsBStereoB	StonewallBStrange Reitaro: humming birdBStreet FighterBStrictly BallroomBCStrike Witches Operation Victory Arrow Vol. 2: Aegean Umi no MegamiB*Strike Witches: 501 Butai Hasshin Shimasu!BStriking DistanceB
StripteaseBStuart Saves His FamilyBSubmarine Super 99BSugar*SoldierBSuirin: Karma 2B)Suisei no Gargantia: Meguru Kouro, HarukaBSuite PrecureB:Suki na Mono wa Suki da kara Shou ga Nai!!: Onsen ni Ikou!B)Suki! Yuki! Maji Magic feat. Hatsune MikuBSukima no Kuni no PoltaBSum Sok Chingu StonyzB3Sumeba Miyako no Cosmos-sou Suttoko Taisen DokkoidaB5Sumikko Gurashi Movie: Tobidasu Ehon to Himitsu no KoBSunset ParkBSuper Fishing Grander MusashiBSuper Titan 15BSurvivalBSurviving PicassoBSurviving the GameBSusume! Gachimuchi SankyoudaiBSwimming with SharksBSwingersB
SwitchbackB5TOHO Cinemas x One Piece Film: Gold - Tokubetsu EizouBTUYU: Kako ni TorawareteiruBTacica: NewsongBTaegeugsonyeon Huin DogsuliBTai Hao FuxiBTaiho Shichau zo (1996)BTaiho Shichau zo (TV)B7Takayan: Jibun no Koto ga Daikirai na Onnanoko no KyokuBTaketori Overnight SensationBTales from the HoodBATales of Symphonia The Animation: Kratos-sensei no Private LessonBTalking About SexB1Tamako Market: Pettanko Anime - Occhoko Choi-chanBTanjou!! KKT21BTanoshii SansuuB'Tanpen Unico: Kuroi Kumo to Shiroi HaneBTargetBTaxi DriverBTayo-ui Jangnangam AdventureB	Teekyuu 2B	Teekyuu 6BTeeterBTekkenB4Tenchi Muyou!: Galaxy Police Mihoshi Space AdventureB9Tengen Toppa Gurren Lagann: Ore no Gurren wa Pikka-Pika!!BTenshi KinryoukuBTenshi no Habataki JunBTerror in a Texas TownBTetsuo II: Body HammerBThat Darn Cat!BThat Thing You Do!BThe AddictionB$The Adventures of the Galaxy RangersBThe Amazing Panda AdventureBThe American PresidentBThe Amityville HorrorBThe Apple Dumpling GangBThe ArrivalBThe AssociateBThe Baby-Sitters ClubB)The Ballad of Narayama (Narayama Bushiko)BThe Band WagonBThe Basketball DiariesBThe Beverly HillbilliesBThe Big Blue (Le Grand bleu)BThe Big OneBThe Big SleepBThe BlobBThe Bloody ChildB!The Blue Angel (Blaue Engel, Der)BThe Bridges of Madison CountyBThe Brothers McMullenBThe Browning VersionBThe Butcher BoyBThe Cable GuyBThe CandidateB
The ClientBThe CoinBThe Cowboy WayB	The CraftBThe Crossing GuardBThe CrowBThe Crude OasisBThe CureBThe DaytrippersBThe Deadly CureBThe Deer HunterBThe Designated MournerBThe Devil's OwnBThe Diary of OchibiBThe Doom GenerationB	The DoorsB!The Doraemons: Goal! Goal! Goal!!BThe EdgeBThe Eighth DayBThe Endless Summer 2BThe Evening StarBThe FanBThe Fifth ElementBThe First Wives ClubB/The Flower of My Secret (La Flor de mi secreto)B)The Forbidden Christ (Il Cristo proibito)BThe Fox and the HoundBThe FrightenersBThe FugitiveBThe Full MontyBThe FuneralBThe GameB;The Garden of Finzi-Contini (Il Giardino dei Finzi-Contini)BThe Ghost and Mrs. MuirBThe Ghost and the DarknessBThe GodfatherBThe Good, The Bad and The UglyBThe Grass HarpBThe Great DictatorBThe Great EscapeBThe Great White HypeB The Gregory Gallery Tour SpecialBThe GriftersB'The Haunted World of Edward D. Wood Jr.BThe Horse WhispererB1The Horseman on the Roof (Le Hussard sur le toit)BThe Hour of the PigBThe House of YesBThe House of the SpiritsBThe HowlingBThe Hudsucker ProxyBThe Hunchback of Notre DameBThe Ice StormBNThe Idolmaster Cinderella Girls: Starlight Stage 5 Shuunen Kinen - Go Just Go!BThe Indian in the CupboardBThe Innocent SleepBThe Inspector GeneralBThe Invitation (Zaproszenie)BThe Island of Dr. MoreauBThe Journey of August KingBThe Joy Luck ClubB!The Last Time I Committed SuicideBThe Leading ManBThe Leopard SonBThe Line King: Al HirschfeldBThe Lion KingBThe Little PrincessBThe LocustsBThe Lost World: Jurassic ParkBThe MachineBThe Magic HourBThe Maltese FalconBThe Man Who Knew Too LittleBThe Man Without a FaceBThe Man from Down UnderBThe Mark of ZorroBThe MaskBThe MatchMakerB&The Mysterious Cities of Gold Season 4BThe NeverEnding Story IIIBThe Newton BoysBThe Nightmare Before ChristmasBThe Nutty ProfessorBThe Object of My AffectionBThe OmenB
The OutlawBThe PagemasterBThe Perfect WorldBThe PestBThe Philadelphia StoryBThe Pillow BookBThe Powerpuff Girls Rule!!!BThe Preacher's WifeB;The Prince of Tennis II: Hyoutei vs Rikkai - Game of FutureBThe Princess BrideBThe ProgramBThe Promise (Das Versprechen)BThe ProphecyB	The QuestBThe Quick and the DeadBThe Quiet RoomBThe Reluctant DebutanteB8The Return of Martin Guerre (Le Retour de Martin Guerre)BThe River WildBThe Road to WellvilleB	The SaintBThe Saint of Fort WashingtonB	The ScoutB&The Second Jungle Book: Mowgli & BalooBThe Secret AgentBThe Secret GardenBThe Secret of Roan InishB&The Seventh Seal (Det Sjunde inseglet)BThe Sexual Life of the BelgiansB
The ShadowBThe Shaggy DogBThe Shawshank RedemptionBThe ShowBThe Siamese: First MissionBThe Silence of the LambsBThe Sixth ManBThe SlingshotBThe Spitfire GrillBThe StrangerBThe Substance of FireBThe Sum of UsBThe SunchaserBThe Swan PrincessBThe Sweet HereafterBThe TerminatorBThe Thin ManBThe Third ManBThe Transformers: The MovieB The Treasure of the Sierra MadreBThe Trigger EffectBThe TurningBThe Usual SuspectsBThe WarBThe Wedding GiftBThe Wedding SingerBThe White MoonBThe WifeBThe Wild BunchBThe Wings of the DoveBThe Winter GuestBThe Woman in QuestionB	The WomenBThe Wooden Man's Bride (Wu Kui)BThe World of Apu (Apur Sansar)BRThe iDOLM@STER Cinderella Girls: Starlight Stage - 5-shuunen Kinen! Go Just Go! PVB5The iDOLM@STER Million Live! "Dreaming!" Animation PVB'Things to Do in Denver when You're DeadBThis Is Spinal TapBThree Colors: WhiteBTiaoyue ZhanshiBTie Me Up! Tie Me Down!BTiger Mask (Movie)BTiger Mask Fuku Men League SenB#Tigrero: A Film That Was Never MadeB"Time Driver: Bokura ga Kaita MiraiBTiming (Movie)BTo Catch a ThiefB
To Die ForBTo Have, or NotB0To Wong Foo, Thanks for Everything! Julie NewmarB*Toaru Majutsu no Index 10th Anniversary PVB"Tokimeki Restaurant MIRACLE6 MovieB
Tokyo 2164BTokyo Babylon: VisionBTokyo FantasiaBTokyo Ghoul: "Pinto"BTokyo Ghoul:reB	Tommy BoyBTonari no Seki-kunBTonggu Qi YuanB
Tooi SekaiB	Tooi SoraBTop GunBTop HatBCToshoshitsu no Kanojo: Seiso na Kimi ga Ochiru made - The AnimationB
Tough Guy!BTough and DeadlyBTouhou HakuchuumuBTouhou PVD 4B!Toutotsu ni Egypt Shin 2nd SeasonB1Tower of Druaga: The Aegis of Uruk: Jil no BoukenB	Toy StoryBTrainspottingBTrees LoungeBTrial and ErrorBTrinity SevenB	True LiesBTrue RomanceBTrustBTsuki ga Kirei SpecialBTsukiyo to MeganeBTsunagaru AnimalB Tunshu Xuetang Zhi Chengyu GushiB
TurbulenceBTwelve MonkeysBTwistedBTwo BitsBU.S. MarshallsBUchiage HanabiBUchouten KazokuB:Uchuu Senkan Yamato 2202: Ai no Senshi-tachi - Rengoku-henB9Uchuu Senkan Yamato 2202: Ai no Senshi-tachi - Tenmei-henB-Uchuu Senkan Yamato 2205: Aratanaru TabidachiBUltraman USABUmineko no Naku Koro niBUnder SiegeBUnforgettableBUnhook the StarsBUnstrung HeroesB2Until the End of the World (Bis ans Ende der Welt)BUnzippedBUp Close and PersonalBUp in SmokeBUpin & Ipin Musim 9B#Upin & Ipin dan Kawan-Kawan Musim 3BUracon II Opening AnimationBUrikupen Kyuujo-taiB Urusei Yatsura Movie 1: Only YouBUsagi no Mofy (TV)BUso Uso Uso UsoBUtawarerumonoB Valkyrie Drive: Mermaid SpecialsBVampire Hunter D (2000)BVegas VacationBVerminBVertigoBVictor/VictoriaBViolence VoyagerB	Viper GTSBViviBWag the DogBWaiting for GuffmanBWaiting to ExhaleB/Wallace & Gromit: The Best of Aardman AnimationBWan Jie Du ZunBWares: BeyondBWashington SquareB~Watashi no Naka no Gensou-teki Sekaikan Oyobi Sono Kengen wo Souki Saseta Aru Genjitsu de no Dekigoto ni Kansuru Ichi KousatsuB
WaterworldBWeather HackersBWedding Bell BluesBWeekend at Bernie'sBWeiqi Shaonian 2BWelcome to the DollhouseBWhat's Love Got to Do with ItBWheely: Gempak & LawakBWhen Harry Met Sally...BWhen We Were KingsBWhen a Man Loves a WomanBWhile You Were SleepingBWhite Man's BurdenBWhite SquallBWidows' PeakBWild AmericaB	Wild BillB
Wild ReedsBWings of CourageBWings of DesireBWith HonorsBWitnessBWo Qi Ku Le Baiwan XiulianzheB Wo Qi Ku Liao Baiwan Xiulian ZheBWo Shi Na ZhaBWo Wei Ge KuangBWu Geng Ji 4th SeasonB
Wyatt EarpBXi Yangyang Yu Hui TailangB-Xi Yangyang Yu Hui Tailang: Kuang Chu ShengliB/Xi Yangyang Yu Hui Tailang: Qihuan Tiankong DaoBXia Gu Zhong An ZuBXiagu Zhong An Zu 2nd SeasonBXiao Ban Long Haiyang BaikeB	Xiao BujiB$Xiao Cangshu Di Di de Chi Bo RichangBXiao Ji Bu Hao Re season7BXiao Ji Caihong 5BXiao Liangmao 2: Bailu GuilaiB-Xiao Shu Ping Ping Zhi Chengyu Dadian season2BXiao Yang Duo Li 2nd SeasonB
Xiao YanziBXiaofang YingxiongB#Xiaolong Wan Di Zhi Huanle XiaoyuanBXifan YuyanBXin Xiyou Man JiBXing Hai Qi ShiB"Xing Mao Lixian Ji Zhi Shu Fa PianB8Xing Mao Wenhua Da Jiangtang Minjian Chuanqi Zhi Long NuB%Xingji Jiazu Zhi Anquan Shaonian TuanBXiqu Donghua JijinBYakata: Kannou KitanBYakimochi CapriceBYakyuubu AruaruBYang Jia Jiang Zhi Jin ShatanB%Yasai no Yousei: N.Y. Salad The MovieBYasai no Yousei: Quiz GekijouBYi Shijie Zhongyao Pu (2021)BYobou-san to YoboushiyouBYoru gohan no jikokuB;Yoshinari You Gashuu Rakugaki-hen - Tezuka Osamu CharactersBYou So CrazyBYoukai WatchBYoukoso! Ecolo ShimaB
Young GunsB:Yowai 5000-nen no Soushoku Dragon, Iwarenaki Jaryuu NinteiBYu Gi Oh! 5D'sBYuan ZunBYueqiu ShouB
Yuki TeraiBYukuai De ShiwumenBYume no Ukiyo ni SaiteminaBYume-iro PreBYumekui MerryBYuru Camp SpecialsBYuu Eryuan Da Zhong XiaobanB Yuu Yu Hakusho: Eizou Hakusho IIBYuuki Yuuna wa Yuushabu ShozokuBYuusha Tokkyuu Might GaineBZenbu WakatteruBZeng Guang Xian WenBZetsumetsu Kigu-shun. (2020)BZeus and RoxanneBZhen Gongfu Zhi Aoyun Zai WojiaBZhongdian FuziBZhongguo Qi TanBZhu Shu Zhushou ShuB$Zhu Zhu Xia: Jing Qiu Xiao YingxiongB!Zhu Zhu Xia: Xing Fu Jiu Yuan DuiBZhuang Zai Koudai Li De BabaB	Zhun XingBZoids Wild ZeroBZuihou de Zhaohuan ShiBIZutto Mae kara Suki deshita.: Kokuhaku Jikkou Iinkai - Kinyoubi no OhayouB$Zutto Mayonaka de Iinoni.: Kangure iBdwarf Movie LabBmockBxxxHOLiC Rou
?i
Const_5Const*
_output_shapes	
:?*
dtype0	*?h
value?hB?h	?"?h                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_2Const_3*
Tin
2	*
Tout
2*
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
GPU 2J 8? *"
fR
__inference_<lambda>_2962
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_4Const_5*
Tin
2	*
Tout
2*
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
GPU 2J 8? *"
fR
__inference_<lambda>_2970
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
?5
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
?
ranking_model
task
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
?

user_embeddings
movie_embeddings
ratings
	variables
trainable_variables
regularization_losses
	keras_api
?
_ranking_metrics
_prediction_metrics
_label_metrics
_loss_metrics
	variables
trainable_variables
regularization_losses
	keras_api
?
iter
	decay
learning_rateaccumulator?accumulator?accumulator?accumulator? accumulator?!accumulator?"accumulator?#accumulator?
 
8
0
1
2
3
 4
!5
"6
#7
8
0
1
2
3
 4
!5
"6
#7
 
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
 
?
)layer-0
*layer_with_weights-0
*layer-1
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?
/layer-0
0layer_with_weights-0
0layer-1
1	variables
2trainable_variables
3regularization_losses
4	keras_api
?
5layer_with_weights-0
5layer-0
6layer_with_weights-1
6layer-1
7layer_with_weights-2
7layer-2
8	variables
9trainable_variables
:regularization_losses
;	keras_api
8
0
1
2
3
 4
!5
"6
#7
8
0
1
2
3
 4
!5
"6
#7
 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses

A0
 
 
 
 
 
 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
KI
VARIABLE_VALUEAdagrad/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEAdagrad/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEAdagrad/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEembedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEembedding_1/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

A0
 
 
!
Glookup_table
H	keras_api
b

embeddings
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api

0

0
 
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
+	variables
,trainable_variables
-regularization_losses
!
Rlookup_table
S	keras_api
b

embeddings
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api

0

0
 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
1	variables
2trainable_variables
3regularization_losses
h

kernel
bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
h

 kernel
!bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
h

"kernel
#bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
*
0
1
 2
!3
"4
#5
*
0
1
 2
!3
"4
#5
 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
8	variables
9trainable_variables
:regularization_losses
 


0
1
2
 
 
 
4
	ntotal
	ocount
p	variables
q	keras_api
 
 

A0
 

Aroot_mean_squared_error

r_initializer
 

0

0
 
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
 

)0
*1
 
 
 

x_initializer
 

0

0
 
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
 

/0
01
 
 
 

0
1

0
1
 
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses

 0
!1

 0
!1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
a	variables
btrainable_variables
cregularization_losses

"0
#1

"0
#1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
 

50
61
72
 
 
 
SQ
VARIABLE_VALUEtotal8task/_ranking_metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEcount8task/_ranking_metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
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
??
VARIABLE_VALUE(Adagrad/embedding/embeddings/accumulatorLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adagrad/embedding_1/embeddings/accumulatorLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adagrad/dense/kernel/accumulatorLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdagrad/dense/bias/accumulatorLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adagrad/dense_1/kernel/accumulatorLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adagrad/dense_1/bias/accumulatorLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adagrad/dense_2/kernel/accumulatorLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adagrad/dense_2/bias/accumulatorLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUE
v
serving_default_movie_titlePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
serving_default_user_idPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_movie_titleserving_default_user_id
hash_tableConstembedding/embeddingshash_table_1Const_1embedding_1/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_2349
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename Adagrad/iter/Read/ReadVariableOp!Adagrad/decay/Read/ReadVariableOp)Adagrad/learning_rate/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp<Adagrad/embedding/embeddings/accumulator/Read/ReadVariableOp>Adagrad/embedding_1/embeddings/accumulator/Read/ReadVariableOp4Adagrad/dense/kernel/accumulator/Read/ReadVariableOp2Adagrad/dense/bias/accumulator/Read/ReadVariableOp6Adagrad/dense_1/kernel/accumulator/Read/ReadVariableOp4Adagrad/dense_1/bias/accumulator/Read/ReadVariableOp6Adagrad/dense_2/kernel/accumulator/Read/ReadVariableOp4Adagrad/dense_2/bias/accumulator/Read/ReadVariableOpConst_6*"
Tin
2	*
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
GPU 2J 8? *&
f!R
__inference__traced_save_3067
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenameAdagrad/iterAdagrad/decayAdagrad/learning_rateembedding/embeddingsembedding_1/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biastotalcount(Adagrad/embedding/embeddings/accumulator*Adagrad/embedding_1/embeddings/accumulator Adagrad/dense/kernel/accumulatorAdagrad/dense/bias/accumulator"Adagrad/dense_1/kernel/accumulator Adagrad/dense_1/bias/accumulator"Adagrad/dense_2/kernel/accumulator Adagrad/dense_2/bias/accumulator*!
Tin
2*
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
GPU 2J 8? *)
f$R"
 __inference__traced_restore_3140??

?
?
+__inference_sequential_1_layer_call_fn_2708

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1521o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
}
(__inference_embedding_layer_call_fn_2834

inputs	
unknown:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1408o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2039
input_1
input_2
sequential_2009
sequential_2011	"
sequential_2013:	? 
sequential_1_2016
sequential_1_2018	$
sequential_1_2020:	? $
sequential_2_2025:	@? 
sequential_2_2027:	?$
sequential_2_2029:	?@
sequential_2_2031:@#
sequential_2_2033:@
sequential_2_2035:
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2009sequential_2011sequential_2013*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1413?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1_2016sequential_1_2018sequential_1_2020*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1521M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_2_2025sequential_2_2027sequential_2_2029sequential_2_2031sequential_2_2033sequential_2_2035*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1662|
IdentityIdentity-sequential_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_1_layer_call_fn_1582
string_lookup_1_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_1_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1562o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2108
features

features_1
ranking_model_2082
ranking_model_2084	%
ranking_model_2086:	? 
ranking_model_2088
ranking_model_2090	%
ranking_model_2092:	? %
ranking_model_2094:	@?!
ranking_model_2096:	?%
ranking_model_2098:	?@ 
ranking_model_2100:@$
ranking_model_2102:@ 
ranking_model_2104:
identity??%ranking_model/StatefulPartitionedCall?
%ranking_model/StatefulPartitionedCallStatefulPartitionedCall
features_1featuresranking_model_2082ranking_model_2084ranking_model_2086ranking_model_2088ranking_model_2090ranking_model_2092ranking_model_2094ranking_model_2096ranking_model_2098ranking_model_2100ranking_model_2102ranking_model_2104*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1854}
IdentityIdentity.ranking_model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^ranking_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2N
%ranking_model/StatefulPartitionedCall%ranking_model/StatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_1422
string_lookup_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_2697

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
embedding_embedding_lookup_2691:	? 
identity??embedding/embedding_lookup?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_2691string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/2691*'
_output_shapes
:????????? *
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/2691*'
_output_shapes
:????????? ?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_2827

inputs7
$dense_matmul_readvariableop_resource:	@?4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_2732

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	4
!embedding_1_embedding_lookup_2726:	? 
identity??embedding_1/embedding_lookup?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather!embedding_1_embedding_lookup_2726!string_lookup_1/Identity:output:0*
Tindices0	*4
_class*
(&loc:@embedding_1/embedding_lookup/2726*'
_output_shapes
:????????? *
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/2726*'
_output_shapes
:????????? ?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 
IdentityIdentity0embedding_1/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_1/embedding_lookup.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_ranking_model_layer_call_and_return_conditional_losses_1854

inputs
inputs_1
sequential_1824
sequential_1826	"
sequential_1828:	? 
sequential_1_1831
sequential_1_1833	$
sequential_1_1835:	? $
sequential_2_1840:	@? 
sequential_2_1842:	?$
sequential_2_1844:	?@
sequential_2_1846:@#
sequential_2_1848:@
sequential_2_1850:
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1824sequential_1826sequential_1828*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1413?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_1_1831sequential_1_1833sequential_1_1835*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1521M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_2_1840sequential_2_1842sequential_2_1844sequential_2_1846sequential_2_1848sequential_2_1850*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1662|
IdentityIdentity-sequential_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_29706
2key_value_init195_lookuptableimportv2_table_handle.
*key_value_init195_lookuptableimportv2_keys0
,key_value_init195_lookuptableimportv2_values	
identity??%key_value_init195/LookupTableImportV2?
%key_value_init195/LookupTableImportV2LookupTableImportV22key_value_init195_lookuptableimportv2_table_handle*key_value_init195_lookuptableimportv2_keys,key_value_init195_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init195/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2N
%key_value_init195/LookupTableImportV2%key_value_init195/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?@
?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2649
inputs_0
inputs_1G
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
*sequential_embedding_embedding_lookup_2612:	? K
Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleL
Hsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	A
.sequential_1_embedding_1_embedding_lookup_2621:	? D
1sequential_2_dense_matmul_readvariableop_resource:	@?A
2sequential_2_dense_biasadd_readvariableop_resource:	?F
3sequential_2_dense_1_matmul_readvariableop_resource:	?@B
4sequential_2_dense_1_biasadd_readvariableop_resource:@E
3sequential_2_dense_2_matmul_readvariableop_resource:@B
4sequential_2_dense_2_biasadd_readvariableop_resource:
identity??%sequential/embedding/embedding_lookup?6sequential/string_lookup/None_Lookup/LookupTableFindV2?)sequential_1/embedding_1/embedding_lookup?:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?)sequential_2/dense/BiasAdd/ReadVariableOp?(sequential_2/dense/MatMul/ReadVariableOp?+sequential_2/dense_1/BiasAdd/ReadVariableOp?*sequential_2/dense_1/MatMul/ReadVariableOp?+sequential_2/dense_2/BiasAdd/ReadVariableOp?*sequential_2/dense_2/MatMul/ReadVariableOp?
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_0Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_2612*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2612*'
_output_shapes
:????????? *
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2612*'
_output_shapes
:????????? ?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_1Hsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
%sequential_1/string_lookup_1/IdentityIdentityCsequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)sequential_1/embedding_1/embedding_lookupResourceGather.sequential_1_embedding_1_embedding_lookup_2621.sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*A
_class7
53loc:@sequential_1/embedding_1/embedding_lookup/2621*'
_output_shapes
:????????? *
dtype0?
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*A
_class7
53loc:@sequential_1/embedding_1/embedding_lookup/2621*'
_output_shapes
:????????? ?
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV29sequential/embedding/embedding_lookup/Identity_1:output:0=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
(sequential_2/dense/MatMul/ReadVariableOpReadVariableOp1sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
sequential_2/dense/MatMulMatMulconcat:output:00sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense/BiasAddBiasAdd#sequential_2/dense/MatMul:product:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
sequential_2/dense/ReluRelu#sequential_2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_2/dense_1/MatMulMatMul%sequential_2/dense/Relu:activations:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*^sequential_1/embedding_1/embedding_lookup;^sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2*^sequential_2/dense/BiasAdd/ReadVariableOp)^sequential_2/dense/MatMul/ReadVariableOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV22V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2x
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2T
(sequential_2/dense/MatMul/ReadVariableOp(sequential_2/dense/MatMul/ReadVariableOp2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_1745

inputs

dense_1729:	@?

dense_1731:	?
dense_1_1734:	?@
dense_1_1736:@
dense_2_1739:@
dense_2_1741:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputs
dense_1729
dense_1731*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1622?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1734dense_1_1736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1639?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1739dense_2_1741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1655w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_1593
string_lookup_1_input>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	#
embedding_1_1589:	? 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handlestring_lookup_1_input;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_1589*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1516{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?\
?
__inference__wrapped_model_1388
movie_title
user_ide
amovielens_model_ranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlef
bmovielens_model_ranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	[
Hmovielens_model_ranking_model_sequential_embedding_embedding_lookup_1351:	? i
emovielens_model_ranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlej
fmovielens_model_ranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	_
Lmovielens_model_ranking_model_sequential_1_embedding_1_embedding_lookup_1360:	? b
Omovielens_model_ranking_model_sequential_2_dense_matmul_readvariableop_resource:	@?_
Pmovielens_model_ranking_model_sequential_2_dense_biasadd_readvariableop_resource:	?d
Qmovielens_model_ranking_model_sequential_2_dense_1_matmul_readvariableop_resource:	?@`
Rmovielens_model_ranking_model_sequential_2_dense_1_biasadd_readvariableop_resource:@c
Qmovielens_model_ranking_model_sequential_2_dense_2_matmul_readvariableop_resource:@`
Rmovielens_model_ranking_model_sequential_2_dense_2_biasadd_readvariableop_resource:
identity??Cmovielens_model/ranking_model/sequential/embedding/embedding_lookup?Tmovielens_model/ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?Gmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup?Xmovielens_model/ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?Gmovielens_model/ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp?Fmovielens_model/ranking_model/sequential_2/dense/MatMul/ReadVariableOp?Imovielens_model/ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp?Hmovielens_model/ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp?Imovielens_model/ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp?Hmovielens_model/ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp?
Tmovielens_model/ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2amovielens_model_ranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleuser_idbmovielens_model_ranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
?movielens_model/ranking_model/sequential/string_lookup/IdentityIdentity]movielens_model/ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Cmovielens_model/ranking_model/sequential/embedding/embedding_lookupResourceGatherHmovielens_model_ranking_model_sequential_embedding_embedding_lookup_1351Hmovielens_model/ranking_model/sequential/string_lookup/Identity:output:0*
Tindices0	*[
_classQ
OMloc:@movielens_model/ranking_model/sequential/embedding/embedding_lookup/1351*'
_output_shapes
:????????? *
dtype0?
Lmovielens_model/ranking_model/sequential/embedding/embedding_lookup/IdentityIdentityLmovielens_model/ranking_model/sequential/embedding/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@movielens_model/ranking_model/sequential/embedding/embedding_lookup/1351*'
_output_shapes
:????????? ?
Nmovielens_model/ranking_model/sequential/embedding/embedding_lookup/Identity_1IdentityUmovielens_model/ranking_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Xmovielens_model/ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2emovielens_model_ranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlemovie_titlefmovielens_model_ranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Cmovielens_model/ranking_model/sequential_1/string_lookup_1/IdentityIdentityamovielens_model/ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
Gmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookupResourceGatherLmovielens_model_ranking_model_sequential_1_embedding_1_embedding_lookup_1360Lmovielens_model/ranking_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*_
_classU
SQloc:@movielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup/1360*'
_output_shapes
:????????? *
dtype0?
Pmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentityPmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*_
_classU
SQloc:@movielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup/1360*'
_output_shapes
:????????? ?
Rmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityYmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? k
)movielens_model/ranking_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
$movielens_model/ranking_model/concatConcatV2Wmovielens_model/ranking_model/sequential/embedding/embedding_lookup/Identity_1:output:0[movielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:02movielens_model/ranking_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
Fmovielens_model/ranking_model/sequential_2/dense/MatMul/ReadVariableOpReadVariableOpOmovielens_model_ranking_model_sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
7movielens_model/ranking_model/sequential_2/dense/MatMulMatMul-movielens_model/ranking_model/concat:output:0Nmovielens_model/ranking_model/sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
Gmovielens_model/ranking_model/sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOpPmovielens_model_ranking_model_sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8movielens_model/ranking_model/sequential_2/dense/BiasAddBiasAddAmovielens_model/ranking_model/sequential_2/dense/MatMul:product:0Omovielens_model/ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
5movielens_model/ranking_model/sequential_2/dense/ReluReluAmovielens_model/ranking_model/sequential_2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Hmovielens_model/ranking_model/sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOpQmovielens_model_ranking_model_sequential_2_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
9movielens_model/ranking_model/sequential_2/dense_1/MatMulMatMulCmovielens_model/ranking_model/sequential_2/dense/Relu:activations:0Pmovielens_model/ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
Imovielens_model/ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpRmovielens_model_ranking_model_sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
:movielens_model/ranking_model/sequential_2/dense_1/BiasAddBiasAddCmovielens_model/ranking_model/sequential_2/dense_1/MatMul:product:0Qmovielens_model/ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
7movielens_model/ranking_model/sequential_2/dense_1/ReluReluCmovielens_model/ranking_model/sequential_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Hmovielens_model/ranking_model/sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOpQmovielens_model_ranking_model_sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
9movielens_model/ranking_model/sequential_2/dense_2/MatMulMatMulEmovielens_model/ranking_model/sequential_2/dense_1/Relu:activations:0Pmovielens_model/ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Imovielens_model/ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpRmovielens_model_ranking_model_sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
:movielens_model/ranking_model/sequential_2/dense_2/BiasAddBiasAddCmovielens_model/ranking_model/sequential_2/dense_2/MatMul:product:0Qmovielens_model/ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
IdentityIdentityCmovielens_model/ranking_model/sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpD^movielens_model/ranking_model/sequential/embedding/embedding_lookupU^movielens_model/ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2H^movielens_model/ranking_model/sequential_1/embedding_1/embedding_lookupY^movielens_model/ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2H^movielens_model/ranking_model/sequential_2/dense/BiasAdd/ReadVariableOpG^movielens_model/ranking_model/sequential_2/dense/MatMul/ReadVariableOpJ^movielens_model/ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOpI^movielens_model/ranking_model/sequential_2/dense_1/MatMul/ReadVariableOpJ^movielens_model/ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOpI^movielens_model/ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2?
Cmovielens_model/ranking_model/sequential/embedding/embedding_lookupCmovielens_model/ranking_model/sequential/embedding/embedding_lookup2?
Tmovielens_model/ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Tmovielens_model/ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV22?
Gmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookupGmovielens_model/ranking_model/sequential_1/embedding_1/embedding_lookup2?
Xmovielens_model/ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Xmovielens_model/ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22?
Gmovielens_model/ranking_model/sequential_2/dense/BiasAdd/ReadVariableOpGmovielens_model/ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp2?
Fmovielens_model/ranking_model/sequential_2/dense/MatMul/ReadVariableOpFmovielens_model/ranking_model/sequential_2/dense/MatMul/ReadVariableOp2?
Imovielens_model/ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOpImovielens_model/ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp2?
Hmovielens_model/ranking_model/sequential_2/dense_1/MatMul/ReadVariableOpHmovielens_model/ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp2?
Imovielens_model/ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOpImovielens_model/ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp2?
Hmovielens_model/ranking_model/sequential_2/dense_2/MatMul/ReadVariableOpHmovielens_model/ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp:P L
#
_output_shapes
:?????????
%
_user_specified_namemovie_title:LH
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_29496
2key_value_init195_lookuptableimportv2_table_handle.
*key_value_init195_lookuptableimportv2_keys0
,key_value_init195_lookuptableimportv2_values	
identity??%key_value_init195/LookupTableImportV2?
%key_value_init195/LookupTableImportV2LookupTableImportV22key_value_init195_lookuptableimportv2_table_handle*key_value_init195_lookuptableimportv2_keys,key_value_init195_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init195/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2N
%key_value_init195/LookupTableImportV2%key_value_init195/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2198
features

features_1
ranking_model_2172
ranking_model_2174	%
ranking_model_2176:	? 
ranking_model_2178
ranking_model_2180	%
ranking_model_2182:	? %
ranking_model_2184:	@?!
ranking_model_2186:	?%
ranking_model_2188:	?@ 
ranking_model_2190:@$
ranking_model_2192:@ 
ranking_model_2194:
identity??%ranking_model/StatefulPartitionedCall?
%ranking_model/StatefulPartitionedCallStatefulPartitionedCall
features_1featuresranking_model_2172ranking_model_2174ranking_model_2176ranking_model_2178ranking_model_2180ranking_model_2182ranking_model_2184ranking_model_2186ranking_model_2188ranking_model_2190ranking_model_2192ranking_model_2194*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1948}
IdentityIdentity.ranking_model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^ranking_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2N
%ranking_model/StatefulPartitionedCall%ranking_model/StatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_2_layer_call_fn_2762

inputs
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1662o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_sequential_layer_call_fn_2671

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1454o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
A__inference_dense_1_layer_call_and_return_conditional_losses_1639

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
+__inference_sequential_2_layer_call_fn_1777
dense_input
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????@
%
_user_specified_namedense_input
?
?
,__inference_ranking_model_layer_call_fn_2529
inputs_0
inputs_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1854o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?

?
?__inference_dense_layer_call_and_return_conditional_losses_1622

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_1655

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_2803

inputs7
$dense_matmul_readvariableop_resource:	@?4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@5
'dense_2_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
+
__inference__destroyer_2954
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
+__inference_sequential_2_layer_call_fn_2779

inputs
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_movielens_model_layer_call_fn_2379
features_movie_title
features_user_id
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movie_titlefeatures_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_2108o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
#
_output_shapes
:?????????
.
_user_specified_namefeatures/movie_title:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/user_id:

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_29316
2key_value_init173_lookuptableimportv2_table_handle.
*key_value_init173_lookuptableimportv2_keys0
,key_value_init173_lookuptableimportv2_values	
identity??%key_value_init173/LookupTableImportV2?
%key_value_init173/LookupTableImportV2LookupTableImportV22key_value_init173_lookuptableimportv2_table_handle*key_value_init173_lookuptableimportv2_keys,key_value_init173_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init173/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2N
%key_value_init173/LookupTableImportV2%key_value_init173/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_1796
dense_input

dense_1780:	@?

dense_1782:	?
dense_1_1785:	?@
dense_1_1787:@
dense_2_1790:@
dense_2_1792:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input
dense_1780
dense_1782*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1622?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1785dense_1_1787*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1639?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1790dense_2_1792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1655w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
'
_output_shapes
:?????????@
%
_user_specified_namedense_input
?V
?
 __inference__traced_restore_3140
file_prefix'
assignvariableop_adagrad_iter:	 *
 assignvariableop_1_adagrad_decay: 2
(assignvariableop_2_adagrad_learning_rate: :
'assignvariableop_3_embedding_embeddings:	? <
)assignvariableop_4_embedding_1_embeddings:	? 2
assignvariableop_5_dense_kernel:	@?,
assignvariableop_6_dense_bias:	?4
!assignvariableop_7_dense_1_kernel:	?@-
assignvariableop_8_dense_1_bias:@3
!assignvariableop_9_dense_2_kernel:@.
 assignvariableop_10_dense_2_bias:#
assignvariableop_11_total: #
assignvariableop_12_count: O
<assignvariableop_13_adagrad_embedding_embeddings_accumulator:	? Q
>assignvariableop_14_adagrad_embedding_1_embeddings_accumulator:	? G
4assignvariableop_15_adagrad_dense_kernel_accumulator:	@?A
2assignvariableop_16_adagrad_dense_bias_accumulator:	?I
6assignvariableop_17_adagrad_dense_1_kernel_accumulator:	?@B
4assignvariableop_18_adagrad_dense_1_bias_accumulator:@H
6assignvariableop_19_adagrad_dense_2_kernel_accumulator:@B
4assignvariableop_20_adagrad_dense_2_bias_accumulator:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adagrad_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_adagrad_decayIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp(assignvariableop_2_adagrad_learning_rateIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp'assignvariableop_3_embedding_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp)assignvariableop_4_embedding_1_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp<assignvariableop_13_adagrad_embedding_embeddings_accumulatorIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp>assignvariableop_14_adagrad_embedding_1_embeddings_accumulatorIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp4assignvariableop_15_adagrad_dense_kernel_accumulatorIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adagrad_dense_bias_accumulatorIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adagrad_dense_1_kernel_accumulatorIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adagrad_dense_1_bias_accumulatorIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adagrad_dense_2_kernel_accumulatorIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adagrad_dense_2_bias_accumulatorIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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
?
9
__inference__creator_2941
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name196*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?

?
A__inference_dense_1_layer_call_and_return_conditional_losses_2899

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_<lambda>_29626
2key_value_init173_lookuptableimportv2_table_handle.
*key_value_init173_lookuptableimportv2_keys0
,key_value_init173_lookuptableimportv2_values	
identity??%key_value_init173/LookupTableImportV2?
%key_value_init173/LookupTableImportV2LookupTableImportV22key_value_init173_lookuptableimportv2_table_handle*key_value_init173_lookuptableimportv2_keys,key_value_init173_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init173/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2N
%key_value_init173/LookupTableImportV2%key_value_init173/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?

*__inference_embedding_1_layer_call_fn_2850

inputs	
unknown:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1516o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1413

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_1409:	? 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1409*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1408y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
G__inference_ranking_model_layer_call_and_return_conditional_losses_1948

inputs
inputs_1
sequential_1918
sequential_1920	"
sequential_1922:	? 
sequential_1_1925
sequential_1_1927	$
sequential_1_1929:	? $
sequential_2_1934:	@? 
sequential_2_1936:	?$
sequential_2_1938:	?@
sequential_2_1940:@#
sequential_2_1942:@
sequential_2_1944:
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_1918sequential_1920sequential_1922*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1454?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1sequential_1_1925sequential_1_1927sequential_1_1929*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1562M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_2_1934sequential_2_1936sequential_2_1938sequential_2_1940sequential_2_1942sequential_2_1944*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1745|
IdentityIdentity-sequential_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_embedding_1_layer_call_and_return_conditional_losses_2859

inputs	(
embedding_lookup_2853:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2853inputs*
Tindices0	*(
_class
loc:@embedding_lookup/2853*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/2853*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_2745

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	4
!embedding_1_embedding_lookup_2739:	? 
identity??embedding_1/embedding_lookup?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding_1/embedding_lookupResourceGather!embedding_1_embedding_lookup_2739!string_lookup_1/Identity:output:0*
Tindices0	*4
_class*
(&loc:@embedding_1/embedding_lookup/2739*'
_output_shapes
:????????? *
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*4
_class*
(&loc:@embedding_1/embedding_lookup/2739*'
_output_shapes
:????????? ?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? 
IdentityIdentity0embedding_1/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding_1/embedding_lookup.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
,__inference_ranking_model_layer_call_fn_2005
input_1
input_2
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_1_layer_call_fn_2888

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_1408

inputs	(
embedding_lookup_1402:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1402inputs*
Tindices0	*(
_class
loc:@embedding_lookup/1402*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1402*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_1562

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	#
embedding_1_1558:	? 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_1558*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1516{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1496
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_1492:	? 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1492*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1408y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
+__inference_sequential_1_layer_call_fn_2719

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1562o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?3
?	
__inference__traced_save_3067
file_prefix+
'savev2_adagrad_iter_read_readvariableop	,
(savev2_adagrad_decay_read_readvariableop4
0savev2_adagrad_learning_rate_read_readvariableop3
/savev2_embedding_embeddings_read_readvariableop5
1savev2_embedding_1_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopG
Csavev2_adagrad_embedding_embeddings_accumulator_read_readvariableopI
Esavev2_adagrad_embedding_1_embeddings_accumulator_read_readvariableop?
;savev2_adagrad_dense_kernel_accumulator_read_readvariableop=
9savev2_adagrad_dense_bias_accumulator_read_readvariableopA
=savev2_adagrad_dense_1_kernel_accumulator_read_readvariableop?
;savev2_adagrad_dense_1_bias_accumulator_read_readvariableopA
=savev2_adagrad_dense_2_kernel_accumulator_read_readvariableop?
;savev2_adagrad_dense_2_bias_accumulator_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB8task/_ranking_metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBLvariables/0/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/1/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/2/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/3/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/4/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/5/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/6/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEBLvariables/7/.OPTIMIZER_SLOT/optimizer/accumulator/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_adagrad_iter_read_readvariableop(savev2_adagrad_decay_read_readvariableop0savev2_adagrad_learning_rate_read_readvariableop/savev2_embedding_embeddings_read_readvariableop1savev2_embedding_1_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopCsavev2_adagrad_embedding_embeddings_accumulator_read_readvariableopEsavev2_adagrad_embedding_1_embeddings_accumulator_read_readvariableop;savev2_adagrad_dense_kernel_accumulator_read_readvariableop9savev2_adagrad_dense_bias_accumulator_read_readvariableop=savev2_adagrad_dense_1_kernel_accumulator_read_readvariableop;savev2_adagrad_dense_1_bias_accumulator_read_readvariableop=savev2_adagrad_dense_2_kernel_accumulator_read_readvariableop;savev2_adagrad_dense_2_bias_accumulator_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *$
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : :	? :	? :	@?:?:	?@:@:@:: : :	? :	? :	@?:?:	?@:@:@:: 2(
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
:	? :%!

_output_shapes
:	? :%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 	

_output_shapes
:@:$
 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	? :%!

_output_shapes
:	? :%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1454

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_1450:	? 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1450*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1408y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2285
movie_title
user_id
ranking_model_2259
ranking_model_2261	%
ranking_model_2263:	? 
ranking_model_2265
ranking_model_2267	%
ranking_model_2269:	? %
ranking_model_2271:	@?!
ranking_model_2273:	?%
ranking_model_2275:	?@ 
ranking_model_2277:@$
ranking_model_2279:@ 
ranking_model_2281:
identity??%ranking_model/StatefulPartitionedCall?
%ranking_model/StatefulPartitionedCallStatefulPartitionedCalluser_idmovie_titleranking_model_2259ranking_model_2261ranking_model_2263ranking_model_2265ranking_model_2267ranking_model_2269ranking_model_2271ranking_model_2273ranking_model_2275ranking_model_2277ranking_model_2279ranking_model_2281*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1854}
IdentityIdentity.ranking_model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^ranking_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2N
%ranking_model/StatefulPartitionedCall%ranking_model/StatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_namemovie_title:LH
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: 
?
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2315
movie_title
user_id
ranking_model_2289
ranking_model_2291	%
ranking_model_2293:	? 
ranking_model_2295
ranking_model_2297	%
ranking_model_2299:	? %
ranking_model_2301:	@?!
ranking_model_2303:	?%
ranking_model_2305:	?@ 
ranking_model_2307:@$
ranking_model_2309:@ 
ranking_model_2311:
identity??%ranking_model/StatefulPartitionedCall?
%ranking_model/StatefulPartitionedCallStatefulPartitionedCalluser_idmovie_titleranking_model_2289ranking_model_2291ranking_model_2293ranking_model_2295ranking_model_2297ranking_model_2299ranking_model_2301ranking_model_2303ranking_model_2305ranking_model_2307ranking_model_2309ranking_model_2311*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1948}
IdentityIdentity.ranking_model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????n
NoOpNoOp&^ranking_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2N
%ranking_model/StatefulPartitionedCall%ranking_model/StatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_namemovie_title:LH
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: 
?N
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2499
features_movie_title
features_user_idU
Qranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleV
Rranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	K
8ranking_model_sequential_embedding_embedding_lookup_2462:	? Y
Uranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleZ
Vranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	O
<ranking_model_sequential_1_embedding_1_embedding_lookup_2471:	? R
?ranking_model_sequential_2_dense_matmul_readvariableop_resource:	@?O
@ranking_model_sequential_2_dense_biasadd_readvariableop_resource:	?T
Aranking_model_sequential_2_dense_1_matmul_readvariableop_resource:	?@P
Branking_model_sequential_2_dense_1_biasadd_readvariableop_resource:@S
Aranking_model_sequential_2_dense_2_matmul_readvariableop_resource:@P
Branking_model_sequential_2_dense_2_biasadd_readvariableop_resource:
identity??3ranking_model/sequential/embedding/embedding_lookup?Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?7ranking_model/sequential_1/embedding_1/embedding_lookup?Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp?6ranking_model/sequential_2/dense/MatMul/ReadVariableOp?9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp?8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp?9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp?8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp?
Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Qranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlefeatures_user_idRranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
/ranking_model/sequential/string_lookup/IdentityIdentityMranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
3ranking_model/sequential/embedding/embedding_lookupResourceGather8ranking_model_sequential_embedding_embedding_lookup_24628ranking_model/sequential/string_lookup/Identity:output:0*
Tindices0	*K
_classA
?=loc:@ranking_model/sequential/embedding/embedding_lookup/2462*'
_output_shapes
:????????? *
dtype0?
<ranking_model/sequential/embedding/embedding_lookup/IdentityIdentity<ranking_model/sequential/embedding/embedding_lookup:output:0*
T0*K
_classA
?=loc:@ranking_model/sequential/embedding/embedding_lookup/2462*'
_output_shapes
:????????? ?
>ranking_model/sequential/embedding/embedding_lookup/Identity_1IdentityEranking_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Uranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlefeatures_movie_titleVranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
3ranking_model/sequential_1/string_lookup_1/IdentityIdentityQranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
7ranking_model/sequential_1/embedding_1/embedding_lookupResourceGather<ranking_model_sequential_1_embedding_1_embedding_lookup_2471<ranking_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*O
_classE
CAloc:@ranking_model/sequential_1/embedding_1/embedding_lookup/2471*'
_output_shapes
:????????? *
dtype0?
@ranking_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentity@ranking_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*O
_classE
CAloc:@ranking_model/sequential_1/embedding_1/embedding_lookup/2471*'
_output_shapes
:????????? ?
Branking_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityIranking_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
ranking_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
ranking_model/concatConcatV2Granking_model/sequential/embedding/embedding_lookup/Identity_1:output:0Kranking_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0"ranking_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
6ranking_model/sequential_2/dense/MatMul/ReadVariableOpReadVariableOp?ranking_model_sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
'ranking_model/sequential_2/dense/MatMulMatMulranking_model/concat:output:0>ranking_model/sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp@ranking_model_sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(ranking_model/sequential_2/dense/BiasAddBiasAdd1ranking_model/sequential_2/dense/MatMul:product:0?ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%ranking_model/sequential_2/dense/ReluRelu1ranking_model/sequential_2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOpAranking_model_sequential_2_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
)ranking_model/sequential_2/dense_1/MatMulMatMul3ranking_model/sequential_2/dense/Relu:activations:0@ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpBranking_model_sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
*ranking_model/sequential_2/dense_1/BiasAddBiasAdd3ranking_model/sequential_2/dense_1/MatMul:product:0Aranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
'ranking_model/sequential_2/dense_1/ReluRelu3ranking_model/sequential_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOpAranking_model_sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
)ranking_model/sequential_2/dense_2/MatMulMatMul5ranking_model/sequential_2/dense_1/Relu:activations:0@ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpBranking_model_sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
*ranking_model/sequential_2/dense_2/BiasAddBiasAdd3ranking_model/sequential_2/dense_2/MatMul:product:0Aranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
IdentityIdentity3ranking_model/sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp4^ranking_model/sequential/embedding/embedding_lookupE^ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV28^ranking_model/sequential_1/embedding_1/embedding_lookupI^ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV28^ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp7^ranking_model/sequential_2/dense/MatMul/ReadVariableOp:^ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp9^ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp:^ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp9^ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2j
3ranking_model/sequential/embedding/embedding_lookup3ranking_model/sequential/embedding/embedding_lookup2?
Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV22r
7ranking_model/sequential_1/embedding_1/embedding_lookup7ranking_model/sequential_1/embedding_1/embedding_lookup2?
Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22r
7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp2p
6ranking_model/sequential_2/dense/MatMul/ReadVariableOp6ranking_model/sequential_2/dense/MatMul/ReadVariableOp2v
9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp2t
8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp2v
9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp2t
8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp:Y U
#
_output_shapes
:?????????
.
_user_specified_namefeatures/movie_title:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/user_id:

_output_shapes
: :

_output_shapes
: 
?@
?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2604
inputs_0
inputs_1G
Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleH
Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value	=
*sequential_embedding_embedding_lookup_2567:	? K
Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleL
Hsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	A
.sequential_1_embedding_1_embedding_lookup_2576:	? D
1sequential_2_dense_matmul_readvariableop_resource:	@?A
2sequential_2_dense_biasadd_readvariableop_resource:	?F
3sequential_2_dense_1_matmul_readvariableop_resource:	?@B
4sequential_2_dense_1_biasadd_readvariableop_resource:@E
3sequential_2_dense_2_matmul_readvariableop_resource:@B
4sequential_2_dense_2_biasadd_readvariableop_resource:
identity??%sequential/embedding/embedding_lookup?6sequential/string_lookup/None_Lookup/LookupTableFindV2?)sequential_1/embedding_1/embedding_lookup?:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?)sequential_2/dense/BiasAdd/ReadVariableOp?(sequential_2/dense/MatMul/ReadVariableOp?+sequential_2/dense_1/BiasAdd/ReadVariableOp?*sequential_2/dense_1/MatMul/ReadVariableOp?+sequential_2/dense_2/BiasAdd/ReadVariableOp?*sequential_2/dense_2/MatMul/ReadVariableOp?
6sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Csequential_string_lookup_none_lookup_lookuptablefindv2_table_handleinputs_0Dsequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
!sequential/string_lookup/IdentityIdentity?sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_2567*sequential/string_lookup/Identity:output:0*
Tindices0	*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2567*'
_output_shapes
:????????? *
dtype0?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/2567*'
_output_shapes
:????????? ?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs_1Hsequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
%sequential_1/string_lookup_1/IdentityIdentityCsequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)sequential_1/embedding_1/embedding_lookupResourceGather.sequential_1_embedding_1_embedding_lookup_2576.sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*A
_class7
53loc:@sequential_1/embedding_1/embedding_lookup/2576*'
_output_shapes
:????????? *
dtype0?
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*A
_class7
53loc:@sequential_1/embedding_1/embedding_lookup/2576*'
_output_shapes
:????????? ?
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV29sequential/embedding/embedding_lookup/Identity_1:output:0=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
(sequential_2/dense/MatMul/ReadVariableOpReadVariableOp1sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
sequential_2/dense/MatMulMatMulconcat:output:00sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_2/dense/BiasAddBiasAdd#sequential_2/dense/MatMul:product:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
sequential_2/dense/ReluRelu#sequential_2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
sequential_2/dense_1/MatMulMatMul%sequential_2/dense/Relu:activations:02sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
sequential_2/dense_1/BiasAddBiasAdd%sequential_2/dense_1/MatMul:product:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@z
sequential_2/dense_1/ReluRelu%sequential_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
sequential_2/dense_2/MatMulMatMul'sequential_2/dense_1/Relu:activations:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp&^sequential/embedding/embedding_lookup7^sequential/string_lookup/None_Lookup/LookupTableFindV2*^sequential_1/embedding_1/embedding_lookup;^sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2*^sequential_2/dense/BiasAdd/ReadVariableOp)^sequential_2/dense/MatMul/ReadVariableOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp+^sequential_2/dense_1/MatMul/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2p
6sequential/string_lookup/None_Lookup/LookupTableFindV26sequential/string_lookup/None_Lookup/LookupTableFindV22V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2x
:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2T
(sequential_2/dense/MatMul/ReadVariableOp(sequential_2/dense/MatMul/ReadVariableOp2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2X
*sequential_2/dense_1/MatMul/ReadVariableOp*sequential_2/dense_1/MatMul/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_movielens_model_layer_call_fn_2409
features_movie_title
features_user_id
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_movie_titlefeatures_user_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_2198o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
#
_output_shapes
:?????????
.
_user_specified_namefeatures/movie_title:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/user_id:

_output_shapes
: :

_output_shapes
: 
?N
?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2454
features_movie_title
features_user_idU
Qranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handleV
Rranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value	K
8ranking_model_sequential_embedding_embedding_lookup_2417:	? Y
Uranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handleZ
Vranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value	O
<ranking_model_sequential_1_embedding_1_embedding_lookup_2426:	? R
?ranking_model_sequential_2_dense_matmul_readvariableop_resource:	@?O
@ranking_model_sequential_2_dense_biasadd_readvariableop_resource:	?T
Aranking_model_sequential_2_dense_1_matmul_readvariableop_resource:	?@P
Branking_model_sequential_2_dense_1_biasadd_readvariableop_resource:@S
Aranking_model_sequential_2_dense_2_matmul_readvariableop_resource:@P
Branking_model_sequential_2_dense_2_biasadd_readvariableop_resource:
identity??3ranking_model/sequential/embedding/embedding_lookup?Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2?7ranking_model/sequential_1/embedding_1/embedding_lookup?Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2?7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp?6ranking_model/sequential_2/dense/MatMul/ReadVariableOp?9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp?8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp?9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp?8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp?
Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Qranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_table_handlefeatures_user_idRranking_model_sequential_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
/ranking_model/sequential/string_lookup/IdentityIdentityMranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
3ranking_model/sequential/embedding/embedding_lookupResourceGather8ranking_model_sequential_embedding_embedding_lookup_24178ranking_model/sequential/string_lookup/Identity:output:0*
Tindices0	*K
_classA
?=loc:@ranking_model/sequential/embedding/embedding_lookup/2417*'
_output_shapes
:????????? *
dtype0?
<ranking_model/sequential/embedding/embedding_lookup/IdentityIdentity<ranking_model/sequential/embedding/embedding_lookup:output:0*
T0*K
_classA
?=loc:@ranking_model/sequential/embedding/embedding_lookup/2417*'
_output_shapes
:????????? ?
>ranking_model/sequential/embedding/embedding_lookup/Identity_1IdentityEranking_model/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? ?
Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2Uranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_table_handlefeatures_movie_titleVranking_model_sequential_1_string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
3ranking_model/sequential_1/string_lookup_1/IdentityIdentityQranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
7ranking_model/sequential_1/embedding_1/embedding_lookupResourceGather<ranking_model_sequential_1_embedding_1_embedding_lookup_2426<ranking_model/sequential_1/string_lookup_1/Identity:output:0*
Tindices0	*O
_classE
CAloc:@ranking_model/sequential_1/embedding_1/embedding_lookup/2426*'
_output_shapes
:????????? *
dtype0?
@ranking_model/sequential_1/embedding_1/embedding_lookup/IdentityIdentity@ranking_model/sequential_1/embedding_1/embedding_lookup:output:0*
T0*O
_classE
CAloc:@ranking_model/sequential_1/embedding_1/embedding_lookup/2426*'
_output_shapes
:????????? ?
Branking_model/sequential_1/embedding_1/embedding_lookup/Identity_1IdentityIranking_model/sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? [
ranking_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
ranking_model/concatConcatV2Granking_model/sequential/embedding/embedding_lookup/Identity_1:output:0Kranking_model/sequential_1/embedding_1/embedding_lookup/Identity_1:output:0"ranking_model/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
6ranking_model/sequential_2/dense/MatMul/ReadVariableOpReadVariableOp?ranking_model_sequential_2_dense_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
'ranking_model/sequential_2/dense/MatMulMatMulranking_model/concat:output:0>ranking_model/sequential_2/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp@ranking_model_sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(ranking_model/sequential_2/dense/BiasAddBiasAdd1ranking_model/sequential_2/dense/MatMul:product:0?ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%ranking_model/sequential_2/dense/ReluRelu1ranking_model/sequential_2/dense/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOpReadVariableOpAranking_model_sequential_2_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
)ranking_model/sequential_2/dense_1/MatMulMatMul3ranking_model/sequential_2/dense/Relu:activations:0@ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOpBranking_model_sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
*ranking_model/sequential_2/dense_1/BiasAddBiasAdd3ranking_model/sequential_2/dense_1/MatMul:product:0Aranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
'ranking_model/sequential_2/dense_1/ReluRelu3ranking_model/sequential_2/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOpAranking_model_sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
)ranking_model/sequential_2/dense_2/MatMulMatMul5ranking_model/sequential_2/dense_1/Relu:activations:0@ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpBranking_model_sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
*ranking_model/sequential_2/dense_2/BiasAddBiasAdd3ranking_model/sequential_2/dense_2/MatMul:product:0Aranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
IdentityIdentity3ranking_model/sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp4^ranking_model/sequential/embedding/embedding_lookupE^ranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV28^ranking_model/sequential_1/embedding_1/embedding_lookupI^ranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV28^ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp7^ranking_model/sequential_2/dense/MatMul/ReadVariableOp:^ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp9^ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp:^ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp9^ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2j
3ranking_model/sequential/embedding/embedding_lookup3ranking_model/sequential/embedding/embedding_lookup2?
Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV2Dranking_model/sequential/string_lookup/None_Lookup/LookupTableFindV22r
7ranking_model/sequential_1/embedding_1/embedding_lookup7ranking_model/sequential_1/embedding_1/embedding_lookup2?
Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV2Hranking_model/sequential_1/string_lookup_1/None_Lookup/LookupTableFindV22r
7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp7ranking_model/sequential_2/dense/BiasAdd/ReadVariableOp2p
6ranking_model/sequential_2/dense/MatMul/ReadVariableOp6ranking_model/sequential_2/dense/MatMul/ReadVariableOp2v
9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp9ranking_model/sequential_2/dense_1/BiasAdd/ReadVariableOp2t
8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp8ranking_model/sequential_2/dense_1/MatMul/ReadVariableOp2v
9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp9ranking_model/sequential_2/dense_2/BiasAdd/ReadVariableOp2t
8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp8ranking_model/sequential_2/dense_2/MatMul/ReadVariableOp:Y U
#
_output_shapes
:?????????
.
_user_specified_namefeatures/movie_title:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/user_id:

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_ranking_model_layer_call_fn_2559
inputs_0
inputs_1
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:?????????
"
_user_specified_name
inputs/0:MI
#
_output_shapes
:?????????
"
_user_specified_name
inputs/1:

_output_shapes
: :

_output_shapes
: 
?
?
"__inference_signature_wrapper_2349
movie_title
user_id
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovie_titleuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_1388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_namemovie_title:LH
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: 
?
?
.__inference_movielens_model_layer_call_fn_2135
movie_title
user_id
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovie_titleuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_2108o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_namemovie_title:LH
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: 
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_1485
string_lookup_input<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	!
embedding_1481:	? 
identity??!embedding/StatefulPartitionedCall?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handlestring_lookup_input9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_1481*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_embedding_layer_call_and_return_conditional_losses_1408y
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp"^embedding/StatefulPartitionedCall,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_2660

inputs
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1413o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
$__inference_dense_layer_call_fn_2868

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1622p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
9
__inference__creator_2923
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name174*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
,__inference_ranking_model_layer_call_fn_1881
input_1
input_2
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ranking_model_layer_call_and_return_conditional_losses_1854o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_1_layer_call_fn_1530
string_lookup_1_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_1_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1521o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_1815
dense_input

dense_1799:	@?

dense_1801:	?
dense_1_1804:	?@
dense_1_1806:@
dense_2_1809:@
dense_2_1811:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input
dense_1799
dense_1801*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1622?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1804dense_1_1806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1639?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1809dense_2_1811*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1655w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
'
_output_shapes
:?????????@
%
_user_specified_namedense_input
?	
?
A__inference_dense_2_layer_call_and_return_conditional_losses_2918

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
+
__inference__destroyer_2936
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_1604
string_lookup_1_input>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	#
embedding_1_1600:	? 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handlestring_lookup_1_input;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_1600*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1516{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:?????????
/
_user_specified_namestring_lookup_1_input:

_output_shapes
: 
?
?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2073
input_1
input_2
sequential_2043
sequential_2045	"
sequential_2047:	? 
sequential_1_2050
sequential_1_2052	$
sequential_1_2054:	? $
sequential_2_2059:	@? 
sequential_2_2061:	?$
sequential_2_2063:	?@
sequential_2_2065:@#
sequential_2_2067:@
sequential_2_2069:
identity??"sequential/StatefulPartitionedCall?$sequential_1/StatefulPartitionedCall?$sequential_2/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_2043sequential_2045sequential_2047*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1454?
$sequential_1/StatefulPartitionedCallStatefulPartitionedCallinput_2sequential_1_2050sequential_1_2052sequential_1_2054*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_1_layer_call_and_return_conditional_losses_1562M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2+sequential/StatefulPartitionedCall:output:0-sequential_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????@?
$sequential_2/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0sequential_2_2059sequential_2_2061sequential_2_2063sequential_2_2065sequential_2_2067sequential_2_2069*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1745|
IdentityIdentity-sequential_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall%^sequential_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2L
$sequential_2/StatefulPartitionedCall$sequential_2/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:LH
#
_output_shapes
:?????????
!
_user_specified_name	input_2:

_output_shapes
: :

_output_shapes
: 
?
?
C__inference_embedding_layer_call_and_return_conditional_losses_2843

inputs	(
embedding_lookup_2837:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_2837inputs*
Tindices0	*(
_class
loc:@embedding_lookup/2837*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/2837*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
?__inference_dense_layer_call_and_return_conditional_losses_2879

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
F__inference_sequential_2_layer_call_and_return_conditional_losses_1662

inputs

dense_1623:	@?

dense_1625:	?
dense_1_1640:	?@
dense_1_1642:@
dense_2_1656:@
dense_2_1658:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputs
dense_1623
dense_1625*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1622?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_1640dense_1_1642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1639?
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_1656dense_2_1658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1655w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_sequential_layer_call_and_return_conditional_losses_2684

inputs<
8string_lookup_none_lookup_lookuptablefindv2_table_handle=
9string_lookup_none_lookup_lookuptablefindv2_default_value	2
embedding_embedding_lookup_2678:	? 
identity??embedding/embedding_lookup?+string_lookup/None_Lookup/LookupTableFindV2?
+string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV28string_lookup_none_lookup_lookuptablefindv2_table_handleinputs9string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup/IdentityIdentity4string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_2678string_lookup/Identity:output:0*
Tindices0	*2
_class(
&$loc:@embedding/embedding_lookup/2678*'
_output_shapes
:????????? *
dtype0?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*2
_class(
&$loc:@embedding/embedding_lookup/2678*'
_output_shapes
:????????? ?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? }
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp^embedding/embedding_lookup,^string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2Z
+string_lookup/None_Lookup/LookupTableFindV2+string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
F__inference_sequential_1_layer_call_and_return_conditional_losses_1521

inputs>
:string_lookup_1_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_1_none_lookup_lookuptablefindv2_default_value	#
embedding_1_1517:	? 
identity??#embedding_1/StatefulPartitionedCall?-string_lookup_1/None_Lookup/LookupTableFindV2?
-string_lookup_1/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_1_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_1_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
string_lookup_1/IdentityIdentity6string_lookup_1/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
#embedding_1/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_1/Identity:output:0embedding_1_1517*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_embedding_1_layer_call_and_return_conditional_losses_1516{
IdentityIdentity,embedding_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? ?
NoOpNoOp$^embedding_1/StatefulPartitionedCall.^string_lookup_1/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2^
-string_lookup_1/None_Lookup/LookupTableFindV2-string_lookup_1/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
)__inference_sequential_layer_call_fn_1474
string_lookup_input
unknown
	unknown_0	
	unknown_1:	? 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1454o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?	
?
+__inference_sequential_2_layer_call_fn_1677
dense_input
unknown:	@?
	unknown_0:	?
	unknown_1:	?@
	unknown_2:@
	unknown_3:@
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_1662o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????@
%
_user_specified_namedense_input
?
?
E__inference_embedding_1_layer_call_and_return_conditional_losses_1516

inputs	(
embedding_lookup_1510:	? 
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1510inputs*
Tindices0	*(
_class
loc:@embedding_lookup/1510*'
_output_shapes
:????????? *
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/1510*'
_output_shapes
:????????? }
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:????????? s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:????????? Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_dense_2_layer_call_fn_2908

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1655o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
.__inference_movielens_model_layer_call_fn_2255
movie_title
user_id
unknown
	unknown_0	
	unknown_1:	? 
	unknown_2
	unknown_3	
	unknown_4:	? 
	unknown_5:	@?
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmovie_titleuser_idunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_movielens_model_layer_call_and_return_conditional_losses_2198o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:?????????:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_namemovie_title:LH
#
_output_shapes
:?????????
!
_user_specified_name	user_id:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
movie_title0
serving_default_movie_title:0?????????
7
user_id,
serving_default_user_id:0?????????>
output_12
StatefulPartitionedCall_2:0?????????tensorflow/serving/predict:??
?
ranking_model
task
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_model
?

user_embeddings
movie_embeddings
ratings
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_model
?
_ranking_metrics
_prediction_metrics
_label_metrics
_loss_metrics
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter
	decay
learning_rateaccumulator?accumulator?accumulator?accumulator? accumulator?!accumulator?"accumulator?#accumulator?"
	optimizer
 "
trackable_dict_wrapper
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
)layer-0
*layer_with_weights-0
*layer-1
+	variables
,trainable_variables
-regularization_losses
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
/layer-0
0layer_with_weights-0
0layer-1
1	variables
2trainable_variables
3regularization_losses
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
5layer_with_weights-0
5layer-0
6layer_with_weights-1
6layer-1
7layer_with_weights-2
7layer-2
8	variables
9trainable_variables
:regularization_losses
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
X
0
1
2
3
 4
!5
"6
#7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adagrad/iter
: (2Adagrad/decay
: (2Adagrad/learning_rate
':%	? 2embedding/embeddings
):'	? 2embedding_1/embeddings
:	@?2dense/kernel
:?2
dense/bias
!:	?@2dense_1/kernel
:@2dense_1/bias
 :@2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:
Glookup_table
H	keras_api"
_tf_keras_layer
?

embeddings
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
+	variables
,trainable_variables
-regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:
Rlookup_table
S	keras_api"
_tf_keras_layer
?

embeddings
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
1	variables
2trainable_variables
3regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

kernel
bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

"kernel
#bias
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
8	variables
9trainable_variables
:regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5

0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ntotal
	ocount
p	variables
q	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
=
Aroot_mean_squared_error"
trackable_dict_wrapper
m
r_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
m
x_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
"
_generic_user_object
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
~non_trainable_variables

layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
a	variables
btrainable_variables
cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
"
_generic_user_object
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
_generic_user_object
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
9:7	? 2(Adagrad/embedding/embeddings/accumulator
;:9	? 2*Adagrad/embedding_1/embeddings/accumulator
1:/	@?2 Adagrad/dense/kernel/accumulator
+:)?2Adagrad/dense/bias/accumulator
3:1	?@2"Adagrad/dense_1/kernel/accumulator
,:*@2 Adagrad/dense_1/bias/accumulator
2:0@2"Adagrad/dense_2/kernel/accumulator
,:*2 Adagrad/dense_2/bias/accumulator
?2?
.__inference_movielens_model_layer_call_fn_2135
.__inference_movielens_model_layer_call_fn_2379
.__inference_movielens_model_layer_call_fn_2409
.__inference_movielens_model_layer_call_fn_2255?
???
FullArgSpec+
args#? 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2454
I__inference_movielens_model_layer_call_and_return_conditional_losses_2499
I__inference_movielens_model_layer_call_and_return_conditional_losses_2285
I__inference_movielens_model_layer_call_and_return_conditional_losses_2315?
???
FullArgSpec+
args#? 
jself

jfeatures

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
__inference__wrapped_model_1388movie_titleuser_id"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_ranking_model_layer_call_fn_1881
,__inference_ranking_model_layer_call_fn_2529
,__inference_ranking_model_layer_call_fn_2559
,__inference_ranking_model_layer_call_fn_2005?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2604
G__inference_ranking_model_layer_call_and_return_conditional_losses_2649
G__inference_ranking_model_layer_call_and_return_conditional_losses_2039
G__inference_ranking_model_layer_call_and_return_conditional_losses_2073?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec\
argsT?Q
jself
jlabels
jpredictions
jsample_weight

jtraining
jcompute_metrics
varargs
 
varkw
 
defaults?

 
p 
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec\
argsT?Q
jself
jlabels
jpredictions
jsample_weight

jtraining
jcompute_metrics
varargs
 
varkw
 
defaults?

 
p 
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_2349movie_titleuser_id"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_sequential_layer_call_fn_1422
)__inference_sequential_layer_call_fn_2660
)__inference_sequential_layer_call_fn_2671
)__inference_sequential_layer_call_fn_1474?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_sequential_layer_call_and_return_conditional_losses_2684
D__inference_sequential_layer_call_and_return_conditional_losses_2697
D__inference_sequential_layer_call_and_return_conditional_losses_1485
D__inference_sequential_layer_call_and_return_conditional_losses_1496?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_1_layer_call_fn_1530
+__inference_sequential_1_layer_call_fn_2708
+__inference_sequential_1_layer_call_fn_2719
+__inference_sequential_1_layer_call_fn_1582?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_1_layer_call_and_return_conditional_losses_2732
F__inference_sequential_1_layer_call_and_return_conditional_losses_2745
F__inference_sequential_1_layer_call_and_return_conditional_losses_1593
F__inference_sequential_1_layer_call_and_return_conditional_losses_1604?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_sequential_2_layer_call_fn_1677
+__inference_sequential_2_layer_call_fn_2762
+__inference_sequential_2_layer_call_fn_2779
+__inference_sequential_2_layer_call_fn_1777?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_sequential_2_layer_call_and_return_conditional_losses_2803
F__inference_sequential_2_layer_call_and_return_conditional_losses_2827
F__inference_sequential_2_layer_call_and_return_conditional_losses_1796
F__inference_sequential_2_layer_call_and_return_conditional_losses_1815?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_embedding_layer_call_fn_2834?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_embedding_layer_call_and_return_conditional_losses_2843?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_embedding_1_layer_call_fn_2850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_embedding_1_layer_call_and_return_conditional_losses_2859?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_2868?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_2879?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_1_layer_call_fn_2888?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_1_layer_call_and_return_conditional_losses_2899?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dense_2_layer_call_fn_2908?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dense_2_layer_call_and_return_conditional_losses_2918?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_2923?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_2931?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2936?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_2941?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_2949?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_2954?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_55
__inference__creator_2923?

? 
? "? 5
__inference__creator_2941?

? 
? "? 7
__inference__destroyer_2936?

? 
? "? 7
__inference__destroyer_2954?

? 
? "? @
__inference__initializer_2931G???

? 
? "? @
__inference__initializer_2949R???

? 
? "? ?
__inference__wrapped_model_1388?G?R? !"#n?k
d?a
_?\
0
movie_title!?
movie_title?????????
(
user_id?
user_id?????????
? "3?0
.
output_1"?
output_1??????????
A__inference_dense_1_layer_call_and_return_conditional_losses_2899] !0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? z
&__inference_dense_1_layer_call_fn_2888P !0?-
&?#
!?
inputs??????????
? "??????????@?
A__inference_dense_2_layer_call_and_return_conditional_losses_2918\"#/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? y
&__inference_dense_2_layer_call_fn_2908O"#/?,
%?"
 ?
inputs?????????@
? "???????????
?__inference_dense_layer_call_and_return_conditional_losses_2879]/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? x
$__inference_dense_layer_call_fn_2868P/?,
%?"
 ?
inputs?????????@
? "????????????
E__inference_embedding_1_layer_call_and_return_conditional_losses_2859W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? x
*__inference_embedding_1_layer_call_fn_2850J+?(
!?
?
inputs?????????	
? "?????????? ?
C__inference_embedding_layer_call_and_return_conditional_losses_2843W+?(
!?
?
inputs?????????	
? "%?"
?
0????????? 
? v
(__inference_embedding_layer_call_fn_2834J+?(
!?
?
inputs?????????	
? "?????????? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2285?G?R? !"#r?o
h?e
_?\
0
movie_title!?
movie_title?????????
(
user_id?
user_id?????????
p 
? "%?"
?
0?????????
? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2315?G?R? !"#r?o
h?e
_?\
0
movie_title!?
movie_title?????????
(
user_id?
user_id?????????
p
? "%?"
?
0?????????
? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2454?G?R? !"#???
z?w
q?n
9
movie_title*?'
features/movie_title?????????
1
user_id&?#
features/user_id?????????
p 
? "%?"
?
0?????????
? ?
I__inference_movielens_model_layer_call_and_return_conditional_losses_2499?G?R? !"#???
z?w
q?n
9
movie_title*?'
features/movie_title?????????
1
user_id&?#
features/user_id?????????
p
? "%?"
?
0?????????
? ?
.__inference_movielens_model_layer_call_fn_2135?G?R? !"#r?o
h?e
_?\
0
movie_title!?
movie_title?????????
(
user_id?
user_id?????????
p 
? "???????????
.__inference_movielens_model_layer_call_fn_2255?G?R? !"#r?o
h?e
_?\
0
movie_title!?
movie_title?????????
(
user_id?
user_id?????????
p
? "???????????
.__inference_movielens_model_layer_call_fn_2379?G?R? !"#???
z?w
q?n
9
movie_title*?'
features/movie_title?????????
1
user_id&?#
features/user_id?????????
p 
? "???????????
.__inference_movielens_model_layer_call_fn_2409?G?R? !"#???
z?w
q?n
9
movie_title*?'
features/movie_title?????????
1
user_id&?#
features/user_id?????????
p
? "???????????
G__inference_ranking_model_layer_call_and_return_conditional_losses_2039?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p 
? "%?"
?
0?????????
? ?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2073?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p
? "%?"
?
0?????????
? ?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2604?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p 
? "%?"
?
0?????????
? ?
G__inference_ranking_model_layer_call_and_return_conditional_losses_2649?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p
? "%?"
?
0?????????
? ?
,__inference_ranking_model_layer_call_fn_1881?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p 
? "???????????
,__inference_ranking_model_layer_call_fn_2005?G?R? !"#T?Q
J?G
A?>
?
input_1?????????
?
input_2?????????
p
? "???????????
,__inference_ranking_model_layer_call_fn_2529?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p 
? "???????????
,__inference_ranking_model_layer_call_fn_2559?G?R? !"#V?S
L?I
C?@
?
inputs/0?????????
?
inputs/1?????????
p
? "???????????
F__inference_sequential_1_layer_call_and_return_conditional_losses_1593qR?B??
8?5
+?(
string_lookup_1_input?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_1604qR?B??
8?5
+?(
string_lookup_1_input?????????
p

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_2732bR?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
F__inference_sequential_1_layer_call_and_return_conditional_losses_2745bR?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
+__inference_sequential_1_layer_call_fn_1530dR?B??
8?5
+?(
string_lookup_1_input?????????
p 

 
? "?????????? ?
+__inference_sequential_1_layer_call_fn_1582dR?B??
8?5
+?(
string_lookup_1_input?????????
p

 
? "?????????? ?
+__inference_sequential_1_layer_call_fn_2708UR?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
+__inference_sequential_1_layer_call_fn_2719UR?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
F__inference_sequential_2_layer_call_and_return_conditional_losses_1796m !"#<?9
2?/
%?"
dense_input?????????@
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_2_layer_call_and_return_conditional_losses_1815m !"#<?9
2?/
%?"
dense_input?????????@
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_2_layer_call_and_return_conditional_losses_2803h !"#7?4
-?*
 ?
inputs?????????@
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_2_layer_call_and_return_conditional_losses_2827h !"#7?4
-?*
 ?
inputs?????????@
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_2_layer_call_fn_1677` !"#<?9
2?/
%?"
dense_input?????????@
p 

 
? "???????????
+__inference_sequential_2_layer_call_fn_1777` !"#<?9
2?/
%?"
dense_input?????????@
p

 
? "???????????
+__inference_sequential_2_layer_call_fn_2762[ !"#7?4
-?*
 ?
inputs?????????@
p 

 
? "???????????
+__inference_sequential_2_layer_call_fn_2779[ !"#7?4
-?*
 ?
inputs?????????@
p

 
? "???????????
D__inference_sequential_layer_call_and_return_conditional_losses_1485oG?@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_1496oG?@?=
6?3
)?&
string_lookup_input?????????
p

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_2684bG?3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0????????? 
? ?
D__inference_sequential_layer_call_and_return_conditional_losses_2697bG?3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0????????? 
? ?
)__inference_sequential_layer_call_fn_1422bG?@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "?????????? ?
)__inference_sequential_layer_call_fn_1474bG?@?=
6?3
)?&
string_lookup_input?????????
p

 
? "?????????? ?
)__inference_sequential_layer_call_fn_2660UG?3?0
)?&
?
inputs?????????
p 

 
? "?????????? ?
)__inference_sequential_layer_call_fn_2671UG?3?0
)?&
?
inputs?????????
p

 
? "?????????? ?
"__inference_signature_wrapper_2349?G?R? !"#i?f
? 
_?\
0
movie_title!?
movie_title?????????
(
user_id?
user_id?????????"3?0
.
output_1"?
output_1?????????
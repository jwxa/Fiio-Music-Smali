.class public Lorg/justcodecs/dsd/DSTDecoder;
.super Ljava/lang/Object;
.source "DSTDecoder.java"


# static fields
.field static final ABITS:I = 0xc

.field static final AC_BITS:I = 0x8

.field static final AC_HISBITS:I = 0x6

.field static final AC_HISMAX:I = 0x40

.field static final AC_PROBS:I = 0x100

.field static final AC_QSTEP:I = 0x3

.field static final DSTErr_InvalidStuffingPattern:I = -0x2

.field static final FILTER:I = 0x0

.field static final HALF:I = 0x800

.field static final MAXCPREDORDER:I = 0x3

.field static final MAXNROF_FSEGS:I = 0x4

.field static final MAXNROF_PSEGS:I = 0x8

.field static final MAXNROF_SEGS:I = 0x8

.field static final MAX_CHANNELS:I = 0x6

.field static final MAX_DSDBITS_INFRAME:I = 0x9300

.field static final MAX_DSDBYTES_INFRAME:I = 0x4980

.field static final MAX_DSTXBITS_SIZE:I = 0x100

.field static final MAX_RICE_M_F:I = 0x6

.field static final MAX_RICE_M_P:I = 0x4

.field static final MB:I = 0x0

.field static final MIN_FSEG_LEN:I = 0x400

.field static final MIN_PSEG_LEN:I = 0x20

.field static final NBITS:I = 0x4

.field static final NROFFRICEMETHODS:I = 0x3

.field static final NROFPRICEMETHODS:I = 0x3

.field static final ONE:I = 0x1000

.field static final PBITS:I = 0x8

.field static final PSUM:I = 0x100

.field static final PTABLE:I = 0x1

.field static final RESOL:I = 0x8

.field static final SIZE_CODEDPREDORDER:I = 0x7

.field static final SIZE_DSTFRAMELEN:I = 0x10

.field static final SIZE_MAXFRAMELEN:I = 0x4

.field static final SIZE_NROFCHANNELS:I = 0x4

.field static final SIZE_PREDCOEF:I = 0x9

.field static final SIZE_RICEM:I = 0x3

.field static final SIZE_RICEMETHOD:I = 0x2

.field static reverse:[S


# instance fields
.field AC:Lorg/justcodecs/dsd/c;

.field AData:[B

.field ADataLen:I

.field BitMask:[B

.field BitStream11:[[S

.field DstXbits:Lorg/justcodecs/dsd/f;

.field FirPtrs:Lorg/justcodecs/dsd/g;

.field FrameHdr:Lorg/justcodecs/dsd/h;

.field LT_ICoefI:[[[S

.field LT_Status:[[I

.field P_one:[[I

.field S:Lorg/justcodecs/dsd/j;

.field StrFilter:Lorg/justcodecs/dsd/d;

.field StrPtable:Lorg/justcodecs/dsd/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 654
    const/16 v0, 0x80

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/justcodecs/dsd/DSTDecoder;->reverse:[S

    .line 659
    return-void

    .line 654
    :array_0
    .array-data 2
        0x1s
        0x41s
        0x21s
        0x61s
        0x11s
        0x51s
        0x31s
        0x71s
        0x9s
        0x49s
        0x29s
        0x69s
        0x19s
        0x59s
        0x39s
        0x79s
        0x5s
        0x45s
        0x25s
        0x65s
        0x15s
        0x55s
        0x35s
        0x75s
        0xds
        0x4ds
        0x2ds
        0x6ds
        0x1ds
        0x5ds
        0x3ds
        0x7ds
        0x3s
        0x43s
        0x23s
        0x63s
        0x13s
        0x53s
        0x33s
        0x73s
        0xbs
        0x4bs
        0x2bs
        0x6bs
        0x1bs
        0x5bs
        0x3bs
        0x7bs
        0x7s
        0x47s
        0x27s
        0x67s
        0x17s
        0x57s
        0x37s
        0x77s
        0xfs
        0x4fs
        0x2fs
        0x6fs
        0x1fs
        0x5fs
        0x3fs
        0x7fs
        0x2s
        0x42s
        0x22s
        0x62s
        0x12s
        0x52s
        0x32s
        0x72s
        0xas
        0x4as
        0x2as
        0x6as
        0x1as
        0x5as
        0x3as
        0x7as
        0x6s
        0x46s
        0x26s
        0x66s
        0x16s
        0x56s
        0x36s
        0x76s
        0xes
        0x4es
        0x2es
        0x6es
        0x1es
        0x5es
        0x3es
        0x7es
        0x4s
        0x44s
        0x24s
        0x64s
        0x14s
        0x54s
        0x34s
        0x74s
        0xcs
        0x4cs
        0x2cs
        0x6cs
        0x1cs
        0x5cs
        0x3cs
        0x7cs
        0x8s
        0x48s
        0x28s
        0x68s
        0x18s
        0x58s
        0x38s
        0x78s
        0x10s
        0x50s
        0x30s
        0x70s
        0x20s
        0x60s
        0x40s
        0x80s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->BitMask:[B

    .line 602
    const/16 v0, 0xc

    const/16 v1, 0x100

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_ICoefI:[[[S

    .line 603
    const/4 v0, 0x6

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    .line 7
    return-void
.end method

.method static FillTable4Bit(IILorg/justcodecs/dsd/i;[[B)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 627
    move v4, v1

    :goto_0
    if-lt v4, p0, :cond_0

    .line 640
    return-void

    .line 628
    :cond_0
    aget-object v5, p3, v4

    move v0, v1

    move v2, v1

    .line 629
    :goto_1
    iget-object v3, p2, Lorg/justcodecs/dsd/i;->c:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_1

    .line 637
    iget-object v3, p2, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v3, v3, v4

    aget v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 638
    array-length v3, v5

    invoke-static {v5, v0, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 627
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 630
    :cond_1
    iget-object v3, p2, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v3, v3, v4

    aget v3, v3, v2

    int-to-byte v6, v3

    .line 631
    iget v3, p2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v3, v3, 0x8

    iget-object v7, p2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v7, v7, v4

    aget v7, v7, v2

    mul-int/2addr v3, v7

    add-int v7, v0, v3

    move v3, v0

    .line 632
    :goto_2
    if-lt v3, v7, :cond_2

    .line 635
    iget v3, p2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v3, v3, 0x8

    iget-object v6, p2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v6, v6, v4

    aget v6, v6, v2

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 633
    :cond_2
    aput-byte v6, v5, v3

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method static Reverse7LSBs(S)S
    .locals 2

    .prologue
    .line 674
    sget-object v0, Lorg/justcodecs/dsd/DSTDecoder;->reverse:[S

    add-int/lit16 v1, p0, 0x200

    and-int/lit8 v1, v1, 0x7f

    aget-short v0, v0, v1

    return v0
.end method


# virtual methods
.method CCP_CalcInit(Lorg/justcodecs/dsd/d;)V
    .locals 7

    .prologue
    const/4 v6, -0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1311
    iget v0, p1, Lorg/justcodecs/dsd/d;->g:I

    packed-switch v0, :pswitch_data_0

    .line 1357
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Illegal table type"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1313
    :pswitch_0
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aput v3, v0, v2

    .line 1314
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v2

    aput v6, v0, v2

    .line 1315
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aget v0, v0, v2

    :goto_0
    if-lt v0, v5, :cond_1

    .line 1319
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aput v4, v0, v3

    .line 1320
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v3

    const/16 v1, -0x10

    aput v1, v0, v2

    .line 1321
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x8

    aput v1, v0, v3

    .line 1322
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aget v0, v0, v3

    :goto_1
    if-lt v0, v5, :cond_2

    .line 1326
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aput v5, v0, v4

    .line 1327
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v4

    const/16 v1, -0x9

    aput v1, v0, v2

    .line 1328
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v4

    const/4 v1, -0x5

    aput v1, v0, v3

    .line 1329
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v4

    .line 1330
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aget v0, v0, v4

    :goto_2
    if-lt v0, v5, :cond_3

    .line 1355
    :cond_0
    return-void

    .line 1316
    :cond_1
    iget-object v1, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v1, v1, v2

    aput v2, v1, v0

    .line 1315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    :cond_2
    iget-object v1, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v1, v1, v3

    aput v2, v1, v0

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1331
    :cond_3
    iget-object v1, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v1, v1, v4

    aput v2, v1, v0

    .line 1330
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1335
    :pswitch_1
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aput v3, v0, v2

    .line 1336
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v2

    aput v6, v0, v2

    .line 1337
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aget v0, v0, v2

    :goto_3
    if-lt v0, v5, :cond_4

    .line 1341
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aput v4, v0, v3

    .line 1342
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v3

    const/16 v1, -0x10

    aput v1, v0, v2

    .line 1343
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v3

    const/16 v1, 0x8

    aput v1, v0, v3

    .line 1344
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aget v0, v0, v3

    :goto_4
    if-lt v0, v5, :cond_5

    .line 1348
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aput v5, v0, v4

    .line 1349
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v4

    const/16 v1, -0x18

    aput v1, v0, v2

    .line 1350
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v4

    const/16 v1, 0x18

    aput v1, v0, v3

    .line 1351
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v0, v0, v4

    aput v6, v0, v4

    .line 1352
    iget-object v0, p1, Lorg/justcodecs/dsd/d;->a:[I

    aget v0, v0, v4

    :goto_5
    if-ge v0, v5, :cond_0

    .line 1353
    iget-object v1, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v1, v1, v4

    aput v2, v1, v0

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1338
    :cond_4
    iget-object v1, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v1, v1, v2

    aput v2, v1, v0

    .line 1337
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1345
    :cond_5
    iget-object v1, p1, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v1, v1, v3

    aput v2, v1, v0

    .line 1344
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method CopyMappingData(Lorg/justcodecs/dsd/h;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 996
    const/4 v0, 0x1

    iput v0, p1, Lorg/justcodecs/dsd/h;->w:I

    move v0, v1

    .line 997
    :goto_0
    iget v2, p1, Lorg/justcodecs/dsd/h;->b:I

    if-lt v0, v2, :cond_0

    .line 1009
    iget v0, p1, Lorg/justcodecs/dsd/h;->c:I

    iput v0, p1, Lorg/justcodecs/dsd/h;->d:I

    .line 1010
    iget v0, p1, Lorg/justcodecs/dsd/h;->d:I

    iget v1, p1, Lorg/justcodecs/dsd/h;->y:I

    if-le v0, v1, :cond_4

    .line 1011
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Too many tables for this frame!"

    invoke-direct {v0, v1, v5}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 998
    :cond_0
    iget-object v2, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v2, v2, Lorg/justcodecs/dsd/i;->c:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v3, v3, Lorg/justcodecs/dsd/i;->c:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_3

    move v2, v1

    .line 999
    :goto_1
    iget-object v3, p1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v3, v3, Lorg/justcodecs/dsd/i;->c:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_1

    .line 997
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v3, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v3, v3, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v3, v3, v0

    iget-object v4, p1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v4, v4, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    aput v4, v3, v2

    .line 1001
    iget-object v3, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v3, v3, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v3, v3, v0

    aget v3, v3, v2

    iget-object v4, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v4, v4, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 1002
    iput v1, p1, Lorg/justcodecs/dsd/h;->w:I

    .line 999
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1006
    :cond_3
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Not same number of segments for filters and Ptables!"

    invoke-direct {v0, v1, v5}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1013
    :cond_4
    return-void
.end method

.method CopySegmentData(Lorg/justcodecs/dsd/h;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 844
    iget-object v0, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v3, v0, Lorg/justcodecs/dsd/i;->c:[I

    iget-object v0, p1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v4, v0, Lorg/justcodecs/dsd/i;->c:[I

    .line 846
    iget-object v0, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v2, p1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget v2, v2, Lorg/justcodecs/dsd/i;->a:I

    iput v2, v0, Lorg/justcodecs/dsd/i;->a:I

    .line 847
    const/4 v0, 0x1

    iput v0, p1, Lorg/justcodecs/dsd/h;->v:I

    move v0, v1

    .line 848
    :goto_0
    iget v2, p1, Lorg/justcodecs/dsd/h;->b:I

    if-lt v0, v2, :cond_0

    .line 868
    return-void

    .line 849
    :cond_0
    aget v2, v4, v0

    aput v2, v3, v0

    .line 850
    aget v2, v3, v0

    const/16 v5, 0x8

    if-le v2, v5, :cond_1

    .line 851
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Too many segments!"

    invoke-direct {v0, v1, v8}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 853
    :cond_1
    aget v2, v3, v0

    aget v5, v3, v1

    if-eq v2, v5, :cond_2

    .line 854
    iput v1, p1, Lorg/justcodecs/dsd/h;->v:I

    :cond_2
    move v2, v1

    .line 856
    :goto_1
    aget v5, v3, v0

    if-lt v2, v5, :cond_3

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_3
    iget-object v5, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v5, v5, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v5, v5, v0

    iget-object v6, p1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v6, v6, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v6, v6, v0

    .line 859
    aget v6, v6, v2

    aput v6, v5, v2

    .line 860
    aget v6, v5, v2

    if-eqz v6, :cond_4

    iget-object v6, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget v6, v6, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v6, v6, 0x8

    aget v7, v5, v2

    mul-int/2addr v6, v7

    const/16 v7, 0x20

    if-ge v6, v7, :cond_4

    .line 861
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "ERROR: Invalid segment length!"

    invoke-direct {v0, v1, v8}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 863
    :cond_4
    aget v5, v5, v2

    iget-object v6, p1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v6, v6, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v6, v6, v1

    aget v6, v6, v2

    if-eq v5, v6, :cond_5

    .line 864
    iput v1, p1, Lorg/justcodecs/dsd/h;->v:I

    .line 856
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method FramDSTDecode([B[BII)V
    .locals 11

    .prologue
    .line 1504
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v0, v0, Lorg/justcodecs/dsd/h;->C:J

    long-to-int v3, v0

    .line 1509
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iput p4, v0, Lorg/justcodecs/dsd/h;->a:I

    .line 1510
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iput p3, v0, Lorg/justcodecs/dsd/h;->j:I

    .line 1511
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->j:I

    mul-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    iput-wide v4, v0, Lorg/justcodecs/dsd/h;->k:J

    .line 1513
    invoke-virtual {p0, p1, p2}, Lorg/justcodecs/dsd/DSTDecoder;->UnpackDSTframe([B[B)V

    .line 1515
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v0, Lorg/justcodecs/dsd/h;->b:I

    .line 1516
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1519
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->b:I

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v1, v1, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, v2, Lorg/justcodecs/dsd/h;->o:[[B

    invoke-static {v0, v3, v1, v2}, Lorg/justcodecs/dsd/DSTDecoder;->FillTable4Bit(IILorg/justcodecs/dsd/i;[[B)V

    .line 1520
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->b:I

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v1, v1, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, v2, Lorg/justcodecs/dsd/h;->q:[[B

    invoke-static {v0, v3, v1, v2}, Lorg/justcodecs/dsd/DSTDecoder;->FillTable4Bit(IILorg/justcodecs/dsd/i;[[B)V

    .line 1522
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_ICoefI:[[[S

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/DSTDecoder;->LT_InitCoefTablesI([[[S)V

    .line 1523
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/DSTDecoder;->LT_InitStatus([[I)V

    .line 1525
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->AC:Lorg/justcodecs/dsd/c;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    iget v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    const/16 v5, 0xfff

    iput v5, v0, Lorg/justcodecs/dsd/c;->c:I

    const/4 v5, 0x0

    iput v5, v0, Lorg/justcodecs/dsd/c;->b:I

    const/4 v5, 0x1

    iput v5, v0, Lorg/justcodecs/dsd/c;->d:I

    :goto_0
    iget v5, v0, Lorg/justcodecs/dsd/c;->d:I

    const/16 v6, 0xc

    if-le v5, v6, :cond_0

    .line 1526
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->AC:Lorg/justcodecs/dsd/c;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v1, v1, Lorg/justcodecs/dsd/h;->h:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Lorg/justcodecs/dsd/DSTDecoder;->Reverse7LSBs(S)S

    move-result v1

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    iget v5, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    invoke-virtual {v0, v1, v2, v5}, Lorg/justcodecs/dsd/c;->a(I[BI)I

    .line 1527
    const/4 v0, 0x0

    mul-int v1, v3, v4

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1529
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NrOfBitsPerCh : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "sin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NrOfChannels  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    .line 1624
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->AC:Lorg/justcodecs/dsd/c;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    iget v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    iget v0, v0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v1, v1, -0x7

    if-ge v0, v1, :cond_6

    const/4 v0, 0x0

    .line 1626
    :goto_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1627
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Arithmetic decoding error!"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1525
    :cond_0
    iget v5, v0, Lorg/justcodecs/dsd/c;->b:I

    shl-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/justcodecs/dsd/c;->b:I

    iget v5, v0, Lorg/justcodecs/dsd/c;->d:I

    if-ge v5, v2, :cond_1

    iget v5, v0, Lorg/justcodecs/dsd/c;->b:I

    iget v6, v0, Lorg/justcodecs/dsd/c;->d:I

    aget-byte v6, v1, v6

    or-int/2addr v5, v6

    iput v5, v0, Lorg/justcodecs/dsd/c;->b:I

    :cond_1
    iget v5, v0, Lorg/justcodecs/dsd/c;->d:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/justcodecs/dsd/c;->d:I

    goto/16 :goto_0

    .line 1553
    :cond_2
    div-int/lit8 v5, v1, 0x8

    .line 1555
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-lt v2, v4, :cond_3

    .line 1552
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1556
    :cond_3
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v0, v0, Lorg/justcodecs/dsd/h;->o:[[B

    aget-object v0, v0, v2

    aget-byte v0, v0, v1

    .line 1565
    iget-object v6, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_ICoefI:[[[S

    aget-object v0, v6, v0

    .line 1566
    iget-object v6, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    aget-object v6, v6, v2

    .line 1567
    const/4 v7, 0x0

    aget-object v7, v0, v7

    const/4 v8, 0x0

    aget v8, v6, v8

    aget-short v7, v7, v8

    .line 1568
    const/4 v8, 0x1

    aget-object v8, v0, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1569
    const/4 v8, 0x2

    aget-object v8, v0, v8

    const/4 v9, 0x2

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1570
    const/4 v8, 0x3

    aget-object v8, v0, v8

    const/4 v9, 0x3

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1571
    const/4 v8, 0x4

    aget-object v8, v0, v8

    const/4 v9, 0x4

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1572
    const/4 v8, 0x5

    aget-object v8, v0, v8

    const/4 v9, 0x5

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1573
    const/4 v8, 0x6

    aget-object v8, v0, v8

    const/4 v9, 0x6

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1574
    const/4 v8, 0x7

    aget-object v8, v0, v8

    const/4 v9, 0x7

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1575
    const/16 v8, 0x8

    aget-object v8, v0, v8

    const/16 v9, 0x8

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1576
    const/16 v8, 0x9

    aget-object v8, v0, v8

    const/16 v9, 0x9

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1577
    const/16 v8, 0xa

    aget-object v8, v0, v8

    const/16 v9, 0xa

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1578
    const/16 v8, 0xb

    aget-object v8, v0, v8

    const/16 v9, 0xb

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1579
    const/16 v8, 0xc

    aget-object v8, v0, v8

    const/16 v9, 0xc

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1580
    const/16 v8, 0xd

    aget-object v8, v0, v8

    const/16 v9, 0xd

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1581
    const/16 v8, 0xe

    aget-object v8, v0, v8

    const/16 v9, 0xe

    aget v9, v6, v9

    aget-short v8, v8, v9

    .line 1567
    add-int/2addr v7, v8

    .line 1582
    const/16 v8, 0xf

    aget-object v0, v0, v8

    const/16 v8, 0xf

    aget v6, v6, v8

    aget-short v0, v0, v6

    .line 1567
    add-int/2addr v0, v7

    int-to-short v6, v0

    .line 1589
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v0, v0, Lorg/justcodecs/dsd/h;->l:[I

    aget v0, v0, v2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v0, v0, Lorg/justcodecs/dsd/h;->m:[I

    aget v0, v0, v2

    if-ge v1, v0, :cond_4

    .line 1590
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->AC:Lorg/justcodecs/dsd/c;

    const/16 v7, 0x80

    iget-object v8, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    iget v9, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    invoke-virtual {v0, v7, v8, v9}, Lorg/justcodecs/dsd/c;->a(I[BI)I

    move-result v0

    int-to-short v0, v0

    .line 1602
    :goto_4
    shr-int/lit8 v6, v6, 0xf

    xor-int/2addr v0, v6

    and-int/lit8 v0, v0, 0x1

    int-to-short v6, v0

    .line 1606
    mul-int v0, v5, v4

    add-int/2addr v0, v2

    aget-byte v7, p2, v0

    rem-int/lit8 v8, v1, 0x8

    rsub-int/lit8 v8, v8, 0x7

    shl-int v8, v6, v8

    int-to-byte v8, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p2, v0

    .line 1611
    const/16 v0, 0xf

    :goto_5
    if-gtz v0, :cond_5

    .line 1616
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    aget-object v0, v0, v2

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    aget-object v8, v8, v2

    const/4 v9, 0x0

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    aput v6, v0, v7

    .line 1555
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    .line 1592
    :cond_4
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v0, v0, Lorg/justcodecs/dsd/h;->q:[[B

    aget-object v0, v0, v2

    aget-byte v0, v0, v1

    .line 1593
    iget-object v7, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v7, v7, Lorg/justcodecs/dsd/h;->g:[I

    aget v7, v7, v0

    invoke-virtual {p0, v6, v7}, Lorg/justcodecs/dsd/DSTDecoder;->LT_ACGetPtableIndex(SI)I

    move-result v7

    .line 1594
    iget-object v8, p0, Lorg/justcodecs/dsd/DSTDecoder;->AC:Lorg/justcodecs/dsd/c;

    iget-object v9, p0, Lorg/justcodecs/dsd/DSTDecoder;->P_one:[[I

    aget-object v0, v9, v0

    aget v0, v0, v7

    iget-object v7, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    iget v9, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    invoke-virtual {v8, v0, v7, v9}, Lorg/justcodecs/dsd/c;->a(I[BI)I

    move-result v0

    int-to-short v0, v0

    goto :goto_4

    .line 1612
    :cond_5
    iget-object v7, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    aget-object v8, v8, v2

    aget v8, v8, v0

    shl-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lorg/justcodecs/dsd/DSTDecoder;->LT_Status:[[I

    aget-object v9, v9, v2

    add-int/lit8 v10, v0, -0x1

    aget v9, v9, v10

    shr-int/lit8 v9, v9, 0x7

    and-int/lit8 v9, v9, 0x1

    or-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v0

    .line 1611
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 1624
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1630
    :cond_7
    return-void
.end method

.method FramDSTDecode([B[[BII)V
    .locals 16

    .prologue
    .line 1633
    const-string v2, "sin"

    const-string v3, "DSD here ?"

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v2, v2, Lorg/justcodecs/dsd/h;->C:J

    long-to-int v3, v2

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    move/from16 v0, p4

    iput v0, v2, Lorg/justcodecs/dsd/h;->a:I

    .line 1644
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    move/from16 v0, p3

    iput v0, v2, Lorg/justcodecs/dsd/h;->j:I

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v4, Lorg/justcodecs/dsd/h;->j:I

    mul-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    iput-wide v4, v2, Lorg/justcodecs/dsd/h;->k:J

    .line 1647
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 1648
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/justcodecs/dsd/DSTDecoder;->UnpackDSTframe([B[B)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->i:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 1653
    new-instance v9, Lorg/justcodecs/dsd/c;

    invoke-direct {v9}, Lorg/justcodecs/dsd/c;-><init>()V

    .line 1654
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v4, Lorg/justcodecs/dsd/h;->b:I

    if-lt v2, v4, :cond_0

    .line 1656
    const/16 v2, 0x8

    new-array v10, v2, [B

    fill-array-data v10, :array_0

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v4, v4, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v5, v5, Lorg/justcodecs/dsd/h;->o:[[B

    invoke-static {v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSTDecoder;->FillTable4Bit(IILorg/justcodecs/dsd/i;[[B)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v4, v4, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v5, v5, Lorg/justcodecs/dsd/h;->q:[[B

    invoke-static {v2, v3, v4, v5}, Lorg/justcodecs/dsd/DSTDecoder;->FillTable4Bit(IILorg/justcodecs/dsd/i;[[B)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->DstXbits:Lorg/justcodecs/dsd/f;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v3, v3, Lorg/justcodecs/dsd/h;->h:[[I

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-short v3, v3

    invoke-static {v3}, Lorg/justcodecs/dsd/DSTDecoder;->Reverse7LSBs(S)S

    move-result v3

    iput v3, v2, Lorg/justcodecs/dsd/f;->a:I

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/justcodecs/dsd/DSTDecoder;->DstXbits:Lorg/justcodecs/dsd/f;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/DSTDecoder;->DstXbits:Lorg/justcodecs/dsd/f;

    iget v3, v3, Lorg/justcodecs/dsd/f;->a:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    move-object/from16 v0, p0

    iget v5, v0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    const/4 v6, 0x0

    invoke-virtual {v9, v3, v4, v5, v6}, Lorg/justcodecs/dsd/c;->a(I[BII)B

    move-result v3

    iput-byte v3, v2, Lorg/justcodecs/dsd/f;->b:B

    .line 1666
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v3, v3, Lorg/justcodecs/dsd/h;->b:I

    if-lt v2, v3, :cond_1

    .line 1677
    const/4 v2, 0x0

    :goto_2
    int-to-long v4, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v6, v3, Lorg/justcodecs/dsd/h;->C:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 1729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    const/4 v5, 0x1

    invoke-virtual {v9, v2, v3, v4, v5}, Lorg/justcodecs/dsd/c;->a(I[BII)B

    move-result v2

    .line 1731
    if-eqz v2, :cond_10

    .line 1732
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Arithmetic decoding error at frame %d!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v6, v6, Lorg/justcodecs/dsd/h;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1655
    :cond_0
    aget-object v4, p2, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 1654
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1667
    :cond_1
    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    .line 1670
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v3, v3, Lorg/justcodecs/dsd/g;->a:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1668
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->b:[[I

    aget-object v4, v4, v2

    and-int/lit8 v5, v3, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    int-to-short v5, v5

    aput v5, v4, v3

    .line 1667
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1678
    :cond_3
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v4, Lorg/justcodecs/dsd/h;->b:I

    if-lt v3, v4, :cond_4

    .line 1677
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1680
    :cond_4
    const-wide/16 v6, 0x0

    .line 1682
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->a:[I

    aget v4, v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v5, v5, Lorg/justcodecs/dsd/h;->f:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v8, v8, Lorg/justcodecs/dsd/h;->o:[[B

    aget-object v8, v8, v3

    aget-byte v8, v8, v2

    aget v5, v5, v8

    add-int/2addr v4, v5

    .line 1683
    const/16 v5, 0x80

    if-le v4, v5, :cond_5

    .line 1684
    const/16 v4, 0x80

    .line 1687
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v5, v5, Lorg/justcodecs/dsd/g;->a:[I

    aget v5, v5, v3

    const/4 v8, 0x0

    move v14, v5

    move v5, v8

    move v8, v14

    :goto_5
    if-lt v8, v4, :cond_7

    .line 1690
    const/4 v4, 0x0

    move-wide v14, v6

    move v6, v4

    move v7, v5

    move-wide v4, v14

    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v8, v8, Lorg/justcodecs/dsd/g;->a:[I

    aget v8, v8, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v11, v11, Lorg/justcodecs/dsd/h;->f:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v12, v12, Lorg/justcodecs/dsd/h;->o:[[B

    aget-object v12, v12, v3

    aget-byte v12, v12, v2

    aget v11, v11, v12

    add-int/2addr v8, v11

    .line 1691
    add-int/lit8 v8, v8, -0x80

    .line 1690
    if-lt v6, v8, :cond_8

    .line 1696
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v6, v6, Lorg/justcodecs/dsd/h;->l:[I

    aget v6, v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v6, v6, Lorg/justcodecs/dsd/h;->m:[I

    aget v6, v6, v3

    if-ge v2, v6, :cond_9

    .line 1697
    const/16 v6, 0x80

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    move-object/from16 v0, p0

    iget v8, v0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v7, v8, v11}, Lorg/justcodecs/dsd/c;->a(I[BII)B

    move-result v6

    .line 1707
    :goto_7
    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-ltz v4, :cond_b

    const/4 v4, 0x1

    :goto_8
    int-to-short v4, v4

    .line 1709
    const/4 v5, 0x1

    if-ne v6, v5, :cond_d

    .line 1711
    aget-object v5, p2, v3

    div-int/lit8 v6, v2, 0x8

    aget-byte v7, v5, v6

    neg-int v4, v4

    if-lez v4, :cond_c

    rem-int/lit8 v4, v2, 0x8

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    :goto_9
    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    .line 1718
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->a:[I

    aget v5, v4, v3

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v3

    .line 1719
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->a:[I

    aget v4, v4, v3

    if-gez v4, :cond_6

    .line 1720
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->a:[I

    aget v5, v4, v3

    add-int/lit16 v5, v5, 0x80

    aput v5, v4, v3

    .line 1724
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->b:[[I

    aget-object v5, v4, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v4, v4, Lorg/justcodecs/dsd/g;->a:[I

    aget v6, v4, v3

    aget-object v4, p2, v3

    div-int/lit8 v7, v2, 0x8

    aget-byte v4, v4, v7

    rem-int/lit8 v7, v2, 0x8

    aget-byte v7, v10, v7

    and-int/lit16 v7, v7, 0xff

    and-int/2addr v4, v7

    if-lez v4, :cond_f

    const/4 v4, 0x1

    :goto_b
    aput v4, v5, v6

    .line 1678
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 1688
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v11, v11, Lorg/justcodecs/dsd/g;->b:[[I

    aget-object v11, v11, v3

    aget v11, v11, v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v12, v12, Lorg/justcodecs/dsd/h;->h:[[I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v13, v13, Lorg/justcodecs/dsd/h;->o:[[B

    aget-object v13, v13, v3

    aget-byte v13, v13, v2

    aget-object v12, v12, v13

    aget v12, v12, v5

    mul-int/2addr v11, v12

    int-to-long v12, v11

    add-long/2addr v6, v12

    .line 1687
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 1692
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v8, v8, Lorg/justcodecs/dsd/g;->b:[[I

    aget-object v8, v8, v3

    aget v8, v8, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v11, v11, Lorg/justcodecs/dsd/h;->h:[[I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v12, v12, Lorg/justcodecs/dsd/h;->o:[[B

    aget-object v12, v12, v3

    aget-byte v12, v12, v2

    aget-object v11, v11, v12

    aget v11, v11, v7

    mul-int/2addr v8, v11

    int-to-long v12, v8

    add-long/2addr v4, v12

    .line 1691
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 1700
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v6, v6, Lorg/justcodecs/dsd/h;->g:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v7, v7, Lorg/justcodecs/dsd/h;->q:[[B

    aget-object v7, v7, v3

    aget-byte v7, v7, v2

    aget v8, v6, v7

    .line 1699
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_11

    neg-long v6, v4

    :goto_c
    const/4 v11, 0x3

    shr-long/2addr v6, v11

    long-to-int v6, v6

    if-lt v6, v8, :cond_a

    add-int/lit8 v6, v8, -0x1

    .line 1702
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/DSTDecoder;->P_one:[[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v8, v8, Lorg/justcodecs/dsd/h;->q:[[B

    aget-object v8, v8, v3

    aget-byte v8, v8, v2

    aget-object v7, v7, v8

    aget v6, v7, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    .line 1703
    move-object/from16 v0, p0

    iget v8, v0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    const/4 v11, 0x0

    .line 1702
    invoke-virtual {v9, v6, v7, v8, v11}, Lorg/justcodecs/dsd/c;->a(I[BII)B

    move-result v6

    goto/16 :goto_7

    .line 1707
    :cond_b
    const/4 v4, -0x1

    goto/16 :goto_8

    .line 1711
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 1714
    :cond_d
    aget-object v5, p2, v3

    div-int/lit8 v6, v2, 0x8

    aget-byte v7, v5, v6

    if-lez v4, :cond_e

    rem-int/lit8 v4, v2, 0x8

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    :goto_d
    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v5, v6

    goto/16 :goto_a

    :cond_e
    const/4 v4, 0x0

    goto :goto_d

    .line 1725
    :cond_f
    const/4 v4, -0x1

    goto/16 :goto_b

    .line 1735
    :cond_10
    return-void

    :cond_11
    move-wide v6, v4

    goto :goto_c

    .line 1656
    nop

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method final LT_ACGetPtableIndex(SI)I
    .locals 1

    .prologue
    .line 1492
    if-lez p1, :cond_1

    :goto_0
    shr-int/lit8 v0, p1, 0x3

    .line 1493
    if-lt v0, p2, :cond_0

    .line 1494
    add-int/lit8 v0, p2, -0x1

    .line 1497
    :cond_0
    return v0

    .line 1492
    :cond_1
    neg-int p1, p1

    goto :goto_0
.end method

.method final LT_InitCoefTablesI([[[S)V
    .locals 12

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1452
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->c:I

    if-lt v0, v2, :cond_0

    .line 1470
    return-void

    .line 1453
    :cond_0
    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, v2, Lorg/justcodecs/dsd/h;->f:[I

    aget v8, v2, v0

    move v7, v1

    .line 1454
    :goto_1
    const/16 v2, 0x10

    if-lt v7, v2, :cond_1

    .line 1452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_1
    mul-int/lit8 v2, v7, 0x8

    sub-int v2, v8, v2

    .line 1456
    if-le v2, v3, :cond_3

    move v2, v3

    :cond_2
    :goto_2
    move v6, v1

    .line 1461
    :goto_3
    const/16 v4, 0x100

    if-lt v6, v4, :cond_4

    .line 1454
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 1458
    :cond_3
    if-gez v2, :cond_2

    move v2, v1

    .line 1459
    goto :goto_2

    :cond_4
    move v4, v1

    move v5, v1

    .line 1463
    :goto_4
    if-lt v5, v2, :cond_5

    .line 1466
    aget-object v5, p1, v0

    aget-object v5, v5, v7

    int-to-short v4, v4

    aput-short v4, v5, v6

    .line 1461
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_3

    .line 1464
    :cond_5
    shr-int v9, v6, v5

    and-int/lit8 v9, v9, 0x1

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v10, v10, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v10, v10, v0

    mul-int/lit8 v11, v7, 0x8

    add-int/2addr v11, v5

    aget v10, v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v4, v9

    .line 1463
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method final LT_InitStatus([[I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1475
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->b:I

    if-lt v0, v2, :cond_0

    .line 1480
    return-void

    :cond_0
    move v2, v1

    .line 1476
    :goto_1
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 1475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    aget-object v3, p1, v0

    const/16 v4, 0xaa

    aput v4, v3, v2

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method final LT_RUN_FILTER_I([[S[I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1483
    aget-object v0, p1, v1

    aget v1, p2, v1

    aget-short v1, v0, v1

    .line 1484
    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 1486
    return v1

    .line 1485
    :cond_0
    aget-object v2, p1, v0

    aget v3, p2, v0

    aget-short v2, v2, v3

    add-int/2addr v1, v2

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method Log2RoundUp(J)I
    .locals 5

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 702
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 706
    return v0

    .line 703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ReadArithmeticCodedData(Lorg/justcodecs/dsd/j;I[B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1283
    if-nez p2, :cond_1

    .line 1292
    :cond_0
    return-void

    .line 1285
    :cond_1
    invoke-virtual {p1, v1}, Lorg/justcodecs/dsd/j;->a(I)B

    move-result v0

    aput-byte v0, p3, v4

    .line 1286
    aget-byte v0, p3, v4

    if-eqz v0, :cond_2

    .line 1287
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v2, "Illegal arithmetic code in frame %d!"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v3, v3, Lorg/justcodecs/dsd/h;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    move v0, v1

    .line 1289
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1290
    invoke-virtual {p1, v1}, Lorg/justcodecs/dsd/j;->a(I)B

    move-result v2

    aput-byte v2, p3, v0

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ReadDSDframe(Lorg/justcodecs/dsd/j;JI[B)V
    .locals 4

    .prologue
    .line 693
    int-to-long v0, p4

    mul-long/2addr v0, p2

    long-to-int v1, v0

    .line 694
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 697
    return-void

    .line 695
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lorg/justcodecs/dsd/j;->a(I)B

    move-result v2

    aput-byte v2, p5, v0

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method ReadFilterCoefSets(Lorg/justcodecs/dsd/j;ILorg/justcodecs/dsd/h;Lorg/justcodecs/dsd/d;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1130
    move v0, v1

    :goto_0
    iget v2, p3, Lorg/justcodecs/dsd/h;->c:I

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 1182
    :goto_1
    if-lt v0, p2, :cond_b

    .line 1185
    return-void

    .line 1131
    :cond_0
    iget-object v2, p3, Lorg/justcodecs/dsd/h;->f:[I

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    aput v3, v2, v0

    .line 1132
    iget-object v2, p3, Lorg/justcodecs/dsd/h;->f:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 1133
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->c:[I

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    aput v3, v2, v0

    .line 1134
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->c:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    .line 1135
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->d:[I

    aput v9, v2, v0

    move v2, v1

    .line 1136
    :goto_2
    iget-object v3, p3, Lorg/justcodecs/dsd/h;->f:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_3

    .line 1178
    :cond_1
    iget-object v3, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1179
    iget-object v3, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v3, v3, v0

    iget-object v4, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 1130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_3
    iget-object v3, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v3, v3, v0

    invoke-virtual {p1}, Lorg/justcodecs/dsd/j;->a()S

    move-result v4

    aput v4, v3, v2

    .line 1136
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1144
    :cond_4
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->d:[I

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    aput v3, v2, v0

    .line 1145
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->d:[I

    aget v5, v2, v0

    .line 1146
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->a:[I

    aget v2, v2, v5

    iget-object v3, p3, Lorg/justcodecs/dsd/h;->f:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_5

    .line 1147
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Invalid coefficient coding method!"

    invoke-direct {v0, v1, v9}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    move v2, v1

    .line 1150
    :goto_3
    iget-object v3, p4, Lorg/justcodecs/dsd/d;->a:[I

    aget v3, v3, v5

    if-lt v2, v3, :cond_7

    .line 1155
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->e:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    aput v3, v2, v5

    .line 1157
    iget-object v2, p4, Lorg/justcodecs/dsd/d;->a:[I

    aget v2, v2, v5

    :goto_4
    iget-object v3, p3, Lorg/justcodecs/dsd/h;->f:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    move v3, v1

    move v4, v1

    .line 1158
    :goto_5
    iget-object v6, p4, Lorg/justcodecs/dsd/d;->a:[I

    aget v6, v6, v5

    if-lt v4, v6, :cond_8

    .line 1162
    if-ltz v3, :cond_9

    .line 1163
    iget-object v4, p4, Lorg/justcodecs/dsd/d;->e:[[I

    aget-object v4, v4, v0

    aget v4, v4, v5

    invoke-virtual {p0, p1, v4}, Lorg/justcodecs/dsd/DSTDecoder;->RiceDecode(Lorg/justcodecs/dsd/j;I)I

    move-result v4

    add-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x8

    sub-int v3, v4, v3

    .line 1168
    :goto_6
    const/16 v4, -0x100

    if-lt v3, v4, :cond_6

    const/16 v4, 0x100

    if-lt v3, v4, :cond_a

    .line 1169
    :cond_6
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "filter coefficient out of range!"

    invoke-direct {v0, v1, v9}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1151
    :cond_7
    iget-object v3, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v3, v3, v0

    invoke-virtual {p1}, Lorg/justcodecs/dsd/j;->a()S

    move-result v4

    aput v4, v3, v2

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1159
    :cond_8
    iget-object v6, p4, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v6, v6, v5

    aget v6, v6, v4

    iget-object v7, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v7, v7, v0

    sub-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 1158
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1165
    :cond_9
    iget-object v4, p4, Lorg/justcodecs/dsd/d;->e:[[I

    aget-object v4, v4, v0

    aget v4, v4, v5

    invoke-virtual {p0, p1, v4}, Lorg/justcodecs/dsd/DSTDecoder;->RiceDecode(Lorg/justcodecs/dsd/j;I)I

    move-result v4

    neg-int v3, v3

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    goto :goto_6

    .line 1171
    :cond_a
    iget-object v4, p3, Lorg/justcodecs/dsd/h;->h:[[I

    aget-object v4, v4, v0

    int-to-short v3, v3

    aput v3, v4, v2

    .line 1157
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1183
    :cond_b
    iget-object v2, p3, Lorg/justcodecs/dsd/h;->m:[I

    iget-object v3, p3, Lorg/justcodecs/dsd/h;->f:[I

    iget-object v4, p3, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    iget-object v4, v4, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    aget v3, v3, v4

    aput v3, v2, v0

    .line 1182
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method ReadMappingData(Lorg/justcodecs/dsd/j;Lorg/justcodecs/dsd/h;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 1037
    invoke-virtual {p1, v4}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v0

    iput v0, p2, Lorg/justcodecs/dsd/h;->s:I

    .line 1039
    iget v2, p2, Lorg/justcodecs/dsd/h;->b:I

    iget v3, p2, Lorg/justcodecs/dsd/h;->x:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/justcodecs/dsd/DSTDecoder;->ReadTableMappingData(Lorg/justcodecs/dsd/j;IIZLorg/justcodecs/dsd/h;)V

    .line 1040
    iget v0, p2, Lorg/justcodecs/dsd/h;->s:I

    if-ne v0, v4, :cond_0

    .line 1041
    invoke-virtual {p0, p2}, Lorg/justcodecs/dsd/DSTDecoder;->CopyMappingData(Lorg/justcodecs/dsd/h;)V

    .line 1046
    :goto_0
    iget v0, p2, Lorg/justcodecs/dsd/h;->b:I

    if-lt v9, v0, :cond_1

    .line 1049
    return-void

    .line 1043
    :cond_0
    iget v7, p2, Lorg/justcodecs/dsd/h;->b:I

    iget v8, p2, Lorg/justcodecs/dsd/h;->y:I

    move-object v5, p0

    move-object v6, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lorg/justcodecs/dsd/DSTDecoder;->ReadTableMappingData(Lorg/justcodecs/dsd/j;IIZLorg/justcodecs/dsd/h;)V

    goto :goto_0

    .line 1047
    :cond_1
    iget-object v0, p2, Lorg/justcodecs/dsd/h;->l:[I

    invoke-virtual {p1, v4}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v1

    aput v1, v0, v9

    .line 1046
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method ReadProbabilityTables(Lorg/justcodecs/dsd/j;Lorg/justcodecs/dsd/h;Lorg/justcodecs/dsd/d;[[I)V
    .locals 8

    .prologue
    .line 1214
    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lorg/justcodecs/dsd/h;->d:I

    if-lt v0, v1, :cond_0

    .line 1264
    return-void

    .line 1215
    :cond_0
    iget-object v1, p2, Lorg/justcodecs/dsd/h;->g:[I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v2

    aput v2, v1, v0

    .line 1216
    iget-object v1, p2, Lorg/justcodecs/dsd/h;->g:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 1217
    iget-object v1, p2, Lorg/justcodecs/dsd/h;->g:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 1218
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->c:[I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v2

    aput v2, v1, v0

    .line 1219
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->c:[I

    aget v1, v1, v0

    if-nez v1, :cond_3

    .line 1220
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->d:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1221
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p2, Lorg/justcodecs/dsd/h;->g:[I

    aget v2, v2, v0

    if-lt v1, v2, :cond_2

    .line 1214
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    :cond_2
    aget-object v2, p4, v0

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    aput v3, v2, v1

    .line 1223
    aget-object v2, p4, v0

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 1221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1227
    :cond_3
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->d:[I

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v2

    aput v2, v1, v0

    .line 1228
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->d:[I

    aget v4, v1, v0

    .line 1229
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->a:[I

    aget v1, v1, v4

    iget-object v2, p2, Lorg/justcodecs/dsd/h;->g:[I

    aget v2, v2, v0

    if-lt v1, v2, :cond_4

    .line 1230
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Invalid Ptable coding method!"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1233
    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p3, Lorg/justcodecs/dsd/d;->a:[I

    aget v2, v2, v4

    if-lt v1, v2, :cond_6

    .line 1238
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->e:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v2

    aput v2, v1, v4

    .line 1240
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->a:[I

    aget v1, v1, v4

    :goto_4
    iget-object v2, p2, Lorg/justcodecs/dsd/h;->g:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_1

    .line 1241
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_5
    iget-object v5, p3, Lorg/justcodecs/dsd/d;->a:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_7

    .line 1245
    if-ltz v2, :cond_8

    .line 1246
    iget-object v3, p3, Lorg/justcodecs/dsd/d;->e:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    invoke-virtual {p0, p1, v3}, Lorg/justcodecs/dsd/DSTDecoder;->RiceDecode(Lorg/justcodecs/dsd/j;I)I

    move-result v3

    add-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x8

    sub-int v2, v3, v2

    .line 1252
    :goto_6
    if-lez v2, :cond_5

    const/16 v3, 0x80

    if-le v2, v3, :cond_9

    .line 1253
    :cond_5
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Ptable entry (%d) out of range!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1234
    :cond_6
    aget-object v2, p4, v0

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    aput v3, v2, v1

    .line 1235
    aget-object v2, p4, v0

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1242
    :cond_7
    iget-object v5, p3, Lorg/justcodecs/dsd/d;->b:[[I

    aget-object v5, v5, v4

    aget v5, v5, v3

    aget-object v6, p4, v0

    sub-int v7, v1, v3

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1241
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1248
    :cond_8
    iget-object v3, p3, Lorg/justcodecs/dsd/d;->e:[[I

    aget-object v3, v3, v0

    aget v3, v3, v4

    invoke-virtual {p0, p1, v3}, Lorg/justcodecs/dsd/DSTDecoder;->RiceDecode(Lorg/justcodecs/dsd/j;I)I

    move-result v3

    neg-int v2, v2

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    goto :goto_6

    .line 1255
    :cond_9
    aget-object v3, p4, v0

    aput v2, v3, v1

    .line 1240
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1260
    :cond_a
    aget-object v1, p4, v0

    const/4 v2, 0x0

    const/16 v3, 0x80

    aput v3, v1, v2

    .line 1261
    iget-object v1, p3, Lorg/justcodecs/dsd/d;->d:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    goto/16 :goto_2
.end method

.method ReadSegmentData(Lorg/justcodecs/dsd/j;Lorg/justcodecs/dsd/h;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 888
    invoke-virtual {p1, v6}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v0

    iput v0, p2, Lorg/justcodecs/dsd/h;->r:I

    .line 889
    iget v2, p2, Lorg/justcodecs/dsd/h;->b:I

    iget v3, p2, Lorg/justcodecs/dsd/h;->z:I

    const/4 v4, 0x4

    const/16 v5, 0x400

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/justcodecs/dsd/DSTDecoder;->ReadTableSegmentData(Lorg/justcodecs/dsd/j;IIIIZLorg/justcodecs/dsd/h;)V

    .line 890
    iget v0, p2, Lorg/justcodecs/dsd/h;->r:I

    if-ne v0, v6, :cond_0

    .line 891
    invoke-virtual {p0, p2}, Lorg/justcodecs/dsd/DSTDecoder;->CopySegmentData(Lorg/justcodecs/dsd/h;)V

    .line 896
    :goto_0
    return-void

    .line 893
    :cond_0
    iget v2, p2, Lorg/justcodecs/dsd/h;->b:I

    iget v3, p2, Lorg/justcodecs/dsd/h;->z:I

    const/16 v4, 0x8

    const/16 v5, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lorg/justcodecs/dsd/DSTDecoder;->ReadTableSegmentData(Lorg/justcodecs/dsd/j;IIIIZLorg/justcodecs/dsd/h;)V

    goto :goto_0
.end method

.method ReadTableMappingData(Lorg/justcodecs/dsd/j;IIZLorg/justcodecs/dsd/h;)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 917
    .line 920
    if-eqz p4, :cond_0

    iget-object v0, p5, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    .line 922
    :goto_0
    iget-object v1, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v1, v1, v4

    aput v4, v1, v4

    .line 924
    invoke-virtual {p1, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v5

    .line 926
    if-ne v5, v2, :cond_7

    move v1, v2

    move v3, v2

    .line 927
    :goto_1
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->c:[I

    aget v6, v6, v4

    if-lt v1, v6, :cond_1

    .line 938
    :goto_2
    if-lt v2, p2, :cond_4

    .line 962
    :goto_3
    if-le v3, p3, :cond_d

    .line 963
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Too many tables for this frame!"

    invoke-direct {v0, v1, v8}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 920
    :cond_0
    iget-object v0, p5, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    goto :goto_0

    .line 928
    :cond_1
    int-to-long v6, v3

    invoke-virtual {p0, v6, v7}, Lorg/justcodecs/dsd/DSTDecoder;->Log2RoundUp(J)I

    move-result v6

    .line 930
    iget-object v7, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v7, v7, v4

    invoke-virtual {p1, v6}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v6

    aput v6, v7, v1

    .line 932
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v6, v6, v4

    aget v6, v6, v1

    if-ne v6, v3, :cond_3

    .line 933
    add-int/lit8 v3, v3, 0x1

    .line 927
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 934
    :cond_3
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v6, v6, v4

    aget v6, v6, v1

    if-le v6, v3, :cond_2

    .line 935
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Invalid table number for segment!"

    invoke-direct {v0, v1, v8}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 939
    :cond_4
    iget-object v1, v0, Lorg/justcodecs/dsd/i;->c:[I

    aget v1, v1, v2

    iget-object v6, v0, Lorg/justcodecs/dsd/i;->c:[I

    aget v6, v6, v4

    if-eq v1, v6, :cond_5

    .line 940
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Mapping can\'t be the same for all channels!"

    invoke-direct {v0, v1, v8}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    move v1, v4

    .line 942
    :goto_4
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->c:[I

    aget v6, v6, v4

    if-lt v1, v6, :cond_6

    .line 938
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 943
    :cond_6
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v6, v6, v2

    iget-object v7, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v7, v7, v4

    aget v7, v7, v1

    aput v7, v6, v1

    .line 942
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v2

    move v3, v4

    .line 947
    :goto_5
    if-lt v3, p2, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v2, v1

    move v1, v4

    .line 948
    :goto_6
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->c:[I

    aget v6, v6, v3

    if-lt v1, v6, :cond_9

    .line 947
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto :goto_5

    .line 949
    :cond_9
    if-nez v3, :cond_a

    if-eqz v1, :cond_b

    .line 950
    :cond_a
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lorg/justcodecs/dsd/DSTDecoder;->Log2RoundUp(J)I

    move-result v6

    .line 951
    iget-object v7, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v7, v7, v3

    invoke-virtual {p1, v6}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v6

    aput v6, v7, v1

    .line 953
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v6, v6, v3

    aget v6, v6, v1

    if-ne v6, v2, :cond_c

    .line 954
    add-int/lit8 v2, v2, 0x1

    .line 948
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 955
    :cond_c
    iget-object v6, v0, Lorg/justcodecs/dsd/i;->d:[[I

    aget-object v6, v6, v3

    aget v6, v6, v1

    if-le v6, v2, :cond_b

    .line 956
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "ERROR: Invalid table number for segment!"

    invoke-direct {v0, v1, v8}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 965
    :cond_d
    if-eqz p4, :cond_e

    .line 966
    iput v3, p5, Lorg/justcodecs/dsd/h;->c:I

    .line 967
    iput v5, p5, Lorg/justcodecs/dsd/h;->u:I

    .line 972
    :goto_7
    return-void

    .line 969
    :cond_e
    iput v3, p5, Lorg/justcodecs/dsd/h;->d:I

    .line 970
    iput v5, p5, Lorg/justcodecs/dsd/h;->w:I

    goto :goto_7
.end method

.method ReadTableSegmentData(Lorg/justcodecs/dsd/j;IIIIZLorg/justcodecs/dsd/h;)V
    .locals 14

    .prologue
    .line 726
    const/4 v7, 0x0

    .line 727
    const/4 v6, 0x0

    .line 728
    const/4 v5, 0x0

    .line 729
    const/4 v4, 0x0

    .line 734
    div-int/lit8 v2, p5, 0x8

    sub-int v3, p3, v2

    .line 736
    if-eqz p6, :cond_1

    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    .line 738
    :goto_0
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v8

    .line 740
    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 741
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v7

    move v12, v7

    move v7, v6

    move v6, v4

    move v4, v12

    move v13, v5

    move v5, v3

    move v3, v13

    .line 743
    :goto_1
    if-eqz v4, :cond_2

    .line 768
    iget-object v4, v2, Lorg/justcodecs/dsd/i;->c:[I

    const/4 v5, 0x0

    add-int/lit8 v7, v6, 0x1

    aput v7, v4, v5

    .line 769
    iget-object v4, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aput v5, v4, v6

    .line 771
    const/4 v4, 0x1

    move v5, v4

    :goto_2
    move/from16 v0, p2

    if-lt v5, v0, :cond_9

    .line 813
    :goto_3
    if-nez v3, :cond_0

    .line 814
    const/4 v3, 0x1

    iput v3, v2, Lorg/justcodecs/dsd/i;->a:I

    .line 816
    :cond_0
    if-eqz p6, :cond_13

    .line 817
    move-object/from16 v0, p7

    iput v8, v0, Lorg/justcodecs/dsd/h;->t:I

    .line 820
    :goto_4
    return-void

    .line 736
    :cond_1
    move-object/from16 v0, p7

    iget-object v2, v0, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    goto :goto_0

    .line 744
    :cond_2
    move/from16 v0, p4

    if-lt v6, v0, :cond_3

    .line 745
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Too many segments for this channel!"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 747
    :cond_3
    if-nez v3, :cond_6

    .line 748
    div-int/lit8 v3, p5, 0x8

    sub-int v3, p3, v3

    int-to-long v10, v3

    invoke-virtual {p0, v10, v11}, Lorg/justcodecs/dsd/DSTDecoder;->Log2RoundUp(J)I

    move-result v3

    .line 749
    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    iput v3, v2, Lorg/justcodecs/dsd/i;->a:I

    .line 750
    iget v3, v2, Lorg/justcodecs/dsd/i;->a:I

    if-eqz v3, :cond_4

    iget v3, v2, Lorg/justcodecs/dsd/i;->a:I

    div-int/lit8 v4, p5, 0x8

    sub-int v4, p3, v4

    if-le v3, v4, :cond_5

    .line 751
    :cond_4
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Invalid segment resolution!"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 753
    :cond_5
    const/4 v3, 0x1

    .line 755
    :cond_6
    iget v4, v2, Lorg/justcodecs/dsd/i;->a:I

    div-int v4, v5, v4

    int-to-long v10, v4

    invoke-virtual {p0, v10, v11}, Lorg/justcodecs/dsd/DSTDecoder;->Log2RoundUp(J)I

    move-result v4

    .line 756
    iget-object v9, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {p1, v4}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v4

    aput v4, v9, v6

    .line 758
    iget v4, v2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v4, v4, 0x8

    iget-object v9, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget v9, v9, v6

    mul-int/2addr v4, v9

    move/from16 v0, p5

    if-lt v4, v0, :cond_7

    .line 759
    iget v4, v2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v4, v4, 0x8

    iget-object v9, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget v9, v9, v6

    mul-int/2addr v4, v9

    mul-int/lit8 v9, p3, 0x8

    sub-int/2addr v9, v7

    sub-int v9, v9, p5

    if-le v4, v9, :cond_8

    .line 760
    :cond_7
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Invalid segment length!"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 763
    :cond_8
    iget v4, v2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v4, v4, 0x8

    iget-object v9, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget v9, v9, v6

    mul-int/2addr v4, v9

    add-int/2addr v7, v4

    .line 764
    iget v4, v2, Lorg/justcodecs/dsd/i;->a:I

    iget-object v9, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget v9, v9, v6

    mul-int/2addr v4, v9

    sub-int/2addr v5, v4

    .line 765
    add-int/lit8 v6, v6, 0x1

    .line 766
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v4

    goto/16 :goto_1

    .line 772
    :cond_9
    iget-object v4, v2, Lorg/justcodecs/dsd/i;->c:[I

    iget-object v6, v2, Lorg/justcodecs/dsd/i;->c:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    .line 773
    const/4 v4, 0x0

    :goto_5
    iget-object v6, v2, Lorg/justcodecs/dsd/i;->c:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-lt v4, v6, :cond_a

    .line 771
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_2

    .line 774
    :cond_a
    iget-object v6, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v6, v6, v5

    iget-object v7, v2, Lorg/justcodecs/dsd/i;->b:[[I

    const/4 v9, 0x0

    aget-object v7, v7, v9

    aget v7, v7, v4

    aput v7, v6, v4

    .line 773
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 779
    :cond_b
    move/from16 v0, p4

    if-lt v5, v0, :cond_c

    .line 780
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Too many segments for this channel!"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 782
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v9

    .line 783
    if-nez v9, :cond_12

    .line 784
    if-nez v3, :cond_f

    .line 785
    div-int/lit8 v3, p5, 0x8

    sub-int v3, p3, v3

    int-to-long v10, v3

    invoke-virtual {p0, v10, v11}, Lorg/justcodecs/dsd/DSTDecoder;->Log2RoundUp(J)I

    move-result v3

    .line 786
    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v3

    iput v3, v2, Lorg/justcodecs/dsd/i;->a:I

    .line 787
    iget v3, v2, Lorg/justcodecs/dsd/i;->a:I

    if-eqz v3, :cond_d

    iget v3, v2, Lorg/justcodecs/dsd/i;->a:I

    div-int/lit8 v9, p5, 0x8

    sub-int v9, p3, v9

    if-le v3, v9, :cond_e

    .line 788
    :cond_d
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Invalid segment resolution!"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 790
    :cond_e
    const/4 v3, 0x1

    .line 792
    :cond_f
    iget v9, v2, Lorg/justcodecs/dsd/i;->a:I

    div-int v9, v4, v9

    int-to-long v10, v9

    invoke-virtual {p0, v10, v11}, Lorg/justcodecs/dsd/DSTDecoder;->Log2RoundUp(J)I

    move-result v9

    .line 793
    iget-object v10, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v10, v10, v7

    invoke-virtual {p1, v9}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v9

    aput v9, v10, v5

    .line 795
    iget v9, v2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v10, v10, v7

    aget v10, v10, v5

    mul-int/2addr v9, v10

    move/from16 v0, p5

    if-lt v9, v0, :cond_10

    .line 796
    iget v9, v2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v10, v10, v7

    aget v10, v10, v5

    mul-int/2addr v9, v10

    mul-int/lit8 v10, p3, 0x8

    sub-int/2addr v10, v6

    .line 797
    sub-int v10, v10, p5

    if-le v9, v10, :cond_11

    .line 798
    :cond_10
    new-instance v2, Lorg/justcodecs/dsd/e;

    const-string v3, "Invalid segment length!"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 800
    :cond_11
    iget v9, v2, Lorg/justcodecs/dsd/i;->a:I

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v10, v10, v7

    aget v10, v10, v5

    mul-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 801
    iget v9, v2, Lorg/justcodecs/dsd/i;->a:I

    iget-object v10, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v10, v10, v7

    aget v10, v10, v5

    mul-int/2addr v9, v10

    sub-int/2addr v4, v9

    .line 802
    add-int/lit8 v5, v5, 0x1

    .line 778
    :goto_6
    move/from16 v0, p2

    if-lt v7, v0, :cond_b

    goto/16 :goto_3

    .line 804
    :cond_12
    iget-object v4, v2, Lorg/justcodecs/dsd/i;->c:[I

    add-int/lit8 v6, v5, 0x1

    aput v6, v4, v7

    .line 805
    iget-object v4, v2, Lorg/justcodecs/dsd/i;->b:[[I

    aget-object v4, v4, v7

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 806
    const/4 v5, 0x0

    .line 807
    const/4 v6, 0x0

    .line 808
    div-int/lit8 v4, p5, 0x8

    sub-int v4, p3, v4

    .line 809
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 819
    :cond_13
    move-object/from16 v0, p7

    iput v8, v0, Lorg/justcodecs/dsd/h;->v:I

    goto/16 :goto_4

    :cond_14
    move v12, v3

    move v3, v5

    move v5, v4

    move v4, v12

    goto :goto_6
.end method

.method RiceDecode(Lorg/justcodecs/dsd/j;I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1075
    const/4 v0, 0x0

    .line 1077
    :cond_0
    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v1

    .line 1078
    rsub-int/lit8 v2, v1, 0x1

    add-int/2addr v0, v2

    .line 1079
    if-eqz v1, :cond_0

    .line 1082
    invoke-virtual {p1, p2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v1

    .line 1084
    shl-int/2addr v0, p2

    add-int/2addr v0, v1

    .line 1087
    if-eqz v0, :cond_1

    .line 1088
    invoke-virtual {p1, v3}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v1

    .line 1090
    if-ne v1, v3, :cond_1

    .line 1091
    neg-int v0, v0

    .line 1095
    :cond_1
    return v0
.end method

.method UnpackDSTframe([B[B)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1419
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->j:I

    invoke-virtual {v0, p1, v1}, Lorg/justcodecs/dsd/j;->a([BI)V

    .line 1422
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    invoke-virtual {v1, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v1

    iput v1, v0, Lorg/justcodecs/dsd/h;->i:I

    .line 1423
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->i:I

    if-nez v0, :cond_1

    .line 1424
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/j;->b(I)I

    .line 1425
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/justcodecs/dsd/j;->b(I)I

    move-result v0

    .line 1427
    if-eqz v0, :cond_0

    .line 1428
    new-instance v0, Lorg/justcodecs/dsd/e;

    const-string v1, "Illegal stuffing pattern in frame %d!"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v3, v3, Lorg/justcodecs/dsd/h;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/justcodecs/dsd/e;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1430
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Processing dsd frame%n"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1432
    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->z:I

    int-to-long v2, v0

    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v0, Lorg/justcodecs/dsd/h;->b:I

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/justcodecs/dsd/DSTDecoder;->ReadDSDframe(Lorg/justcodecs/dsd/j;JI[B)V

    .line 1447
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DSTDecoder;->ReadSegmentData(Lorg/justcodecs/dsd/j;Lorg/justcodecs/dsd/h;)V

    .line 1437
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    invoke-virtual {p0, v0, v1}, Lorg/justcodecs/dsd/DSTDecoder;->ReadMappingData(Lorg/justcodecs/dsd/j;Lorg/justcodecs/dsd/h;)V

    .line 1439
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->b:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrFilter:Lorg/justcodecs/dsd/d;

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/justcodecs/dsd/DSTDecoder;->ReadFilterCoefSets(Lorg/justcodecs/dsd/j;ILorg/justcodecs/dsd/h;Lorg/justcodecs/dsd/d;)V

    .line 1441
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrPtable:Lorg/justcodecs/dsd/d;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSTDecoder;->P_one:[[I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/justcodecs/dsd/DSTDecoder;->ReadProbabilityTables(Lorg/justcodecs/dsd/j;Lorg/justcodecs/dsd/h;Lorg/justcodecs/dsd/d;[[I)V

    .line 1443
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v0, v0, Lorg/justcodecs/dsd/h;->k:J

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    invoke-virtual {v2}, Lorg/justcodecs/dsd/j;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    .line 1445
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    iget v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->ADataLen:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    invoke-virtual {p0, v0, v1, v2}, Lorg/justcodecs/dsd/DSTDecoder;->ReadArithmeticCodedData(Lorg/justcodecs/dsd/j;I[B)V

    goto :goto_0
.end method

.method init(II)V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1363
    new-instance v0, Lorg/justcodecs/dsd/j;

    invoke-direct {v0}, Lorg/justcodecs/dsd/j;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->S:Lorg/justcodecs/dsd/j;

    .line 1364
    new-instance v0, Lorg/justcodecs/dsd/h;

    invoke-direct {v0}, Lorg/justcodecs/dsd/h;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    .line 1365
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iput p1, v0, Lorg/justcodecs/dsd/h;->b:I

    .line 1366
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iput v1, v0, Lorg/justcodecs/dsd/h;->a:I

    .line 1367
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iput p2, v0, Lorg/justcodecs/dsd/h;->e:I

    .line 1371
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    mul-int/lit16 v2, p2, 0x24c

    div-int/lit8 v2, v2, 0x8

    iput v2, v0, Lorg/justcodecs/dsd/h;->z:I

    .line 1373
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->z:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v3, v3, Lorg/justcodecs/dsd/h;->b:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, v0, Lorg/justcodecs/dsd/h;->A:J

    .line 1374
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v2, v2, Lorg/justcodecs/dsd/h;->A:J

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lorg/justcodecs/dsd/h;->B:J

    .line 1375
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->z:I

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    iput-wide v2, v0, Lorg/justcodecs/dsd/h;->C:J

    .line 1377
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->b:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/justcodecs/dsd/h;->x:I

    .line 1378
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->b:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/justcodecs/dsd/h;->y:I

    .line 1379
    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->x:I

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v2, Lorg/justcodecs/dsd/h;->h:[[I

    .line 1380
    new-instance v0, Lorg/justcodecs/dsd/d;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    invoke-direct {v0, v2}, Lorg/justcodecs/dsd/d;-><init>(Lorg/justcodecs/dsd/h;)V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrFilter:Lorg/justcodecs/dsd/d;

    .line 1381
    new-instance v0, Lorg/justcodecs/dsd/d;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    invoke-direct {v0, v2}, Lorg/justcodecs/dsd/d;-><init>(Lorg/justcodecs/dsd/h;)V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrPtable:Lorg/justcodecs/dsd/d;

    .line 1382
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrFilter:Lorg/justcodecs/dsd/d;

    iput v1, v0, Lorg/justcodecs/dsd/d;->g:I

    .line 1383
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrPtable:Lorg/justcodecs/dsd/d;

    iput v6, v0, Lorg/justcodecs/dsd/d;->g:I

    .line 1384
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v2, v0, Lorg/justcodecs/dsd/h;->B:J

    long-to-int v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->AData:[B

    .line 1385
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->y:I

    const/16 v2, 0x40

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->P_one:[[I

    .line 1386
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrFilter:Lorg/justcodecs/dsd/d;

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/DSTDecoder;->CCP_CalcInit(Lorg/justcodecs/dsd/d;)V

    .line 1387
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->StrPtable:Lorg/justcodecs/dsd/d;

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/DSTDecoder;->CCP_CalcInit(Lorg/justcodecs/dsd/d;)V

    .line 1388
    new-instance v0, Lorg/justcodecs/dsd/f;

    invoke-direct {v0}, Lorg/justcodecs/dsd/f;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->DstXbits:Lorg/justcodecs/dsd/f;

    .line 1389
    new-instance v0, Lorg/justcodecs/dsd/g;

    invoke-direct {v0}, Lorg/justcodecs/dsd/g;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    .line 1390
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v2, v2, Lorg/justcodecs/dsd/h;->b:I

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/justcodecs/dsd/g;->a:[I

    .line 1391
    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FirPtrs:Lorg/justcodecs/dsd/g;

    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->b:I

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v2, Lorg/justcodecs/dsd/g;->b:[[I

    .line 1392
    iget-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->b:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v2, v2, Lorg/justcodecs/dsd/h;->C:J

    long-to-int v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->BitStream11:[[S

    move v0, v1

    .line 1395
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1398
    new-instance v0, Lorg/justcodecs/dsd/c;

    invoke-direct {v0}, Lorg/justcodecs/dsd/c;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DSTDecoder;->AC:Lorg/justcodecs/dsd/c;

    .line 1399
    return-void

    .line 1396
    :cond_0
    iget-object v1, p0, Lorg/justcodecs/dsd/DSTDecoder;->BitMask:[B

    shl-int v2, v6, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

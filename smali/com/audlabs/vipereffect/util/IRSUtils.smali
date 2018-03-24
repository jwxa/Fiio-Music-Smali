.class public Lcom/audlabs/vipereffect/util/IRSUtils;
.super Ljava/lang/Object;
.source "IRSUtils.java"


# static fields
.field private static final WAV_DATA_CHUNK_ID:I = 0x64617461

.field private static final WAV_FORMAT:I = 0x57415645

.field private static final WAV_FORMAT_CHUNK_ID:I = 0x666d7420

.field private static final WAV_HEADER_CHUNK_ID:I = 0x52494646


# instance fields
.field private mBytesCount:J

.field private mChannels:I

.field private mInputStream:Ljava/io/BufferedInputStream;

.field private mIrsStream:Ljava/io/FileInputStream;

.field private mSampleBits:I

.field private mSampleType:I

.field private mSamplesCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    .line 63
    iput-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 64
    return-void
.end method

.method private byteToShortLE(BB)S
    .locals 2

    .prologue
    .line 366
    and-int/lit16 v0, p1, 0xff

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private convert_S16LE_F32([B)[B
    .locals 10

    .prologue
    .line 309
    array-length v0, p1

    div-int/lit8 v1, v0, 0x2

    .line 310
    mul-int/lit8 v0, v1, 0x4

    new-array v2, v0, [B

    .line 311
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 314
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 315
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 316
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 317
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 322
    return-object v2

    .line 318
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 319
    int-to-double v6, v5

    const-wide/high16 v8, 0x3f00000000000000L    # 3.0517578125E-5

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 320
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private convert_S24LE_F32([B)[B
    .locals 11

    .prologue
    const/4 v0, 0x0

    const v10, 0x7fffff

    .line 326
    array-length v1, p1

    div-int/lit8 v3, v1, 0x3

    .line 327
    mul-int/lit8 v1, v3, 0x4

    new-array v4, v1, [B

    .line 328
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 331
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v1, v0

    move v2, v0

    .line 332
    :goto_0
    if-lt v2, v3, :cond_0

    .line 345
    return-object v4

    .line 333
    :cond_0
    aget-byte v0, p1, v1

    .line 334
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    .line 335
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    .line 336
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    and-int/lit16 v6, v7, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v0, v6

    .line 337
    if-le v0, v10, :cond_1

    .line 338
    and-int/2addr v0, v10

    .line 339
    sub-int v0, v10, v0

    .line 340
    neg-int v0, v0

    .line 342
    :cond_1
    int-to-double v6, v0

    const-wide/high16 v8, 0x3e80000000000000L

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 343
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 332
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x3

    move v1, v0

    goto :goto_0
.end method

.method private convert_S32LE_F32([B)[B
    .locals 10

    .prologue
    .line 349
    array-length v0, p1

    div-int/lit8 v1, v0, 0x4

    .line 350
    mul-int/lit8 v0, v1, 0x4

    new-array v2, v0, [B

    .line 351
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 354
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 355
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 356
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 357
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 362
    return-object v2

    .line 358
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 359
    int-to-double v6, v5

    const-wide/high16 v8, 0x3e00000000000000L    # 4.6566128730773926E-10

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 360
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hashIRS([BI)J
    .locals 11

    .prologue
    .line 16
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lt v0, p1, :cond_0

    if-gtz p1, :cond_1

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 41
    :goto_0
    return-wide v0

    .line 21
    :cond_1
    const/16 v0, 0x100

    new-array v5, v0, [J

    .line 22
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    const/16 v0, 0x100

    if-lt v4, v0, :cond_2

    .line 35
    const-wide/16 v2, -0x1

    .line 36
    const/4 v0, 0x0

    :goto_2
    if-lt v0, p1, :cond_5

    .line 41
    const-wide/16 v0, -0x1

    xor-long/2addr v0, v2

    goto :goto_0

    .line 23
    :cond_2
    int-to-long v2, v4

    .line 24
    const/16 v0, 0x8

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_3
    if-gtz v2, :cond_3

    .line 31
    aput-wide v0, v5, v4

    .line 22
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 25
    :cond_3
    const-wide/16 v6, 0x1

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    .line 26
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    const-wide v6, 0xedb88320L

    xor-long/2addr v0, v6

    .line 24
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 28
    :cond_4
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    goto :goto_4

    .line 37
    :cond_5
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    .line 38
    xor-long/2addr v6, v2

    long-to-int v1, v6

    and-int/lit16 v1, v1, 0xff

    .line 39
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    const-wide/32 v6, 0xffffff

    and-long/2addr v2, v6

    aget-wide v6, v5, v1

    xor-long/2addr v2, v6

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private readUnsignedInt(Ljava/io/BufferedInputStream;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 370
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 373
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 377
    if-ne v3, v0, :cond_0

    :goto_0
    return v0

    .line 375
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 377
    :cond_0
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 378
    const/4 v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 379
    const/4 v1, 0x2

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 380
    const/4 v1, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 377
    goto :goto_0
.end method

.method private readUnsignedIntLE(Ljava/io/BufferedInputStream;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 384
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 387
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 391
    if-ne v3, v0, :cond_0

    :goto_0
    return v0

    .line 389
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 391
    :cond_0
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    .line 392
    const/4 v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 393
    const/4 v1, 0x2

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 394
    const/4 v1, 0x3

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 391
    goto :goto_0
.end method

.method private readUnsignedShortLE(Ljava/io/BufferedInputStream;)S
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 398
    new-array v2, v2, [B

    .line 401
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p1, v2, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 405
    if-ne v3, v0, :cond_0

    :goto_0
    return v0

    .line 403
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 405
    :cond_0
    aget-byte v0, v2, v1

    const/4 v1, 0x1

    aget-byte v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/audlabs/vipereffect/util/IRSUtils;->byteToShortLE(BB)S

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public LoadIrs(Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const-wide/16 v8, 0x10

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    .line 104
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 113
    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    .line 107
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 108
    const-string v2, "ViPER4Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LoadIrs, FileNotFoundException, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const-string v3, "mIrsPathName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_2
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 120
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 121
    const v3, 0x52494646

    if-eq v2, v3, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v2

    int-to-long v2, v2

    .line 126
    cmp-long v2, v2, v8

    if-gtz v2, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 131
    const v3, 0x57415645

    if-eq v2, v3, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 137
    :cond_5
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 138
    const v3, 0x666d7420

    if-eq v2, v3, :cond_6

    .line 139
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 143
    const/16 v3, 0x10

    if-ge v2, v3, :cond_7

    .line 144
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 147
    :cond_7
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v2

    .line 148
    if-eq v2, v1, :cond_8

    if-eq v2, v10, :cond_8

    .line 150
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 153
    :cond_8
    iget-object v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v3

    iput v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    .line 154
    iget v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    if-eq v3, v1, :cond_9

    .line 155
    iget v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    if-eq v3, v7, :cond_9

    .line 156
    iget v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9

    .line 158
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 161
    :cond_9
    iget-object v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v3

    .line 162
    const/16 v4, 0x1f40

    if-lt v3, v4, :cond_a

    const v4, 0x2ee00

    if-le v3, v4, :cond_b

    .line 164
    :cond_a
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 167
    :cond_b
    iget-object v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v3

    .line 168
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IRS byterate = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v3

    .line 170
    const-string v4, "ViPER4Android"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IRS blockalign = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v3}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedShortLE(Ljava/io/BufferedInputStream;)S

    move-result v3

    iput v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    .line 173
    iput v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    .line 174
    if-ne v2, v1, :cond_f

    .line 175
    iget v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    .line 176
    iput v1, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 198
    const v3, 0x64617461

    if-eq v2, v3, :cond_11

    .line 199
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 177
    :cond_c
    iget v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_d

    .line 178
    iput v7, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    goto :goto_1

    .line 179
    :cond_d
    iget v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_e

    .line 180
    iput v10, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    goto :goto_1

    .line 183
    :cond_e
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 187
    :cond_f
    iget v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_10

    .line 188
    const/4 v2, 0x4

    iput v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    goto :goto_1

    .line 191
    :cond_10
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 202
    :cond_11
    iget-object v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v2}, Lcom/audlabs/vipereffect/util/IRSUtils;->readUnsignedIntLE(Ljava/io/BufferedInputStream;)I

    move-result v2

    .line 203
    if-lez v2, :cond_12

    const/high16 v3, 0x400000

    if-le v2, v3, :cond_13

    .line 205
    :cond_12
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 210
    :cond_13
    int-to-long v2, v2

    iput-wide v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    .line 211
    iget-wide v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    iget v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    div-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSamplesCount:J

    .line 212
    iget-wide v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSamplesCount:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_14

    .line 214
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 217
    :cond_14
    iget-wide v2, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    iget v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    iget v5, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_15

    .line 218
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    goto/16 :goto_0

    .line 222
    :cond_15
    const-string v0, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IRS ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] opened"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IRS attr = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSamplesCount:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 226
    goto/16 :goto_0
.end method

.method public Release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iput-object v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    iput-object v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    .line 91
    :cond_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Release, msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    const-string v1, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Release, msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    throw v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    return v0
.end method

.method public getSampleCount()I
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSamplesCount:J

    long-to-int v0, v0

    return v0
.end method

.method public readEntireData()[B
    .locals 9

    .prologue
    const/16 v4, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mIrsStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 297
    :goto_0
    return-object v0

    .line 233
    :cond_1
    iget v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 234
    goto :goto_0

    .line 238
    :cond_3
    new-array v0, v4, [B

    move-object v4, v0

    move v0, v3

    .line 242
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mInputStream:Ljava/io/BufferedInputStream;

    const/16 v5, 0x1000

    invoke-virtual {v1, v4, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    if-gez v1, :cond_4

    .line 259
    :goto_2
    new-array v1, v0, [B

    .line 260
    invoke-static {v4, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    array-length v0, v1

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    .line 267
    array-length v0, v1

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    .line 268
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    iget v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    int-to-long v6, v0

    div-long/2addr v4, v6

    iget v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    div-int/lit8 v0, v0, 0x8

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSamplesCount:J

    .line 269
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    iget v0, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mChannels:I

    iget v3, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleBits:I

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    int-to-long v6, v0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 270
    invoke-virtual {p0}, Lcom/audlabs/vipereffect/util/IRSUtils;->Release()V

    move-object v0, v2

    .line 272
    goto :goto_0

    .line 246
    :cond_4
    add-int/2addr v1, v0

    .line 248
    add-int/lit16 v0, v1, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 249
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    move v0, v1

    .line 251
    goto :goto_1

    :catch_0
    move-exception v1

    .line 253
    :goto_3
    const-string v5, "ViPER4Android"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readEntireData, msg = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    :cond_5
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    array-length v0, v1

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    .line 277
    const-string v0, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IRSUtils: We got some garbage data, header = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    const-string v4, ", read = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v0, "ViPER4Android"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "IRSUtils: So lets discard some data, length = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    array-length v4, v1

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 282
    iget-wide v4, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mBytesCount:J

    long-to-int v2, v4

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    :goto_4
    iget v1, p0, Lcom/audlabs/vipereffect/util/IRSUtils;->mSampleType:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 290
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/util/IRSUtils;->convert_S16LE_F32([B)[B

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/util/IRSUtils;->convert_S24LE_F32([B)[B

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/audlabs/vipereffect/util/IRSUtils;->convert_S32LE_F32([B)[B

    move-result-object v0

    goto/16 :goto_0

    .line 251
    :catch_1
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto/16 :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_4

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

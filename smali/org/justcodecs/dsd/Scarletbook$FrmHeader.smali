.class public Lorg/justcodecs/dsd/Scarletbook$FrmHeader;
.super Ljava/lang/Object;
.source "Scarletbook.java"


# static fields
.field static buf:[B


# instance fields
.field dst:Z

.field frame_info_count:I

.field packet_info_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 335
    const/16 v0, 0x2b

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getChannelBit1(I)I
    .locals 1

    .prologue
    .line 406
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 407
    :cond_0
    const/4 v0, -0x1

    .line 408
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelsByte(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getChannelBit2(I)I
    .locals 1

    .prologue
    .line 412
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 413
    :cond_0
    const/4 v0, -0x1

    .line 414
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelsByte(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getChannelBit3(I)I
    .locals 1

    .prologue
    .line 418
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, -0x1

    .line 420
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelsByte(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getChannelsByte(I)B
    .locals 3

    .prologue
    .line 396
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method getDataType(I)I
    .locals 2

    .prologue
    .line 366
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt p1, v0, :cond_1

    .line 367
    :cond_0
    const/4 v0, -0x1

    .line 368
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    goto :goto_0
.end method

.method getFrames(I)I
    .locals 3

    .prologue
    .line 390
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 391
    :cond_0
    const/4 v0, -0x1

    .line 392
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method getMinutes(I)I
    .locals 3

    .prologue
    .line 378
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 379
    :cond_0
    const/4 v0, -0x1

    .line 380
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method getPackLen(I)I
    .locals 3

    .prologue
    .line 360
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt p1, v0, :cond_1

    .line 361
    :cond_0
    const/4 v0, -0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method getSeconds(I)I
    .locals 3

    .prologue
    .line 384
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 385
    :cond_0
    const/4 v0, -0x1

    .line 386
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method getSectorCount(I)I
    .locals 1

    .prologue
    .line 400
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt p1, v0, :cond_1

    .line 401
    :cond_0
    const/4 v0, -0x1

    .line 402
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelsByte(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1f

    goto :goto_0
.end method

.method getSize()I
    .locals 3

    .prologue
    .line 355
    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 356
    iget-boolean v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->dst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iget v2, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    mul-int/2addr v0, v2

    .line 355
    add-int/2addr v0, v1

    return v0

    .line 356
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method isFrameStart(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 374
    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x7

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    :try_start_0
    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p1, v2, v3, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 344
    sget-object v2, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->dst:Z

    .line 345
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    .line 346
    sget-object v0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    .line 347
    sget-object v1, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->buf:[B

    const/4 v2, 0x1

    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    mul-int/lit8 v3, v0, 0x2

    .line 348
    iget-boolean v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->dst:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    iget v4, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 347
    invoke-interface {p1, v1, v2, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    :cond_0
    move v0, v1

    .line 344
    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "I/O"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 425
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 427
    :goto_0
    iget v3, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    if-lt v0, v3, :cond_0

    .line 431
    :goto_1
    iget v0, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    if-lt v1, v0, :cond_1

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrmHeader [dst="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->dst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame_info_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->frame_info_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packet_info_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    iget v1, p0, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->packet_info_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 428
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Packet "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lengh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getPackLen(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->isFrameStart(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 429
    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getDataType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Frame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",m:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getMinutes(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",s:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSeconds(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getFrames(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const-string v2, ", sector count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getSectorCount(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", channel bit1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelBit1(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    const-string v2, ", channel bit2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelBit2(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", channel bit3 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/justcodecs/dsd/Scarletbook$FrmHeader;->getChannelBit3(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

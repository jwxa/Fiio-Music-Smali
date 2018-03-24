.class public Lorg/justcodecs/dsd/DFFFormat;
.super Lorg/justcodecs/dsd/DSDFormat;
.source "DFFFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/justcodecs/dsd/DSDFormat",
        "<[B>;"
    }
.end annotation


# instance fields
.field final DSTC:I

.field final DSTF:I

.field block:I

.field buff:[B

.field dsdBuf:[B

.field dst:Lorg/justcodecs/dsd/DSTDecoder;

.field dstFrmNo:I

.field dstc:Lorg/justcodecs/dsd/ChunkDSTC;

.field dstf:Lorg/justcodecs/dsd/ChunkDSTF;

.field filePosition:J

.field frm:Lorg/justcodecs/dsd/ChunkFRM8;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 9
    invoke-direct {p0}, Lorg/justcodecs/dsd/DSDFormat;-><init>()V

    .line 12
    const/16 v0, 0x800

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->block:I

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 22
    invoke-static {v0}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->DSTF:I

    .line 23
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    .line 24
    invoke-static {v0}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->DSTC:I

    .line 9
    return-void

    .line 21
    nop

    :array_0
    .array-data 1
        0x44t
        0x53t
        0x54t
        0x46t
    .end array-data

    .line 23
    :array_1
    .array-data 1
        0x44t
        0x53t
        0x54t
        0x43t
    .end array-data
.end method


# virtual methods
.method decodeDSTDataBlock()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dstFrmNo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dstFrmNo:I

    .line 154
    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dstFrmNo:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v3, v3, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v3, v3, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v3, v3, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget v3, v3, Lorg/justcodecs/dsd/ChunkFRTE;->numFrames:I

    if-lt v2, v3, :cond_0

    .line 188
    :goto_0
    return v0

    .line 157
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->DSTF:I

    if-eq v0, v2, :cond_1

    .line 158
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->DSTC:I

    if-ne v0, v2, :cond_2

    .line 160
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dstc:Lorg/justcodecs/dsd/ChunkDSTC;

    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/ChunkDSTC;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 161
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->DSTF:I

    if-eq v0, v2, :cond_1

    .line 162
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "Unexpected chunk format"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dstf:Lorg/justcodecs/dsd/ChunkDSTF;

    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-virtual {v0, v2}, Lorg/justcodecs/dsd/ChunkDSTF;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 166
    :cond_2
    iget v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    if-gez v0, :cond_3

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    .line 168
    :cond_3
    iget v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufEnd:I

    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    sub-int/2addr v0, v2

    .line 169
    if-lez v0, :cond_4

    .line 170
    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    iget v3, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_4
    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v2, v2, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget-wide v2, v2, Lorg/justcodecs/dsd/h;->C:J

    .line 172
    iget-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v4, v4, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v4, v4, Lorg/justcodecs/dsd/h;->b:I

    int-to-long v4, v4

    .line 171
    mul-long/2addr v2, v4

    .line 172
    const-wide/16 v4, 0x8

    .line 171
    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 173
    add-int v3, v0, v2

    iget-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 174
    const/4 v2, 0x0

    iput v2, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    .line 175
    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufEnd:I

    :goto_1
    move v0, v1

    .line 188
    goto :goto_0

    .line 177
    :cond_5
    iget-object v3, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->dstf:Lorg/justcodecs/dsd/ChunkDSTF;

    iget-object v4, v4, Lorg/justcodecs/dsd/ChunkDSTF;->data:[B

    iget-object v5, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdBuf:[B

    iget-object v6, p0, Lorg/justcodecs/dsd/DFFFormat;->dstf:Lorg/justcodecs/dsd/ChunkDSTF;

    iget-wide v6, v6, Lorg/justcodecs/dsd/ChunkDSTF;->size:J

    long-to-int v6, v6

    iget v7, p0, Lorg/justcodecs/dsd/DFFFormat;->dstFrmNo:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/justcodecs/dsd/DSTDecoder;->FramDSTDecode([B[BII)V

    .line 178
    iget-object v3, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdBuf:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    const/4 v3, 0x0

    iput v3, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    .line 180
    add-int/2addr v0, v2

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufEnd:I
    :try_end_0
    .catch Lorg/justcodecs/dsd/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNoTrackInfo_trackCount()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getNoTrackInfo_trackDuration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoTrackInfo_trackStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->channels:I

    return v0
.end method

.method public getSampleCount()J
    .locals 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->isDST()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    iget-wide v0, v0, Lorg/justcodecs/dsd/ChunkDSD;->dataEnd:J

    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v2, v2, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v2, v2, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    iget-wide v2, v2, Lorg/justcodecs/dsd/ChunkDSD;->start:J

    sub-long/2addr v0, v2

    .line 91
    const/16 v2, 0x8

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getNumChannels()I

    move-result v3

    div-int/2addr v2, v3

    int-to-long v2, v2

    .line 90
    mul-long/2addr v0, v2

    .line 93
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget v0, v0, Lorg/justcodecs/dsd/ChunkFRTE;->numFrames:I

    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget v1, v1, Lorg/justcodecs/dsd/ChunkFRTE;->rate:I

    div-int/2addr v0, v1

    .line 94
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getSampleRate()I

    move-result v1

    .line 93
    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->sampleRate:I

    return v0
.end method

.method bridge synthetic getSamples()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getSamples()[B

    move-result-object v0

    return-object v0
.end method

.method getSamples()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    return-object v0
.end method

.method public init(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 29
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->metadataCharset:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Ljava/lang/String;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkFRM8;

    if-nez v1, :cond_0

    .line 31
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Invalid .dff format, no FRAME chunk"

    invoke-direct {v0, v1, v4}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 34
    :cond_0
    check-cast v0, Lorg/justcodecs/dsd/ChunkFRM8;

    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    .line 35
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->attrs:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 36
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->isDST()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    new-instance v0, Lorg/justcodecs/dsd/DSTDecoder;

    invoke-direct {v0}, Lorg/justcodecs/dsd/DSTDecoder;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    .line 39
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getNumChannels()I

    move-result v1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getSampleRate()I

    move-result v2

    const v3, 0xac44

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/justcodecs/dsd/DSTDecoder;->init(II)V
    :try_end_0
    .catch Lorg/justcodecs/dsd/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_1
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    iput-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    .line 42
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "Coudn\'t initialize DST decoder"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method initBuffers(I)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->isDST()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget v0, p0, Lorg/justcodecs/dsd/DFFFormat;->block:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getNumChannels()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v0, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->z:I

    add-int/2addr v0, p1

    .line 108
    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v1, v1, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->b:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 107
    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    .line 109
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v0, v0, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v0, v0, Lorg/justcodecs/dsd/h;->z:I

    .line 110
    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->dst:Lorg/justcodecs/dsd/DSTDecoder;

    iget-object v1, v1, Lorg/justcodecs/dsd/DSTDecoder;->FrameHdr:Lorg/justcodecs/dsd/h;

    iget v1, v1, Lorg/justcodecs/dsd/h;->b:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    .line 109
    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdBuf:[B

    .line 111
    new-instance v0, Lorg/justcodecs/dsd/ChunkDSTF;

    invoke-direct {v0}, Lorg/justcodecs/dsd/ChunkDSTF;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dstf:Lorg/justcodecs/dsd/ChunkDSTF;

    .line 112
    new-instance v0, Lorg/justcodecs/dsd/ChunkDSTC;

    invoke-direct {v0}, Lorg/justcodecs/dsd/ChunkDSTC;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dstc:Lorg/justcodecs/dsd/ChunkDSTC;

    goto :goto_0
.end method

.method isDST()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMSB()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method readDataBlock()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->isDST()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->decodeDSTDataBlock()Z

    move-result v0

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    iget-wide v4, v1, Lorg/justcodecs/dsd/ChunkDSD;->dataEnd:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 60
    iget v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    if-gez v0, :cond_2

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    .line 62
    :cond_2
    iget v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufEnd:I

    iget v1, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    sub-int v1, v0, v1

    .line 64
    if-lez v1, :cond_3

    .line 65
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    iget v2, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    iget-object v3, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    :cond_3
    iget v0, p0, Lorg/justcodecs/dsd/DFFFormat;->block:I

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getNumChannels()I

    move-result v2

    mul-int/2addr v0, v2

    .line 67
    int-to-long v2, v0

    iget-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v4, v4, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v4, v4, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    iget-wide v4, v4, Lorg/justcodecs/dsd/ChunkDSD;->dataEnd:J

    iget-wide v6, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 68
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    iget-wide v2, v0, Lorg/justcodecs/dsd/ChunkDSD;->dataEnd:J

    iget-wide v4, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 69
    :cond_4
    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DFFFormat;->buff:[B

    invoke-interface {v2, v3, v1, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 70
    iget-wide v2, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    .line 74
    const/4 v2, 0x0

    iput v2, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    .line 75
    add-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufEnd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO exception at reading samples"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method seek(J)V
    .locals 7

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->isDST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/justcodecs/dsd/DFFFormat;->seekDST(J)V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    iget-wide v0, v0, Lorg/justcodecs/dsd/ChunkDSD;->start:J

    const-wide/16 v2, 0x8

    div-long v2, p1, v2

    .line 142
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getNumChannels()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 141
    iput-wide v0, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    .line 143
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-wide v2, p0, Lorg/justcodecs/dsd/DFFFormat;->filePosition:J

    invoke-interface {v0, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufPos:I

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->bufEnd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method seekDST(J)V
    .locals 7

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget-wide v2, v1, Lorg/justcodecs/dsd/ChunkFRTE;->start:J

    .line 195
    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget-wide v4, v1, Lorg/justcodecs/dsd/ChunkFRTE;->size:J

    add-long/2addr v2, v4

    .line 194
    invoke-interface {v0, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 224
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget v0, v0, Lorg/justcodecs/dsd/ChunkFRTE;->numFrames:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DFFFormat;->getSampleCount()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 201
    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v2, v2, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v2, v2, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v2, v2, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget-wide v2, v2, Lorg/justcodecs/dsd/ChunkFRTE;->start:J

    .line 202
    iget-object v4, p0, Lorg/justcodecs/dsd/DFFFormat;->frm:Lorg/justcodecs/dsd/ChunkFRM8;

    iget-object v4, v4, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;

    iget-object v4, v4, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    iget-object v4, v4, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    iget-wide v4, v4, Lorg/justcodecs/dsd/ChunkFRTE;->size:J

    add-long/2addr v2, v4

    .line 201
    invoke-interface {v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 209
    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v1

    .line 210
    instance-of v1, v1, Lorg/justcodecs/dsd/ChunkDSTC;

    if-eqz v1, :cond_1

    .line 211
    mul-int/lit8 v0, v0, 0x2

    .line 219
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_3

    .line 222
    iput v0, p0, Lorg/justcodecs/dsd/DFFFormat;->dstFrmNo:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 213
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v1

    .line 214
    instance-of v1, v1, Lorg/justcodecs/dsd/ChunkDSTC;

    if-eqz v1, :cond_2

    .line 215
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 217
    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 221
    :cond_3
    iget-object v2, p0, Lorg/justcodecs/dsd/DFFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-static {v2}, Lorg/justcodecs/dsd/BaseChunk;->jump(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

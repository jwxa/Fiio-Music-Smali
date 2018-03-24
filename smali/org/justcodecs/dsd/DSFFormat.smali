.class public Lorg/justcodecs/dsd/DSFFormat;
.super Lorg/justcodecs/dsd/DSDFormat;
.source "DSFFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/justcodecs/dsd/DSDFormat",
        "<[[B>;"
    }
.end annotation


# instance fields
.field protected dc:Lorg/justcodecs/dsd/DATAChunk;

.field protected fmt:Lorg/justcodecs/dsd/FMTChunk;

.field protected md:Lorg/justcodecs/dsd/MetadataChunk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/justcodecs/dsd/DSDFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoTrackInfo_trackCount()I
    .locals 1

    .prologue
    .line 114
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
    .line 126
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
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v0, v0, Lorg/justcodecs/dsd/FMTChunk;->channelNum:I

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleCount()J
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget-wide v0, v0, Lorg/justcodecs/dsd/FMTChunk;->sampleCount:J

    .line 43
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v0, v0, Lorg/justcodecs/dsd/FMTChunk;->sampleFreq:I

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic getSamples()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/justcodecs/dsd/DSFFormat;->getSamples()[[B

    move-result-object v0

    return-object v0
.end method

.method getSamples()[[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-object v0, v0, Lorg/justcodecs/dsd/DATAChunk;->data:[[B

    return-object v0
.end method

.method public init(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 6

    .prologue
    .line 15
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/DSDFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 16
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-static {v0}, Lorg/justcodecs/dsd/DSDChunk;->read(Lorg/justcodecs/dsd/DSDStream;)Lorg/justcodecs/dsd/DSDChunk;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-static {v1}, Lorg/justcodecs/dsd/FMTChunk;->read(Lorg/justcodecs/dsd/DSDStream;)Lorg/justcodecs/dsd/FMTChunk;

    move-result-object v1

    iput-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    .line 19
    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-static {v1}, Lorg/justcodecs/dsd/DATAChunk;->read(Lorg/justcodecs/dsd/DSDStream;)Lorg/justcodecs/dsd/DATAChunk;

    move-result-object v1

    iput-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    .line 20
    iget-wide v2, v0, Lorg/justcodecs/dsd/DSDChunk;->metadataOffs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 21
    new-instance v1, Lorg/justcodecs/dsd/MetadataChunk;

    iget-wide v2, v0, Lorg/justcodecs/dsd/DSDChunk;->metadataOffs:J

    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->metadataCharset:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/justcodecs/dsd/MetadataChunk;-><init>(JLjava/lang/String;)V

    iput-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->md:Lorg/justcodecs/dsd/MetadataChunk;

    .line 23
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->md:Lorg/justcodecs/dsd/MetadataChunk;

    invoke-virtual {v0, p1}, Lorg/justcodecs/dsd/MetadataChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 24
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->md:Lorg/justcodecs/dsd/MetadataChunk;

    iget-object v0, v0, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->attrs:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->md:Lorg/justcodecs/dsd/MetadataChunk;

    iget-object v1, v1, Lorg/justcodecs/dsd/MetadataChunk;->attrs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method initBuffers(I)V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v0, v0, Lorg/justcodecs/dsd/FMTChunk;->channelNum:I

    iget-object v2, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v2, v2, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    add-int/2addr v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, v1, Lorg/justcodecs/dsd/DATAChunk;->data:[[B

    .line 71
    return-void
.end method

.method isMSB()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v1, v1, Lorg/justcodecs/dsd/FMTChunk;->bitPerSample:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method readDataBlock()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    invoke-interface {v1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-wide v4, v1, Lorg/justcodecs/dsd/DATAChunk;->dataEnd:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 65
    :goto_0
    return v0

    .line 52
    :cond_0
    iget v1, p0, Lorg/justcodecs/dsd/DSFFormat;->bufPos:I

    if-gez v1, :cond_1

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lorg/justcodecs/dsd/DSFFormat;->bufPos:I

    .line 54
    :cond_1
    iget v1, p0, Lorg/justcodecs/dsd/DSFFormat;->bufEnd:I

    iget v2, p0, Lorg/justcodecs/dsd/DSFFormat;->bufPos:I

    sub-int/2addr v1, v2

    .line 55
    :goto_1
    iget-object v2, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v2, v2, Lorg/justcodecs/dsd/FMTChunk;->channelNum:I

    if-lt v0, v2, :cond_2

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DSFFormat;->bufPos:I

    .line 61
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v0, v0, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/justcodecs/dsd/DSFFormat;->bufEnd:I

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    if-lez v1, :cond_3

    .line 57
    iget-object v2, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-object v2, v2, Lorg/justcodecs/dsd/DATAChunk;->data:[[B

    aget-object v2, v2, v0

    iget v3, p0, Lorg/justcodecs/dsd/DSFFormat;->bufPos:I

    iget-object v4, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-object v4, v4, Lorg/justcodecs/dsd/DATAChunk;->data:[[B

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :cond_3
    iget-object v2, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-object v3, v3, Lorg/justcodecs/dsd/DATAChunk;->data:[[B

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v4, v4, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    invoke-interface {v2, v3, v1, v4}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO exception at reading samples"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method seek(J)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 95
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v1, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-wide v2, v1, Lorg/justcodecs/dsd/DATAChunk;->dataStart:J

    invoke-interface {v0, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V

    .line 104
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/justcodecs/dsd/DSFFormat;->bufPos:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/justcodecs/dsd/DSFFormat;->bufEnd:I

    .line 106
    return-void

    .line 97
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/justcodecs/dsd/DSFFormat;->getSampleCount()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v0, v0, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 100
    iget-object v2, p0, Lorg/justcodecs/dsd/DSFFormat;->dsdStream:Lorg/justcodecs/dsd/DSDStream;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSFFormat;->dc:Lorg/justcodecs/dsd/DATAChunk;

    iget-wide v4, v3, Lorg/justcodecs/dsd/DATAChunk;->dataStart:J

    iget-object v3, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v3, v3, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    int-to-long v6, v3

    mul-long/2addr v0, v6

    iget-object v3, p0, Lorg/justcodecs/dsd/DSFFormat;->fmt:Lorg/justcodecs/dsd/FMTChunk;

    iget v3, v3, Lorg/justcodecs/dsd/FMTChunk;->channelNum:I

    int-to-long v6, v3

    mul-long/2addr v0, v6

    add-long/2addr v0, v4

    invoke-interface {v2, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :cond_1
    :try_start_1
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to seek non existing sample "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

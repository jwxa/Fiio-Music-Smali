.class public Lorg/justcodecs/dsd/ChunkPROP;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkPROP.java"


# instance fields
.field bound:J

.field channels:I

.field comp:Ljava/lang/String;

.field dsd:Lorg/justcodecs/dsd/ChunkDSD;

.field dst:Lorg/justcodecs/dsd/ChunkDST;

.field sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/justcodecs/dsd/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 6

    .prologue
    .line 17
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 19
    :try_start_0
    sget-object v0, Lorg/justcodecs/dsd/ChunkPROP;->IDBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 20
    const-string v0, "SND "

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/justcodecs/dsd/ChunkPROP;->IDBuf:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "PROP chunk isn\'t SND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    if-nez v1, :cond_2

    .line 56
    throw v0

    .line 24
    :cond_0
    :try_start_1
    invoke-static {p1, p0}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkFS;

    if-eqz v1, :cond_3

    .line 26
    check-cast v0, Lorg/justcodecs/dsd/ChunkFS;

    iget v0, v0, Lorg/justcodecs/dsd/ChunkFS;->sampleRate:I

    iput v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->sampleRate:I

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    iget-object v2, p0, Lorg/justcodecs/dsd/ChunkPROP;->parent:Lorg/justcodecs/dsd/BaseChunk;

    iget-wide v2, v2, Lorg/justcodecs/dsd/BaseChunk;->start:J

    iget-object v4, p0, Lorg/justcodecs/dsd/ChunkPROP;->parent:Lorg/justcodecs/dsd/BaseChunk;

    iget-wide v4, v4, Lorg/justcodecs/dsd/BaseChunk;->size:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 61
    :cond_2
    :goto_1
    return-void

    .line 27
    :cond_3
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkCHNL;

    if-eqz v1, :cond_4

    .line 28
    check-cast v0, Lorg/justcodecs/dsd/ChunkCHNL;

    iget-short v0, v0, Lorg/justcodecs/dsd/ChunkCHNL;->numChannels:S

    iput v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->channels:I
    :try_end_1
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 29
    :cond_4
    :try_start_2
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkCMPR;

    if-eqz v1, :cond_5

    .line 30
    check-cast v0, Lorg/justcodecs/dsd/ChunkCMPR;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkCMPR;->compression:Ljava/lang/String;

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->comp:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_5
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkDITI;

    if-eqz v1, :cond_6

    .line 32
    invoke-virtual {p0}, Lorg/justcodecs/dsd/ChunkPROP;->getFRM8()Lorg/justcodecs/dsd/ChunkFRM8;

    move-result-object v1

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v2, "Title"

    check-cast v0, Lorg/justcodecs/dsd/ChunkDITI;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkDITI;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_6
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkDSD;

    if-eqz v1, :cond_7

    .line 34
    check-cast v0, Lorg/justcodecs/dsd/ChunkDSD;

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;
    :try_end_2
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    :try_start_3
    iget-object v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->dsd:Lorg/justcodecs/dsd/ChunkDSD;

    invoke-virtual {v0, p1}, Lorg/justcodecs/dsd/ChunkDSD;->skip(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_3
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 38
    :catch_2
    move-exception v0

    goto :goto_1

    .line 40
    :cond_7
    :try_start_4
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkDST;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lorg/justcodecs/dsd/ChunkDST;

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;
    :try_end_4
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 43
    :try_start_5
    iget-object v0, p0, Lorg/justcodecs/dsd/ChunkPROP;->dst:Lorg/justcodecs/dsd/ChunkDST;

    invoke-virtual {v0, p1}, Lorg/justcodecs/dsd/ChunkDST;->skip(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_5
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChunkPROP [sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/justcodecs/dsd/ChunkPROP;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/ChunkPROP;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", comp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkPROP;->comp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

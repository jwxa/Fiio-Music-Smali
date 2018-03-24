.class public Lorg/justcodecs/dsd/ChunkDIIN;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkDIIN.java"


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
    .line 10
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    .line 15
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkDITI;

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lorg/justcodecs/dsd/ChunkDIIN;->getFRM8()Lorg/justcodecs/dsd/ChunkFRM8;

    move-result-object v1

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v2, "Title"

    check-cast v0, Lorg/justcodecs/dsd/ChunkDITI;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkDITI;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    iget-object v2, p0, Lorg/justcodecs/dsd/ChunkDIIN;->parent:Lorg/justcodecs/dsd/BaseChunk;

    iget-wide v2, v2, Lorg/justcodecs/dsd/BaseChunk;->start:J

    iget-object v4, p0, Lorg/justcodecs/dsd/ChunkDIIN;->parent:Lorg/justcodecs/dsd/BaseChunk;

    iget-wide v4, v4, Lorg/justcodecs/dsd/BaseChunk;->size:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 24
    return-void

    .line 17
    :cond_2
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkDIAR;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lorg/justcodecs/dsd/ChunkDIIN;->getFRM8()Lorg/justcodecs/dsd/ChunkFRM8;

    move-result-object v1

    iget-object v1, v1, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    const-string v2, "Artist"

    check-cast v0, Lorg/justcodecs/dsd/ChunkDIAR;

    iget-object v0, v0, Lorg/justcodecs/dsd/ChunkDIAR;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

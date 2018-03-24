.class public Lorg/justcodecs/dsd/ChunkDSTF;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkDSTF.java"


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
    .locals 8

    .prologue
    const-wide/16 v4, 0x1

    const/4 v0, 0x0

    .line 11
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 13
    iget-wide v2, p0, Lorg/justcodecs/dsd/ChunkDSTF;->size:J

    and-long/2addr v2, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkDSTF;->data:[B

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/justcodecs/dsd/ChunkDSTF;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkDSTF;->data:[B

    array-length v1, v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 16
    :cond_1
    iget-wide v2, p0, Lorg/justcodecs/dsd/ChunkDSTF;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/justcodecs/dsd/ChunkDSTF;->data:[B

    .line 18
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkDSTF;->data:[B

    const/4 v2, 0x0

    iget-wide v4, p0, Lorg/justcodecs/dsd/ChunkDSTF;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    long-to-int v0, v4

    invoke-interface {p1, v1, v2, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

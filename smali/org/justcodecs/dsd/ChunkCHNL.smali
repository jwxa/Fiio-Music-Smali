.class public Lorg/justcodecs/dsd/ChunkCHNL;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkCHNL.java"


# instance fields
.field IDs:[Ljava/lang/String;

.field numChannels:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/justcodecs/dsd/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 16
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v1

    iput-short v1, p0, Lorg/justcodecs/dsd/ChunkCHNL;->numChannels:S

    .line 17
    iget-short v1, p0, Lorg/justcodecs/dsd/ChunkCHNL;->numChannels:S

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/justcodecs/dsd/ChunkCHNL;->IDs:[Ljava/lang/String;

    .line 18
    :goto_0
    iget-short v1, p0, Lorg/justcodecs/dsd/ChunkCHNL;->numChannels:S

    if-lt v0, v1, :cond_0

    .line 23
    return-void

    .line 19
    :cond_0
    sget-object v1, Lorg/justcodecs/dsd/ChunkCHNL;->IDBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 20
    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkCHNL;->IDs:[Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/justcodecs/dsd/ChunkCHNL;->IDBuf:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

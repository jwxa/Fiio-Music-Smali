.class public Lorg/justcodecs/dsd/ChunkCMPR;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkCMPR.java"


# instance fields
.field compression:Ljava/lang/String;

.field description:Ljava/lang/String;


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
    .locals 3

    .prologue
    .line 13
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 15
    :try_start_0
    sget-object v0, Lorg/justcodecs/dsd/ChunkCMPR;->IDBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 16
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/justcodecs/dsd/ChunkCMPR;->IDBuf:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkCMPR;->compression:Ljava/lang/String;

    .line 17
    sget-object v0, Lorg/justcodecs/dsd/ChunkCMPR;->IDBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 18
    sget-object v0, Lorg/justcodecs/dsd/ChunkCMPR;->IDBuf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 19
    new-array v1, v0, [B

    .line 20
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkCMPR;->description:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkCMPR;->skip(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-void

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

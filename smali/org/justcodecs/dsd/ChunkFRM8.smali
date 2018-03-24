.class public Lorg/justcodecs/dsd/ChunkFRM8;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkFRM8.java"


# instance fields
.field encoding:Ljava/lang/String;

.field metaAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field props:Lorg/justcodecs/dsd/ChunkPROP;


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
    .line 15
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 17
    :try_start_0
    sget-object v0, Lorg/justcodecs/dsd/ChunkFRM8;->IDBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 18
    const-string v0, "DSD "

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/justcodecs/dsd/ChunkFRM8;->IDBuf:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Frame chunk isn\'t DSD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 20
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkFRM8;->metaAttrs:Ljava/util/HashMap;

    .line 23
    :cond_1
    invoke-static {p1, p0}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkPROP;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lorg/justcodecs/dsd/ChunkPROP;

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkFRM8;->props:Lorg/justcodecs/dsd/ChunkPROP;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    return-void
.end method

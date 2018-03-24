.class public Lorg/justcodecs/dsd/ChunkFRTE;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkFRTE.java"


# instance fields
.field numFrames:I

.field rate:I


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
    .locals 3

    .prologue
    .line 14
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 16
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/ChunkFRTE;->numFrames:I

    .line 17
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/ChunkFRTE;->rate:I
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

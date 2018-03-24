.class public abstract Lorg/justcodecs/dsd/TextChunk;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "TextChunk.java"


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
    .line 11
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 13
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    .line 14
    new-array v1, v0, [B

    .line 15
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/justcodecs/dsd/TextChunk;->setText(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/TextChunk;->skip(Lorg/justcodecs/dsd/DSDStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-void

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, "IO"

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method abstract setText(Ljava/lang/String;)V
.end method

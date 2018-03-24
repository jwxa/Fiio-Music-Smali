.class public Lorg/justcodecs/dsd/ChunkDSTC;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkDSTC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/justcodecs/dsd/BaseChunk;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 10
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkDSTC;->skip(Lorg/justcodecs/dsd/DSDStream;)V

    .line 11
    return-void
.end method

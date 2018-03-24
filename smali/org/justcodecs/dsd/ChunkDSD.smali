.class public Lorg/justcodecs/dsd/ChunkDSD;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkDSD.java"


# instance fields
.field dataEnd:J


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
    .locals 4

    .prologue
    .line 10
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 11
    iget-wide v0, p0, Lorg/justcodecs/dsd/ChunkDSD;->start:J

    iget-wide v2, p0, Lorg/justcodecs/dsd/ChunkDSD;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/justcodecs/dsd/ChunkDSD;->dataEnd:J

    .line 13
    return-void
.end method

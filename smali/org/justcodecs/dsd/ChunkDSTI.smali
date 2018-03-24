.class public Lorg/justcodecs/dsd/ChunkDSTI;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkDSTI.java"


# instance fields
.field entries:[Lorg/justcodecs/dsd/a;


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
    .line 11
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 13
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkDSTI;->skip(Lorg/justcodecs/dsd/DSDStream;)V

    .line 14
    return-void
.end method

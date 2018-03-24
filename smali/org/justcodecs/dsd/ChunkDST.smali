.class public Lorg/justcodecs/dsd/ChunkDST;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkDST.java"


# instance fields
.field info:Lorg/justcodecs/dsd/ChunkFRTE;


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
    .locals 1

    .prologue
    .line 9
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 10
    invoke-static {p1, p0}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    check-cast v0, Lorg/justcodecs/dsd/ChunkFRTE;

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkDST;->info:Lorg/justcodecs/dsd/ChunkFRTE;

    .line 11
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkDST;->skip(Lorg/justcodecs/dsd/DSDStream;)V

    .line 12
    return-void
.end method

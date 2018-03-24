.class public Lorg/justcodecs/dsd/ChunkUNK;
.super Lorg/justcodecs/dsd/BaseChunk;
.source "ChunkUNK.java"


# instance fields
.field IDS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/justcodecs/dsd/BaseChunk;-><init>()V

    .line 9
    sget-object v0, Lorg/justcodecs/dsd/ChunkUNK;->IDBuf:[B

    invoke-static {v0}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/ChunkUNK;->ID:I

    .line 10
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/justcodecs/dsd/ChunkUNK;->IDBuf:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkUNK;->IDS:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 16
    invoke-virtual {p0, p1}, Lorg/justcodecs/dsd/ChunkUNK;->skip(Lorg/justcodecs/dsd/DSDStream;)V

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 21
    const-string v0, "ChunkUNK 0%x(%s) of %d/0%x"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/justcodecs/dsd/ChunkUNK;->ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/justcodecs/dsd/ChunkUNK;->IDS:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lorg/justcodecs/dsd/ChunkUNK;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lorg/justcodecs/dsd/ChunkUNK;->start:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

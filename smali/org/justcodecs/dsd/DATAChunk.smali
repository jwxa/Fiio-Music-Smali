.class public Lorg/justcodecs/dsd/DATAChunk;
.super Ljava/lang/Object;
.source "DATAChunk.java"


# instance fields
.field public chunkSize:J

.field data:[[B

.field dataEnd:J

.field dataStart:J

.field public signature:I


# direct methods
.method protected constructor <init>(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v0

    iput v0, p0, Lorg/justcodecs/dsd/DATAChunk;->signature:I

    .line 16
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    iget v1, p0, Lorg/justcodecs/dsd/DATAChunk;->signature:I

    if-eq v0, v1, :cond_0

    .line 17
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Invalid signature for the chunk \'data\'"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "I/O exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/DATAChunk;->chunkSize:J

    .line 19
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/DATAChunk;->dataStart:J

    .line 20
    iget-wide v0, p0, Lorg/justcodecs/dsd/DATAChunk;->dataStart:J

    iget-wide v2, p0, Lorg/justcodecs/dsd/DATAChunk;->chunkSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0xc

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/justcodecs/dsd/DATAChunk;->dataEnd:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    return-void

    .line 9
    nop

    :array_0
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method public static read(Lorg/justcodecs/dsd/DSDStream;)Lorg/justcodecs/dsd/DATAChunk;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/justcodecs/dsd/DATAChunk;

    invoke-direct {v0, p0}, Lorg/justcodecs/dsd/DATAChunk;-><init>(Lorg/justcodecs/dsd/DSDStream;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DATAChunk [signature="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/justcodecs/dsd/DATAChunk;->signature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/justcodecs/dsd/DATAChunk;->chunkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/DATAChunk;->data:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

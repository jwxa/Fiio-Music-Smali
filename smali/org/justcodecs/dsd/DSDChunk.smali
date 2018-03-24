.class public Lorg/justcodecs/dsd/DSDChunk;
.super Ljava/lang/Object;
.source "DSDChunk.java"


# static fields
.field public static signature:I


# instance fields
.field protected buf:[B

.field public chunkSize:J

.field public metadataOffs:J

.field public size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v0

    sput v0, Lorg/justcodecs/dsd/DSDChunk;->signature:I

    return-void

    nop

    :array_0
    .array-data 1
        0x44t
        0x53t
        0x44t
        0x20t
    .end array-data
.end method

.method protected constructor <init>(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1c

    const/4 v0, 0x4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide v4, p0, Lorg/justcodecs/dsd/DSDChunk;->chunkSize:J

    .line 33
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/justcodecs/dsd/DSDChunk;->buf:[B

    .line 10
    :try_start_0
    iget-object v0, p0, Lorg/justcodecs/dsd/DSDChunk;->buf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 11
    sget v0, Lorg/justcodecs/dsd/DSDChunk;->signature:I

    iget-object v1, p0, Lorg/justcodecs/dsd/DSDChunk;->buf:[B

    invoke-static {v1}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 12
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid signature for the block "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/justcodecs/dsd/DSDChunk;->buf:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
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

    .line 13
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->chunkSize:J

    .line 14
    iget-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->chunkSize:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of the chunk "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/justcodecs/dsd/DSDChunk;->chunkSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mismatches specification 28"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->size:J

    .line 18
    iget-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->size:J

    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of the DSD file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mismatched to claimed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    iget-wide v2, p0, Lorg/justcodecs/dsd/DSDChunk;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->metadataOffs:J

    .line 22
    iget-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->metadataOffs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lorg/justcodecs/dsd/DSDChunk;->metadataOffs:J

    iget-wide v2, p0, Lorg/justcodecs/dsd/DSDChunk;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 23
    :cond_3
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong metadata offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/justcodecs/dsd/DSDChunk;->metadataOffs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    :cond_4
    return-void
.end method

.method public static read(Lorg/justcodecs/dsd/DSDStream;)Lorg/justcodecs/dsd/DSDChunk;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/justcodecs/dsd/DSDChunk;

    invoke-direct {v0, p0}, Lorg/justcodecs/dsd/DSDChunk;-><init>(Lorg/justcodecs/dsd/DSDStream;)V

    return-object v0
.end method

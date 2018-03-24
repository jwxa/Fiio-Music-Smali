.class public Lorg/justcodecs/dsd/FMTChunk;
.super Ljava/lang/Object;
.source "FMTChunk.java"


# instance fields
.field public ID:I

.field public bitPerSample:I

.field public blockSize:I

.field public channelNum:I

.field public channelType:I

.field public chunkSize:J

.field public sampleCount:J

.field public sampleFreq:I

.field public signature:I

.field public version:I


# direct methods
.method protected constructor <init>(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x34

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x4

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Lorg/justcodecs/dsd/Utils;->bytesToInt([B)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->signature:I

    .line 10
    iput-wide v4, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 21
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iget v2, p0, Lorg/justcodecs/dsd/FMTChunk;->signature:I

    if-eq v1, v2, :cond_0

    .line 22
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v1, "Invalid signature for the chunk \'fmt \'"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
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

    .line 23
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 24
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    const-wide/16 v4, 0x100

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 25
    :cond_1
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size of the chunk fmt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " looks out of spec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 26
    :cond_2
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    const-wide/16 v4, 0xc

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 27
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->version:I

    .line 28
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 29
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->ID:I

    .line 30
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 31
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->channelType:I

    .line 32
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 33
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->channelNum:I

    .line 34
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 35
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->sampleFreq:I

    .line 36
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 37
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->bitPerSample:I

    .line 38
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 39
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->sampleCount:J

    .line 40
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 41
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v1

    iput v1, p0, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    .line 42
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 43
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    const-wide/16 v4, 0x4

    rem-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    .line 44
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reserve isn\'t matching 4 bytes boundary "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 45
    :cond_3
    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    long-to-int v1, v2

    :goto_0
    if-lt v0, v1, :cond_4

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    .line 48
    return-void

    .line 46
    :cond_4
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    nop

    :array_0
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data
.end method

.method public static read(Lorg/justcodecs/dsd/DSDStream;)Lorg/justcodecs/dsd/FMTChunk;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/justcodecs/dsd/FMTChunk;

    invoke-direct {v0, p0}, Lorg/justcodecs/dsd/FMTChunk;-><init>(Lorg/justcodecs/dsd/DSDStream;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FMTChunk [signature="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->signature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chunkRemained="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->chunkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    const-string v1, ", channelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->channelType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->channelNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->sampleFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string v1, ", bitPerSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->bitPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/justcodecs/dsd/FMTChunk;->sampleCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/justcodecs/dsd/FMTChunk;->blockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

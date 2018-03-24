.class public Lorg/justcodecs/dsd/BaseChunk;
.super Ljava/lang/Object;
.source "BaseChunk.java"


# static fields
.field static IDBuf:[B


# instance fields
.field ID:I

.field data:[B

.field parent:Lorg/justcodecs/dsd/BaseChunk;

.field size:J

.field start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lorg/justcodecs/dsd/BaseChunk;->IDBuf:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/justcodecs/dsd/DSDStream;Ljava/lang/String;)Lorg/justcodecs/dsd/BaseChunk;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;Ljava/lang/String;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;)Lorg/justcodecs/dsd/BaseChunk;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/justcodecs/dsd/BaseChunk;->create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;Ljava/lang/String;)Lorg/justcodecs/dsd/BaseChunk;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/justcodecs/dsd/DSDStream;Lorg/justcodecs/dsd/BaseChunk;Ljava/lang/String;)Lorg/justcodecs/dsd/BaseChunk;
    .locals 6

    .prologue
    .line 26
    :try_start_0
    sget-object v1, Lorg/justcodecs/dsd/BaseChunk;->IDBuf:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p0, v1, v2, v3}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lorg/justcodecs/dsd/BaseChunk;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".Chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/justcodecs/dsd/BaseChunk;->IDBuf:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/justcodecs/dsd/BaseChunk;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v1

    .line 35
    :goto_0
    :try_start_2
    iput-object p1, v2, Lorg/justcodecs/dsd/BaseChunk;->parent:Lorg/justcodecs/dsd/BaseChunk;

    .line 36
    instance-of v1, v2, Lorg/justcodecs/dsd/ChunkFRM8;

    if-eqz v1, :cond_0

    .line 37
    move-object v0, v2

    check-cast v0, Lorg/justcodecs/dsd/ChunkFRM8;

    move-object v1, v0

    iput-object p2, v1, Lorg/justcodecs/dsd/ChunkFRM8;->encoding:Ljava/lang/String;

    .line 38
    :cond_0
    invoke-virtual {v2, p0}, Lorg/justcodecs/dsd/BaseChunk;->read(Lorg/justcodecs/dsd/DSDStream;)V

    .line 39
    return-object v2

    .line 33
    :catch_0
    move-exception v1

    new-instance v2, Lorg/justcodecs/dsd/ChunkUNK;

    invoke-direct {v2}, Lorg/justcodecs/dsd/ChunkUNK;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    .line 41
    new-instance v2, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v3, "IO"

    invoke-direct {v2, v3, v1}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 42
    :catch_2
    move-exception v1

    .line 43
    new-instance v2, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported chunk:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lorg/justcodecs/dsd/BaseChunk;->IDBuf:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static jump(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 49
    :try_start_0
    sget-object v0, Lorg/justcodecs/dsd/BaseChunk;->IDBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v0, v1, v2}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 50
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v0

    .line 51
    invoke-interface {p0}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v2

    .line 53
    and-long v4, v0, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 54
    add-long/2addr v0, v6

    .line 55
    :cond_0
    add-long/2addr v0, v2

    invoke-interface {p0, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getFRM8()Lorg/justcodecs/dsd/ChunkFRM8;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .line 88
    :goto_0
    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 89
    :cond_0
    instance-of v1, v0, Lorg/justcodecs/dsd/ChunkFRM8;

    if-eqz v1, :cond_1

    .line 90
    check-cast v0, Lorg/justcodecs/dsd/ChunkFRM8;

    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, v0, Lorg/justcodecs/dsd/BaseChunk;->parent:Lorg/justcodecs/dsd/BaseChunk;

    goto :goto_0
.end method

.method read(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Lorg/justcodecs/dsd/DSDStream;->readLong(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/BaseChunk;->size:J

    .line 64
    invoke-interface {p1}, Lorg/justcodecs/dsd/DSDStream;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/justcodecs/dsd/BaseChunk;->start:J

    .line 66
    iget-wide v0, p0, Lorg/justcodecs/dsd/BaseChunk;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 67
    new-instance v0, Lorg/justcodecs/dsd/Decoder$DecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/justcodecs/dsd/BaseChunk;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/justcodecs/dsd/BaseChunk;->IDBuf:[B

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

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_0
    return-void
.end method

.method skip(Lorg/justcodecs/dsd/DSDStream;)V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    iget-wide v0, p0, Lorg/justcodecs/dsd/BaseChunk;->start:J

    iget-wide v2, p0, Lorg/justcodecs/dsd/BaseChunk;->size:J

    add-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lorg/justcodecs/dsd/DSDStream;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lorg/justcodecs/dsd/Decoder$DecodeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/justcodecs/dsd/BaseChunk;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/justcodecs/dsd/BaseChunk;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

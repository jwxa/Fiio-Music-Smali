.class public Lorg/justcodecs/dsd/ChunkCOMT$Comment;
.super Ljava/lang/Object;
.source "ChunkCOMT.java"


# instance fields
.field cmtRef:S

.field cmtType:S

.field commentText:Ljava/lang/String;

.field stamp:Ljava/util/Date;

.field timeStampDay:S

.field timeStampHour:S

.field timeStampMinutes:S

.field timeStampMonth:S

.field timeStampYear:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lorg/justcodecs/dsd/DSDStream;Ljava/util/Calendar;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    invoke-interface {p1, v7}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampYear:S

    .line 31
    sget-object v0, Lorg/justcodecs/dsd/ChunkCOMT;->IDBuf:[B

    const/4 v1, 0x4

    invoke-interface {p1, v0, v6, v1}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 32
    sget-object v0, Lorg/justcodecs/dsd/ChunkCOMT;->IDBuf:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampMonth:S

    .line 33
    sget-object v0, Lorg/justcodecs/dsd/ChunkCOMT;->IDBuf:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampDay:S

    .line 34
    sget-object v0, Lorg/justcodecs/dsd/ChunkCOMT;->IDBuf:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampHour:S

    .line 35
    sget-object v0, Lorg/justcodecs/dsd/ChunkCOMT;->IDBuf:[B

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampMinutes:S

    .line 36
    iget-short v1, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampYear:S

    iget-short v2, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampMonth:S

    iget-short v3, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampDay:S

    iget-short v4, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampHour:S

    iget-short v5, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->timeStampMinutes:S

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 37
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->stamp:Ljava/util/Date;

    .line 38
    invoke-interface {p1, v7}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->cmtType:S

    .line 39
    invoke-interface {p1, v7}, Lorg/justcodecs/dsd/DSDStream;->readShort(Z)S

    move-result v0

    iput-short v0, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->cmtRef:S

    .line 40
    invoke-interface {p1, v7}, Lorg/justcodecs/dsd/DSDStream;->readInt(Z)I

    move-result v0

    .line 43
    new-array v1, v0, [B

    .line 44
    invoke-interface {p1, v1, v6, v0}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 45
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->commentText:Ljava/lang/String;

    .line 46
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v7, :cond_0

    .line 47
    sget-object v0, Lorg/justcodecs/dsd/ChunkCOMT;->IDBuf:[B

    invoke-interface {p1, v0, v6, v7}, Lorg/justcodecs/dsd/DSDStream;->readFully([BII)V

    .line 48
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Comment [stamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->stamp:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmtType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->cmtType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cmtRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->cmtRef:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lorg/justcodecs/dsd/ChunkCOMT$Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

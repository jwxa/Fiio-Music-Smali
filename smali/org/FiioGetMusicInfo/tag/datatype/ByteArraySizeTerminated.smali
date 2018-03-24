.class public Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "ByteArraySizeTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    .line 59
    :cond_0
    return v0
.end method

.method public readByteArray([BI)V
    .locals 3

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Byte array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-gez p2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to byte array is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    array-length v0, p1

    if-lt p2, v0, :cond_2

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->value:Ljava/lang/Object;

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 94
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->value:Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->value:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->getSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Writing byte array"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;->value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

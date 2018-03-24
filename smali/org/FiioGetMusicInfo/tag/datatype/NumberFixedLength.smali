.class public Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "NumberFixedLength.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 52
    if-gez p3, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length is less than zero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput p3, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 63
    iget v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 106
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    if-nez v0, :cond_0

    move v0, v1

    .line 111
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 110
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    .line 111
    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    iget v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    return v0
.end method

.method public readByteArray([BI)V
    .locals 6

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Byte array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_2

    .line 130
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

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

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 135
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset plus size to byte array is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + arr.length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    const-wide/16 v0, 0x0

    move-wide v2, v0

    move v0, p2

    .line 140
    :goto_0
    iget v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    add-int/2addr v1, p2

    if-lt v0, v1, :cond_4

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read NumberFixedlength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 147
    return-void

    .line 142
    :cond_4
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    .line 143
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 74
    if-lez p1, :cond_0

    .line 76
    iput p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    .line 78
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 92
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value type for NumberFixedLength:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 157
    const-string v0, ""

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeByteArray()[B
    .locals 6

    .prologue
    .line 173
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    new-array v1, v0, [B

    .line 174
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->value:Ljava/lang/Object;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v2

    .line 179
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    .line 185
    :cond_0
    return-object v1

    .line 181
    :cond_1
    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 182
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

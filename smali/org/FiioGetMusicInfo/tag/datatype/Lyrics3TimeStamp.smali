.class public Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "Lyrics3TimeStamp.java"


# instance fields
.field private minute:J

.field private second:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 36
    iput-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 41
    iput-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 36
    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 41
    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 36
    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 41
    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 70
    iget-wide v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 71
    iget-wide v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 130
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    if-nez v0, :cond_0

    move v0, v1

    .line 142
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 135
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    .line 137
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    iget-wide v4, v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    .line 139
    goto :goto_0

    .line 142
    :cond_1
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    iget-wide v4, v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getMinute()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    return-wide v0
.end method

.method public getSecond()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x7

    return v0
.end method

.method public readByteArray([BI)V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;I)V

    .line 232
    return-void
.end method

.method public readString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 154
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to timeStamp is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeStamp.length()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 168
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 169
    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_3
    iput-wide v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 174
    iput-wide v4, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    goto :goto_0
.end method

.method public setMinute(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 77
    return-void
.end method

.method public setSecond(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 90
    return-void
.end method

.method public setTimeStamp(JB)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3c

    .line 119
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 120
    div-long v2, v0, v4

    iput-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    .line 121
    rem-long/2addr v0, v4

    iput-wide v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    const/16 v4, 0x30

    .line 192
    const-string v0, "["

    .line 194
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    cmp-long v1, v2, v6

    if-gez v1, :cond_2

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    return-object v0

    .line 200
    :cond_0
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_1

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->minute:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_2
    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->second:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

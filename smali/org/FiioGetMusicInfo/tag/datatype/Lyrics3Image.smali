.class public Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "Lyrics3Image.java"


# instance fields
.field private description:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    .line 63
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 138
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    if-nez v0, :cond_0

    move v0, v1

    .line 170
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 143
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    .line 145
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 147
    goto :goto_0

    .line 150
    :cond_1
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    iget-object v3, v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 152
    goto :goto_0

    .line 155
    :cond_2
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    if-nez v2, :cond_3

    .line 157
    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    if-eqz v0, :cond_4

    move v0, v1

    .line 159
    goto :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v2, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 166
    goto :goto_0

    .line 170
    :cond_4
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 108
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_0
    return v0
.end method

.method public getTimeStamp()Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    return-object v0
.end method

.method public readByteArray([BI)V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->readString(Ljava/lang/String;I)V

    .line 266
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to image string is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", string.length()"

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

    .line 191
    :cond_2
    if-eqz p1, :cond_3

    .line 196
    const-string v0, "||"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 197
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 199
    add-int/lit8 v0, v0, 0x2

    .line 200
    const-string v1, "||"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 201
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 203
    add-int/lit8 v0, v1, 0x2

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 208
    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    const-string v2, "Time Stamp"

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    .line 209
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->readString(Ljava/lang/String;)V

    .line 212
    :cond_3
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTimeStamp(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filename = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", timestamp = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->writeString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 239
    const-string v0, "||"

    .line 246
    :goto_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "||"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    if-eqz v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->time:Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_0
    return-object v0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->filename:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

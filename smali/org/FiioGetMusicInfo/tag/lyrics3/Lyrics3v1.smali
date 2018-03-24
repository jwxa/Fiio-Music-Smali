.class public Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;
.source "Lyrics3v1.java"


# instance fields
.field private lyric:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_1

    .line 63
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_2

    .line 69
    check-cast p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    .line 77
    :goto_0
    const-string v0, "LYR"

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    .line 78
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->getLyric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 80
    :cond_1
    return-void

    .line 73
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    if-nez v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 154
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    .line 156
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "Lyrics3v1.00"

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x9

    return v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 139
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method iterator() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 192
    const/16 v0, 0x1400

    new-array v0, v0, [B

    .line 195
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    const-string v1, "ID3v1 tag not found"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 201
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 203
    const/4 v0, 0x0

    const-string v2, "LYRICSEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x9

    const/16 v6, 0x9

    const/4 v2, 0x0

    .line 213
    const/16 v0, 0x1400

    new-array v3, v0, [B

    .line 219
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x80

    sub-long/2addr v0, v4

    sub-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 220
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 221
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v6}, Ljava/lang/String;-><init>([BII)V

    .line 223
    const-string v1, "LYRICSEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 246
    :goto_0
    const-wide/16 v4, 0x1400

    sub-long/2addr v0, v4

    .line 247
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 248
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 249
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 252
    const-string v3, "LYRICSBEGIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 254
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v0, v2

    .line 261
    :goto_1
    return v0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 232
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 233
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v6}, Ljava/lang/String;-><init>([BII)V

    .line 235
    const-string v1, "LYRICSEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 241
    goto :goto_1

    .line 259
    :cond_2
    int-to-long v2, v3

    add-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 261
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x13ec

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->delete(Ljava/io/RandomAccessFile;)V

    .line 288
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 290
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x9

    new-array v2, v0, [B

    .line 292
    const-string v3, "LYRICSBEGIN"

    move v0, v1

    .line 294
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 299
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 301
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    const/16 v4, 0x13ec

    invoke-static {v0, v4}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 303
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 308
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    .line 310
    const-string v4, "LYRICSEND"

    move v0, v1

    .line 312
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 317
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    .line 319
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 321
    return-void

    .line 296
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    add-int v5, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_2
    add-int v5, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

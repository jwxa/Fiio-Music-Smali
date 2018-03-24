.class public Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyLYR.java"


# instance fields
.field private lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->read(Ljava/nio/ByteBuffer;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->addLyric(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;)V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 65
    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    .line 63
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    new-instance v3, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    invoke-direct {v3, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 362
    sget-object v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 363
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 367
    :goto_0
    if-gez v0, :cond_1

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    const-string v2, "Lyric Line"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 381
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    const-string v3, "Lyric Line"

    invoke-direct {v2, v3, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 371
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 374
    sget-object v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private writeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 392
    const-string v0, ""

    .line 394
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    return-object v1

    .line 394
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 396
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->writeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addLyric(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;)V
    .locals 8

    .prologue
    .line 182
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 188
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 190
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;

    .line 193
    new-instance v3, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;

    invoke-direct {v3, v0}, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;)V

    .line 194
    new-instance v4, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;

    const-string v0, "Time Stamp"

    invoke-direct {v4, v0, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 195
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySYLT;->getTimeStampFormat()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v4, v6, v7, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;->setTimeStamp(JB)V

    .line 197
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    .line 200
    invoke-virtual {v0, v4}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->addTimeStamp(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    const-string v5, "Lyric Line"

    invoke-direct {v0, v5, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 205
    invoke-virtual {v0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->setLyric(Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;)V

    .line 206
    invoke-virtual {v0, v4}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->setTimeStamp(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3TimeStamp;)V

    .line 207
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/datatype/ID3v2LyricLine;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addLyric(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    const-string v1, "Lyric Line"

    invoke-direct {v0, v1, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 220
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->setLyric(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 230
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    if-nez v0, :cond_0

    move v0, v1

    .line 237
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 235
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    .line 237
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->equals(Ljava/lang/Object;)Z

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
    .line 114
    const-string v0, "LYR"

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return v1

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 143
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    .line 144
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public hasTimeStamp()Z
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    return v1

    .line 248
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 250
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 158
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    if-nez v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 163
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    .line 165
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Line;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 276
    new-array v0, v2, [B

    .line 279
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 281
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    if-nez v0, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    const-string v1, "Lyircs3v2 Field has size of zero."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    new-array v0, v0, [B

    .line 291
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 292
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 293
    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->readString(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    return-object v0

    .line 303
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 318
    new-array v2, v8, [B

    .line 322
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->getSize()I

    move-result v3

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 325
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    if-lt v0, v5, :cond_1

    .line 330
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    add-int/lit8 v5, v0, 0x0

    move v0, v1

    .line 332
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_2

    .line 337
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 338
    invoke-virtual {p1, v2, v1, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 340
    if-lez v3, :cond_0

    .line 342
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->writeString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    .line 345
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 350
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 352
    :cond_0
    return-void

    .line 327
    :cond_1
    const/16 v5, 0x30

    aput-byte v5, v2, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_2
    add-int v6, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

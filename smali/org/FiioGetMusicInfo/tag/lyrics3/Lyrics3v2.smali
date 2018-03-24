.class public Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;
.source "Lyrics3v2.java"


# instance fields
.field private fieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 131
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->read(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V
    .locals 4

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 80
    if-eqz p1, :cond_1

    .line 83
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    if-eqz v0, :cond_2

    .line 89
    check-cast p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;

    .line 91
    new-instance v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 92
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    return-void

    .line 98
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTag;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Tag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :try_start_0
    new-instance v2, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V

    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;)V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 58
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 65
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    new-instance v3, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    iget-object v1, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v3, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V

    .line 68
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private seekSize(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 527
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 200
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    if-nez v0, :cond_0

    move v0, v1

    .line 207
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 205
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;

    .line 207
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

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

.method public getField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "Lyrics3v2.00"

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 183
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    add-int/lit8 v0, v1, 0xb

    return v0

    .line 185
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    .line 186
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->seekSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 257
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->seek(Ljava/nio/ByteBuffer;)Z

    .line 258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 260
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    .line 265
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v0, -0xb

    if-lt v1, v2, :cond_1

    .line 277
    return-void

    .line 253
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;

    const-string v1, "Lyrics3v2.00 Tag Not Found"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    :try_start_0
    new-instance v1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    invoke-direct {v1, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;-><init>(Ljava/nio/ByteBuffer;)V

    .line 270
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->setField(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V
    :try_end_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x9

    const/4 v8, 0x6

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v2, 0x0

    .line 294
    new-array v3, v7, [B

    .line 301
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x80

    sub-long/2addr v0, v4

    sub-long/2addr v0, v10

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 302
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 303
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v6}, Ljava/lang/String;-><init>([BII)V

    .line 305
    const-string v1, "LYRICS200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 328
    :goto_0
    const-wide/16 v4, 0xf

    sub-long/2addr v0, v4

    .line 329
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 330
    invoke-virtual {p1, v3, v2, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 332
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v2, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 335
    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 336
    invoke-virtual {p1, v3, v2, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 337
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v7}, Ljava/lang/String;-><init>([BII)V

    .line 339
    const-string v1, "LYRICSBEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    return v0

    .line 313
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sub-long/2addr v0, v10

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 314
    invoke-virtual {p1, v3, v2, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 315
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v6}, Ljava/lang/String;-><init>([BII)V

    .line 317
    const-string v1, "LYRICS200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 323
    goto :goto_1
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 351
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    return-object v1

    .line 353
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public updateField(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 367
    const-string v0, "IND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    const-string v1, "LYR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 370
    const/4 v0, 0x0

    .line 372
    if-eqz v1, :cond_0

    .line 374
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    const-string v2, "LYR"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    .line 376
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;

    .line 377
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyLYR;->hasTimeStamp()Z

    move-result v0

    .line 380
    :cond_0
    new-instance v2, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    new-instance v3, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIND;

    invoke-direct {v3, v1, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIND;-><init>(ZZ)V

    invoke-direct {v2, v3}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 381
    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->setField(Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;)V

    .line 383
    :cond_1
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 391
    const/16 v0, 0xf

    new-array v2, v0, [B

    .line 401
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v1Tag;-><init>()V

    .line 403
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->delete(Ljava/io/RandomAccessFile;)V

    .line 406
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 408
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 410
    const-string v3, "LYRICSBEGIN"

    move v0, v1

    .line 412
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 417
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 420
    const-string v0, "IND"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->updateField(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    const-string v3, "IND"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    .line 422
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    .line 424
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 426
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 441
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2;->getSize()I

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 450
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6

    if-lt v0, v4, :cond_3

    .line 455
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x6

    add-int/lit8 v4, v0, 0x0

    move v0, v1

    .line 457
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 462
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v3, v4, v0

    .line 464
    const-string v4, "LYRICS200"

    move v0, v1

    .line 466
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_5

    .line 471
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    .line 473
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 475
    return-void

    .line 414
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;

    .line 430
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    move-result v7

    .line 433
    const-string v8, "IND"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v7, :cond_0

    .line 435
    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 452
    :cond_3
    const/16 v4, 0x30

    aput-byte v4, v2, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 459
    :cond_4
    add-int v5, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 468
    :cond_5
    add-int v5, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

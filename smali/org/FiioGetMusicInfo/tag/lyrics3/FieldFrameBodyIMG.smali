.class public Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyIMG.java"


# instance fields
.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->readString(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->read(Ljava/nio/ByteBuffer;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 60
    return-void

    .line 57
    :cond_0
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    .line 58
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    new-instance v3, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    invoke-direct {v3, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    sget-object v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 287
    :goto_0
    if-gez v0, :cond_1

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 299
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    const-string v2, "Image"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 301
    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->setFilename(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v2, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    const-string v3, "Image"

    invoke-direct {v2, v3, p0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 291
    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->setFilename(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v1, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 294
    sget-object v0, Lorg/FiioGetMusicInfo/tag/lyrics3/Lyrics3v2Fields;->CRLF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private writeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 311
    const-string v0, ""

    .line 314
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 325
    :cond_0
    return-object v1

    .line 314
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 316
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->writeString()Ljava/lang/String;

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
.method public addImage(Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 172
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;

    if-nez v0, :cond_0

    move v0, v1

    .line 179
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 177
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;

    .line 179
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

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
    .line 98
    const-string v0, "IMG"

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    add-int/lit8 v0, v1, -0x2

    return v0

    .line 109
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;

    .line 112
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 124
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;

    if-nez v0, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 129
    check-cast v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    .line 131
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 131
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 133
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/datatype/Lyrics3Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 196
    new-array v0, v2, [B

    .line 199
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 201
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    if-nez v0, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isLyrics3KeepEmptyFieldIfRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v0, Lorg/FiioGetMusicInfo/tag/InvalidTagException;

    const-string v1, "Lyircs3v2 Field has size of zero."

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    new-array v0, v0, [B

    .line 211
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 212
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 213
    invoke-direct {p0, v1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->readString(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->readString(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->images:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    return-object v0

    .line 223
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 238
    new-array v2, v8, [B

    .line 242
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->getSize()I

    move-result v3

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 245
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x5

    if-lt v0, v5, :cond_1

    .line 250
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    add-int/lit8 v5, v0, 0x0

    move v0, v1

    .line 252
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_2

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 259
    invoke-virtual {p1, v2, v1, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 261
    if-lez v3, :cond_0

    .line 263
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyIMG;->writeString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    .line 266
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 271
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 273
    :cond_0
    return-void

    .line 247
    :cond_1
    const/16 v5, 0x30

    aput-byte v5, v2, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_2
    add-int v6, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

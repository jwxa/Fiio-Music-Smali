.class public Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;
.super Ljava/lang/Object;
.source "AiffTag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/Tag;


# instance fields
.field private id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

.field private isExistingId3Tag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag:Z

    .line 42
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 43
    return-void
.end method


# virtual methods
.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 118
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 65
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V

    .line 232
    return-void
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public deleteArtworkField()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->deleteField(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    .line 181
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public getID3Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getSizeOfID3TagIncludingChunkHeader()J
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const-wide/16 v0, 0x0

    .line 315
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getSizeOfID3TagOnly()J
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-wide/16 v0, 0x0

    .line 303
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getStartLocationInFileOfId3Chunk()J
    .locals 4

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const-wide/16 v0, 0x0

    .line 329
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getStartLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCommonFields()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->hasCommonFields()Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExistingId3Tag()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag:Z

    return v0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result v0

    return v0
.end method

.method public setExistingId3Tag(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->isExistingId3Tag:Z

    .line 32
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 111
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 128
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V

    .line 226
    return-void
.end method

.method public setID3Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/aiff/AiffTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tag:empty"

    goto :goto_0
.end method

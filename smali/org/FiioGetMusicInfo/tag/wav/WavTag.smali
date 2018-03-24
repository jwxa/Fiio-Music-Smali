.class public Lorg/FiioGetMusicInfo/tag/wav/WavTag;
.super Ljava/lang/Object;
.source "WavTag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/Tag;


# static fields
.field private static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavOptions:[I


# instance fields
.field private id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

.field private infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

.field private isExistingId3Tag:Z

.field private isExistingInfoTag:Z

.field private wavOptions:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;


# direct methods
.method static synthetic $SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavOptions()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavOptions:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->values()[Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_ID3_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_ID3_UNLESS_ONLY_INFO:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_INFO_ONLY:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->READ_INFO_UNLESS_ONLY_ID3:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavOptions:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/wav/WavOptions;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag:Z

    .line 43
    iput-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingInfoTag:Z

    .line 52
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->wavOptions:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    .line 53
    return-void
.end method


# virtual methods
.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 217
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 170
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 370
    return-void
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public deleteArtworkField()V
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->deleteArtworkField()V

    .line 329
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->deleteField(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    .line 276
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->$SWITCH_TABLE$org$FiioGetMusicInfo$audio$wav$WavOptions()[I

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->wavOptions:Lorg/FiioGetMusicInfo/audio/wav/WavOptions;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/wav/WavOptions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingInfoTag()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 186
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

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
    .line 353
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEndLocationInFileOfId3Chunk()J
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    const-wide/16 v0, 0x0

    .line 427
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFieldCount()I

    move-result v0

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getFieldCount()I

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
    .line 285
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFields()Ljava/util/Iterator;

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
    .line 174
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

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
    .line 313
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public getID3Tag()Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    return-object v0
.end method

.method public getInfoTag()Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    return-object v0
.end method

.method public getSizeOfID3TagIncludingChunkHeader()J
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const-wide/16 v0, 0x0

    .line 405
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getSizeOfID3TagOnly()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getSizeOfID3TagOnly()J
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-wide/16 v0, 0x0

    .line 392
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;->getEndLocationInFile()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

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
    .line 414
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const-wide/16 v0, 0x0

    .line 418
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

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
    .line 242
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/Tag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCommonFields()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->hasCommonFields()Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/Tag;->isEmpty()Z

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
    .line 59
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag:Z

    return v0
.end method

.method public isExistingInfoTag()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingInfoTag:Z

    return v0
.end method

.method public isID3Tag()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInfoTag()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result v0

    return v0
.end method

.method public setExistingId3Tag(Z)V
    .locals 0

    .prologue
    .line 374
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingId3Tag:Z

    .line 375
    return-void
.end method

.method public setExistingInfoTag(Z)V
    .locals 0

    .prologue
    .line 379
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->isExistingInfoTag:Z

    .line 380
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 211
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->getActiveTag()Lorg/FiioGetMusicInfo/tag/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/FiioGetMusicInfo/tag/Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 226
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 365
    return-void
.end method

.method public setID3Tag(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->id3Tag:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    .line 108
    return-void
.end method

.method public setInfoTag(Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/wav/WavTag;->infoTag:Lorg/FiioGetMusicInfo/tag/wav/WavInfoTag;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WAV "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

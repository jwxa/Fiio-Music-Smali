.class public Lorg/FiioGetMusicInfo/tag/flac/FlacTag;
.super Ljava/lang/Object;
.source "FlacTag.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/Tag;


# instance fields
.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createNewTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;-><init>(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    .line 45
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 194
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 167
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 66
    instance-of v0, p1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 490
    return-void
.end method

.method public createArtworkField([BILjava/lang/String;Ljava/lang/String;IIII)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 9

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    const-string v1, "ImageData cannot be null"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 222
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->ID3_INEED:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;-><init>(Lorg/FiioGetMusicInfo/tag/flac/FlacTag;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return-object v0

    .line 227
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 9

    .prologue
    .line 452
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 455
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 456
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v2

    .line 457
    const-string v3, "-->"

    .line 458
    const-string v4, ""

    .line 459
    const/4 v5, 0x0

    .line 460
    const/4 v6, 0x0

    .line 461
    const/4 v7, 0x0

    .line 462
    const/4 v8, 0x0

    .line 454
    invoke-direct/range {v0 .. v8}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    .line 471
    :goto_0
    return-object v0

    .line 466
    :cond_0
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setImageFromData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    const-string v1, "Unable to createField buffered image from the image"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    .line 472
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v2

    .line 473
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getWidth()I

    move-result v5

    .line 476
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getHeight()I

    move-result v6

    .line 477
    const/4 v7, 0x0

    .line 478
    const/4 v8, 0x0

    .line 471
    invoke-direct/range {v0 .. v8}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    goto :goto_0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField1(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag$GenericTagTextField;-><init>(Lorg/FiioGetMusicInfo/tag/flac/FlacTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLinkedArtworkField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 442
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "-->"

    const-string v4, ""

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public deleteArtworkField()V
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    .line 522
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V

    goto :goto_0
.end method

.method public getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 2
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
    .line 112
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 3
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
    .line 494
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    return-object v1

    .line 496
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 498
    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v0

    .line 499
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFieldCount()I
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFieldCount()I

    move-result v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFieldCountIncludingSubValues()I
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getFieldCount()I

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
    .line 388
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFields()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 78
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/flac/FlacStreamReader;->ID3_INEED:Z

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    :cond_1
    :goto_1
    return-object v0

    .line 81
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 83
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 95
    goto :goto_1

    .line 99
    :cond_4
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 3
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
    .line 409
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 412
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 420
    :goto_1
    return-object v0

    .line 412
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 414
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstArtwork()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 2

    .prologue
    .line 506
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getArtworkList()Ljava/util/List;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 509
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/images/Artwork;

    .line 511
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 334
    :goto_0
    return-object v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 342
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 345
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 347
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    return-object v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x200000

    if-ge v0, v1, :cond_0

    .line 293
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v1

    .line 294
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    const-string v0, ""

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 304
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVorbisCommentTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    return-object v0
.end method

.method public hasCommonFields()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->hasCommonFields()Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 553
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    .line 555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->hasField(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 531
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 533
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 537
    :goto_0
    return v0

    .line 533
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->hasField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setEncoding(Ljava/nio/charset/Charset;)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 181
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 147
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    instance-of v0, p1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->images:Ljava/util/List;

    check-cast p1, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->tag:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 485
    return-void
.end method

.method public setField1(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->createField1(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/flac/FlacTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 152
    return-void
.end method

.class public Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;
.super Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;
.source "VorbisCommentTag.java"


# static fields
.field public static final DEFAULT_VENDOR:Ljava/lang/String; = "FiioGetMusicInfo"

.field private static tagFieldToOggField:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            "Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 50
    sput-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->DISCNUMBER:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->DISCTOTAL:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKNUMBER:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->TRACKTOTAL:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->DATE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;-><init>()V

    .line 146
    return-void
.end method

.method private createMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;
    .locals 9

    .prologue
    .line 491
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    .line 494
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 495
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v2

    .line 496
    const-string v3, "-->"

    .line 497
    const-string v4, ""

    .line 498
    const/4 v5, 0x0

    .line 499
    const/4 v6, 0x0

    .line 500
    const/4 v7, 0x0

    .line 501
    const/4 v8, 0x0

    .line 493
    invoke-direct/range {v0 .. v8}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    .line 509
    :goto_0
    return-object v0

    .line 505
    :cond_0
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setImageFromData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    new-instance v0, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    const-string v1, "Unable to create MetadataBlockDataPicture from buffered"

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    .line 510
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getPictureType()I

    move-result v2

    .line 511
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 512
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 513
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getWidth()I

    move-result v5

    .line 514
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getHeight()I

    move-result v6

    .line 515
    const/4 v7, 0x0

    .line 516
    const/4 v8, 0x0

    .line 509
    invoke-direct/range {v0 .. v8}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>([BILjava/lang/String;Ljava/lang/String;IIII)V

    goto :goto_0
.end method

.method public static createNewTag()Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    .line 156
    const-string v1, "FiioGetMusicInfo"

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 622
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 623
    return-void
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 2

    .prologue
    .line 422
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method public addField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 571
    return-void
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 642
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 243
    if-nez p2, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;

    invoke-direct {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 205
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 531
    :try_start_0
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;->getRawContent()[B

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object v0

    .line 532
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 533
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 534
    return-object v0

    .line 536
    :catch_0
    move-exception v0

    .line 538
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 219
    if-nez p2, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    if-nez p1, :cond_1

    .line 225
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 228
    :cond_1
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteArtworkField()V
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 636
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 637
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 638
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 1

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 357
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 358
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 359
    return-void
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V
    .locals 1

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 373
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public get(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 296
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 275
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 276
    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 280
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkBinaryData()[B
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->decode([C)[B

    move-result-object v0

    .line 387
    return-object v0
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 447
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 450
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v0

    .line 453
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getArtworkMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getArtworkBinaryData()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setBinaryData([B)V

    .line 455
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->METADATA_BLOCK_PICTURE:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->get(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/util/List;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    return-object v3

    :cond_1
    move v0, v2

    .line 450
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 460
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 465
    :try_start_0
    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagTextField;

    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 466
    new-instance v2, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;-><init>(Ljava/nio/ByteBuffer;)V

    .line 467
    invoke-static {v2}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v0

    .line 468
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/FiioGetMusicInfo/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 470
    :catch_0
    move-exception v0

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 474
    :catch_1
    move-exception v0

    .line 476
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getArtworkMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

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
    .line 257
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 258
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 320
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 438
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 302
    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 306
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->tagFieldToOggField:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    .line 333
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 187
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 410
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->fields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setArtworkField([BLjava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object v0

    .line 589
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 590
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 594
    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 596
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Ljava/lang/String;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 609
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 610
    return-void
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)V
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 555
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getFirst(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERART:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 558
    sget-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->COVERARTMIME:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->deleteField(Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;)V

    .line 560
    :cond_0
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 180
    const-string p1, "FiioGetMusicInfo"

    .line 182
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OGG "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

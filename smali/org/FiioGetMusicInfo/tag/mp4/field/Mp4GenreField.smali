.class public Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;
.super Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;
.source "Mp4GenreField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_0
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 72
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    .line 75
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 23
    return-void
.end method

.method public static isValidGenre(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    .line 37
    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxStandardGenreId()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gt v1, v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 48
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 107
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 108
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    iput v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->dataSize:I

    .line 109
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    .line 112
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 118
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->numbers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 120
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->content:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->content:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 125
    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_GENRE_OUT_OF_RANGE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_NO_GENREID_FOR_GENRE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

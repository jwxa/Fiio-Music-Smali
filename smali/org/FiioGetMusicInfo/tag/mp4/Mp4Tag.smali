.class public Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;
.super Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;
.source "Mp4Tag.java"


# static fields
.field private static final tagFieldToMp4Field:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            "Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 52
    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->IS_COMPILATION:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->DAY:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method private createGenreField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 574
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 575
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_0

    .line 576
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 579
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 584
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0
.end method

.method public createArtworkField([B)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 884
    if-eqz p1, :cond_0

    .line 887
    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->TRUE_VALUE:Ljava/lang/String;

    .line 888
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    .line 893
    :goto_0
    return-object v0

    .line 892
    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;->FALSE_VALUE:Ljava/lang/String;

    .line 893
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    sget-object v3, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 4

    .prologue
    .line 602
    if-nez p2, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    if-nez p1, :cond_1

    .line 608
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 613
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_2

    .line 614
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_2

    .line 615
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-eq p1, v0, :cond_2

    .line 616
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_6

    .line 621
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 622
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 624
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;-><init>(I)V

    .line 665
    :goto_0
    return-object v0

    .line 626
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_4

    .line 628
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 643
    new-instance v1, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a number as required"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/FiioGetMusicInfo/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 630
    :cond_4
    :try_start_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_5

    .line 632
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;-><init>(I)V

    goto :goto_0

    .line 634
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_9

    .line 636
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 646
    :cond_6
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v0, :cond_9

    .line 649
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isWriteMp4GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 651
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_7
    invoke-static {p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 656
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_8
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_9
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->createField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;-><init>([B)V

    return-object v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 791
    if-nez p2, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    if-nez p1, :cond_1

    .line 797
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 802
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMPILATION:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_4

    .line 804
    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    :cond_2
    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    .line 810
    :cond_3
    invoke-virtual {p0, v4}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->createCompilationField(Z)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_6

    .line 815
    invoke-static {p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;->isValidGenre(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->NOT_STANDARD_MP$_GENRE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_6
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    if-ne p1, v0, :cond_7

    .line 826
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :cond_7
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->DISC_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_8

    .line 830
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_8
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->TRACK_NO:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_9

    .line 834
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-direct {v0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_9
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->BYTE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_a

    .line 838
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldLength()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;-><init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;I)V

    goto :goto_0

    .line 840
    :cond_a
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->NUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_b

    .line 842
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_b
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->REVERSE_DNS:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_c

    .line 846
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {v0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :cond_c
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_d

    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->ARTWORK_CANNOT_BE_CREATED_WITH_THIS_METHOD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_d
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_e

    .line 854
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :cond_e
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getSubClassFieldType()Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;->UNKNOWN:Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagFieldSubType;

    if-ne v0, v1, :cond_f

    .line 858
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->DO_NOT_KNOW_HOW_TO_CREATE_THIS_ATOM_TYPE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    if-nez p1, :cond_0

    .line 442
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 445
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 452
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 454
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 457
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 521
    :goto_0
    return-void

    .line 462
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    .line 463
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->setTrackNo(I)V

    goto :goto_0

    .line 467
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_4

    .line 469
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 472
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    .line 478
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->setTrackTotal(I)V

    goto :goto_0

    .line 482
    :cond_4
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 484
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 487
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_5
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    .line 493
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->setDiscNo(I)V

    goto :goto_0

    .line 497
    :cond_6
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_8

    .line 499
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 502
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_7
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    .line 508
    invoke-virtual {v0, v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->setDiscTotal(I)V

    goto :goto_0

    .line 512
    :cond_8
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_9

    .line 514
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_9
    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)V
    .locals 1

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 533
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 535
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->deleteField(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public get(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 4
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
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-object v1

    .line 305
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 307
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v3, :cond_1

    .line 309
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_1
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v3, :cond_2

    .line 313
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_2
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v3, :cond_3

    .line 317
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_3
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v3, :cond_4

    .line 321
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_4
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 868
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->get(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 869
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 871
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    return-object v1

    .line 871
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 873
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;

    .line 874
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;->getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;

    move-result-object v3

    .line 875
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;->getData()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setBinaryData([B)V

    .line 876
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;->getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;->getMimeTypeForImageType(Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/FiioGetMusicInfo/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 877
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 4
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
    .line 207
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 211
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->tagFieldToMp4Field:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    .line 212
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 290
    :cond_1
    :goto_0
    return-object v0

    .line 232
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_3

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 242
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v2

    .line 250
    goto :goto_0

    .line 242
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v1, v0

    .line 244
    check-cast v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    .line 245
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_4

    .line 247
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_6
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_9

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    .line 262
    goto :goto_0

    .line 254
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v1, v0

    .line 256
    check-cast v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    .line 257
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_7

    .line 259
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_9
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_c

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v2

    .line 274
    goto :goto_0

    .line 266
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v1, v0

    .line 268
    check-cast v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    .line 269
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_a

    .line 271
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 276
    :cond_c
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_1

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v2

    .line 286
    goto/16 :goto_0

    .line 278
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    move-object v1, v0

    .line 280
    check-cast v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    .line 281
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_d

    .line 283
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 411
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    goto :goto_0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;
    .locals 1

    .prologue
    .line 426
    if-nez p1, :cond_0

    .line 428
    new-instance v0, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/KeyNotFoundException;-><init>()V

    throw v0

    .line 430
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;

    return-object v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_4

    .line 359
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 360
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_0

    .line 362
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    .line 364
    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_1

    .line 366
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_2

    .line 370
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_2
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_TOTAL:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_3

    .line 374
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_3
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_6

    .line 378
    :try_start_0
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;->getDataBytes()[B

    move-result-object v1

    .line 379
    array-length v0, v1

    const v2, 0xe4e1c0

    if-ge v0, v2, :cond_5

    .line 380
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 395
    :cond_4
    const-string v0, ""

    goto :goto_0

    .line 384
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 392
    :cond_6
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;

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

.method public hasField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->getFields(Ljava/lang/String;)Ljava/util/List;

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
    .line 171
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 679
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 681
    sget-object v1, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    if-ne p1, v1, :cond_0

    .line 683
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)V

    .line 692
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 693
    return-void

    .line 687
    :cond_1
    invoke-interface {v0}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE_CUSTOM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->deleteField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;)V

    goto :goto_0
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 776
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 723
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 725
    :cond_1
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0

    .line 729
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    .line 730
    check-cast p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    .line 731
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v1

    .line 732
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v2

    .line 733
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_a

    .line 735
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackNo()Ljava/lang/Short;

    move-result-object v0

    .line 737
    :goto_1
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_9

    .line 739
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;->getTrackTotal()Ljava/lang/Short;

    move-result-object v1

    .line 742
    :goto_2
    new-instance v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {v2, v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;-><init>(II)V

    .line 743
    invoke-super {p0, v2}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0

    .line 746
    :cond_3
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 748
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 749
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 751
    :cond_4
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 755
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    .line 756
    check-cast p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    .line 757
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v1

    .line 758
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v2

    .line 759
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    if-lez v0, :cond_8

    .line 761
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscNo()Ljava/lang/Short;

    move-result-object v0

    .line 763
    :goto_3
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    if-lez v1, :cond_7

    .line 765
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;->getDiscTotal()Ljava/lang/Short;

    move-result-object v1

    .line 768
    :goto_4
    new-instance v2, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-direct {v2, v0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;-><init>(II)V

    .line 769
    invoke-super {p0, v2}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 774
    :cond_6
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_3

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public setField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->createField(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    .line 705
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->setField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 706
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mpeg4 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

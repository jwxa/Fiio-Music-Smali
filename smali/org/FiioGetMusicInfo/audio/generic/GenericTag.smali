.class public abstract Lorg/FiioGetMusicInfo/audio/generic/GenericTag;
.super Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;
.source "GenericTag.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field protected static supportedKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/FiioGetMusicInfo/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    new-array v0, v3, [B

    sput-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->EMPTY_BYTE_ARRAY:[B

    .line 57
    sget-object v0, Lorg/FiioGetMusicInfo/tag/FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/FieldKey;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/FiioGetMusicInfo/tag/FieldKey;

    .line 58
    sget-object v2, Lorg/FiioGetMusicInfo/tag/FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 59
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 60
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 61
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->DISC_NO:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 62
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 64
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->YEAR:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 65
    sget-object v3, Lorg/FiioGetMusicInfo/tag/FieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/FieldKey;

    aput-object v3, v1, v2

    .line 56
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;-><init>()V

    return-void
.end method

.method static synthetic access$0()[B
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method


# virtual methods
.method public createField(Lorg/FiioGetMusicInfo/tag/FieldKey;Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 3

    .prologue
    .line 184
    sget-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    if-nez p2, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag$GenericTagTextField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag$GenericTagTextField;-><init>(Lorg/FiioGetMusicInfo/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v2, "  genericKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   supportedKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createField(Lorg/FiioGetMusicInfo/tag/images/Artwork;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteField(Lorg/FiioGetMusicInfo/tag/FieldKey;)V
    .locals 2

    .prologue
    .line 235
    sget-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->deleteField(Ljava/lang/String;)V

    .line 238
    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 229
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;->getAll(Ljava/lang/String;)Ljava/util/List;

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
    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/util/List;
    .locals 2
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
    .line 218
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 219
    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :cond_0
    return-object v0
.end method

.method public getFirst(Lorg/FiioGetMusicInfo/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstField(Lorg/FiioGetMusicInfo/tag/FieldKey;)Lorg/FiioGetMusicInfo/tag/TagField;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->getFirstField(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/TagField;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERIC_NOT_SUPPORTED:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Lorg/FiioGetMusicInfo/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->supportedKeys:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/FiioGetMusicInfo/audio/generic/GenericTag;->getItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected isAllowedEncoding(Ljava/nio/charset/Charset;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

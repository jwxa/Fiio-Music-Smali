.class public Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "LanguageList.java"


# instance fields
.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public addLanguage(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->WMA_LENGTH_OF_LANGUAGE_IS_TOO_LARGE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->getLanguageCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "  |-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->getLanguage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeLanguage(I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    return-void
.end method

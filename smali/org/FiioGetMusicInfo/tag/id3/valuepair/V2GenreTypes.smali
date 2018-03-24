.class public Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;
.super Ljava/lang/Object;
.source "V2GenreTypes.java"


# static fields
.field private static v2GenresTypes:Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;

    .line 28
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;->v2GenresTypes:Lorg/FiioGetMusicInfo/tag/id3/valuepair/V2GenreTypes;

    return-object v0
.end method


# virtual methods
.method public getAlphabeticalValueList()Ljava/util/List;
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
    .line 36
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getAlphabeticalValueList()Ljava/util/List;

    move-result-object v0

    .line 37
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 42
    return-object v0
.end method

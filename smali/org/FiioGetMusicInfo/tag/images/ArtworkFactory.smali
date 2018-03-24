.class public Lorg/FiioGetMusicInfo/tag/images/ArtworkFactory;
.super Ljava/lang/Object;
.source "ArtworkFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->createArtworkFromFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->createArtworkFromFile(Ljava/io/File;)Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    move-result-object v0

    goto :goto_0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->createArtworkFromMetadataBlockDataPicture(Lorg/FiioGetMusicInfo/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLinkedArtworkFromURL(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;->createLinkedArtworkFromURL(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;->createLinkedArtworkFromURL(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNew()Lorg/FiioGetMusicInfo/tag/images/Artwork;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/StandardArtwork;-><init>()V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/images/AndroidArtwork;-><init>()V

    goto :goto_0
.end method

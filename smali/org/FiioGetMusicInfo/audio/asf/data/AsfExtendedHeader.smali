.class public final Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;
.super Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;
.source "AsfExtendedHeader.java"


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_HEADER_EXTENSION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/ChunkContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final getContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENTDESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 30
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    .line 29
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;

    return-object v0
.end method

.method public final getExtendedContentDescription()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 2

    .prologue
    .line 37
    .line 38
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_EXTENDED_CONTENT_DESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 37
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    return-object v0
.end method

.method public final getLanguageList()Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_LANGUAGE_LIST:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 48
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;

    .line 47
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/LanguageList;

    return-object v0
.end method

.method public final getMetadataLibraryObject()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_METADATA_LIBRARY:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 58
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 57
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    return-object v0
.end method

.method public final getMetadataObject()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_METADATA:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    .line 68
    const-class v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/AsfExtendedHeader;->getFirst(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/lang/Class;)Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    return-object v0
.end method

.class public Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyEAL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 53
    const-string v0, "Album"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;->read(Ljava/nio/ByteBuffer;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "Album"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "EAL"

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "Album"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyEAL;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;

    const-string v2, "Album"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

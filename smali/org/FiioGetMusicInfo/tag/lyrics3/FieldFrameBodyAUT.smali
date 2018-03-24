.class public Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;
.super Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;
.source "FieldFrameBodyAUT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 52
    const-string v0, "Author"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;->read(Ljava/nio/ByteBuffer;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/lyrics3/AbstractLyrics3v2FieldFrameBody;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "Author"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "AUT"

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "Author"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/lyrics3/FieldFrameBodyAUT;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;

    const-string v2, "Author"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

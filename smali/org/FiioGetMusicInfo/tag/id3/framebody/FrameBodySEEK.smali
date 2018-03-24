.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySEEK;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodySEEK.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 51
    const-string v0, "Offset"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySEEK;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySEEK;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "ASPI"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodySEEK;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;

    const-string v2, "Offset"

    const/4 v3, 0x4

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberFixedLength;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

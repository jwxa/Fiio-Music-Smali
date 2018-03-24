.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyEncrypted.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# instance fields
.field private identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->identifier:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->identifier:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p2, p3}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->identifier:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->identifier:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->identifier:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyEncrypted;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "Data"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

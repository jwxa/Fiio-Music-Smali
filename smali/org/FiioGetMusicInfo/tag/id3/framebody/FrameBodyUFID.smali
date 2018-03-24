.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;
.source "FrameBodyUFID.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# static fields
.field public static final UFID_ID3TEST:Ljava/lang/String; = "http://www.id3.org/dummy/ufid.html"

.field public static final UFID_MUSICBRAINZ:Ljava/lang/String; = "http://musicbrainz.org"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 52
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setOwner(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setUniqueIdentifier([B)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setOwner(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setUniqueIdentifier([B)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractID3v2FrameBody;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "UFID"

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "Owner"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdentifier()[B
    .locals 1

    .prologue
    .line 128
    const-string v0, "Data"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public setUniqueIdentifier([B)V
    .locals 1

    .prologue
    .line 120
    const-string v0, "Data"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;

    const-string v2, "Owner"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/StringNullTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyUFID;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;

    const-string v2, "Data"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/ByteArraySizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

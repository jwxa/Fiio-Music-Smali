.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTSOA;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTSOA.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTSOA;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "TSOA"

    return-object v0
.end method

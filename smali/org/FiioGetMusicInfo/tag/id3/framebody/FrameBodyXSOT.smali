.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyXSOT;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyXSOT.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyXSOT;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "XSOT"

    return-object v0
.end method

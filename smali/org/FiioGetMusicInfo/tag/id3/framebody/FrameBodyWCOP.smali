.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWCOP;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyUrlLink;
.source "FrameBodyWCOP.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyWCOP;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyUrlLink;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyUrlLink;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "WCOP"

    return-object v0
.end method

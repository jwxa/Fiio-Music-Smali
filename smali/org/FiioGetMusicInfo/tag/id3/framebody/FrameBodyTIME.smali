.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTIME.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;


# instance fields
.field private hoursOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "TIME"

    return-object v0
.end method

.method public isHoursOnly()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;->hoursOnly:Z

    return v0
.end method

.method public setHoursOnly(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTIME;->hoursOnly:Z

    .line 93
    return-void
.end method

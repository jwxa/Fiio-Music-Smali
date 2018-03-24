.class public Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;
.super Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;
.source "NullPadding.java"


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;->setFilePos(J)V

    .line 16
    sub-long v0, p3, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/mp4/atom/NullPadding;->length:I

    .line 17
    return-void
.end method

.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTDAT.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;


# static fields
.field public static final DATA_SIZE:I = 0x4

.field public static final DAY_END:I = 0x2

.field public static final DAY_START:I = 0x0

.field public static final MONTH_END:I = 0x4

.field public static final MONTH_START:I = 0x2


# instance fields
.field private monthOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "TDAT"

    return-object v0
.end method

.method public isMonthOnly()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->monthOnly:Z

    return v0
.end method

.method public setMonthOnly(Z)V
    .locals 0

    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->monthOnly:Z

    .line 101
    return-void
.end method

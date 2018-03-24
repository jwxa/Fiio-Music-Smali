.class public Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;
.super Ljava/lang/Object;
.source "AbstractID3v2Frame.java"


# static fields
.field protected static final TYPE_FLAGS:Ljava/lang/String; = "statusFlags"


# instance fields
.field protected originalFlags:B

.field final synthetic this$0:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

.field protected writeFlags:B


# direct methods
.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->this$0:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    return-void
.end method


# virtual methods
.method public createStructure()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 529
    if-ne p0, p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    instance-of v2, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    if-nez v2, :cond_2

    move v0, v1

    .line 533
    goto :goto_0

    .line 535
    :cond_2
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;

    .line 539
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getOriginalFlags()B

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->getWriteFlags()B

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 538
    goto :goto_0
.end method

.method public getOriginalFlags()B
    .locals 1

    .prologue
    .line 511
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->originalFlags:B

    return v0
.end method

.method public getWriteFlags()B
    .locals 1

    .prologue
    .line 520
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame$StatusFlags;->writeFlags:B

    return v0
.end method

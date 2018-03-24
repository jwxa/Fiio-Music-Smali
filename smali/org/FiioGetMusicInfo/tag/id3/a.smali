.class Lorg/FiioGetMusicInfo/tag/id3/a;
.super Ljava/lang/Object;
.source "AbstractID3v2Frame.java"


# instance fields
.field protected a:B

.field final synthetic b:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;


# direct methods
.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .prologue
    .line 552
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/a;->b:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/a;->a:B

    .line 554
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;B)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/a;->b:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-byte p2, p0, Lorg/FiioGetMusicInfo/tag/id3/a;->a:B

    .line 559
    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 563
    iget-byte v0, p0, Lorg/FiioGetMusicInfo/tag/id3/a;->a:B

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 582
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    .line 584
    :cond_0
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/a;

    if-nez v0, :cond_1

    .line 586
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_1
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/a;

    .line 591
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/a;->a()B

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(JJ)Z

    move-result v0

    goto :goto_0
.end method

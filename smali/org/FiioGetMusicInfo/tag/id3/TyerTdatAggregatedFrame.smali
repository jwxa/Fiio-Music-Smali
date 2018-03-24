.class public Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;
.super Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;
.source "TyerTdatAggregatedFrame.java"


# static fields
.field public static final ID_TYER_TDAT:Ljava/lang/String; = "TYERTDAT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AggregatedFrame;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/TyerTdatAggregatedFrame;->frames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 24
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;

    .line 26
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 28
    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTDAT;->isMonthOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;
.super Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;
.source "AbstractTagFrame.java"


# instance fields
.field protected frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;-><init>()V

    .line 53
    iget-object v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 54
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    instance-of v2, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    if-nez v2, :cond_2

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_2
    check-cast p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    .line 127
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/utils/EqualsUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    return-object v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    if-nez v0, :cond_0

    move v0, v1

    .line 104
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_1

    move v0, v2

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_3
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-object v0, p1

    check-cast v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v3, v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagItem;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public setBody(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    .line 66
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->frameBody:Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->setHeader(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)V

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;->getBody()Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

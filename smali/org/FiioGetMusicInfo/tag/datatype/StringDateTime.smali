.class public Lorg/FiioGetMusicInfo/tag/datatype/StringDateTime;
.super Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;
.source "StringDateTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/StringDateTime;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;)V

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 78
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/StringDateTime;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringDateTime;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringDateTime;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/StringDateTime;->value:Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.class public Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;
.source "BooleanString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;)V

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public readByteArray([BI)V
    .locals 2

    .prologue
    .line 68
    aget-byte v0, p1, p2

    .line 69
    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;->value:Ljava/lang/Object;

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 85
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 86
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 88
    aput-byte v3, v1, v2

    .line 101
    :goto_0
    return-object v1

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/datatype/BooleanString;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    aput-byte v3, v1, v2

    goto :goto_0

    .line 98
    :cond_1
    const/16 v0, 0x31

    aput-byte v0, v1, v2

    goto :goto_0
.end method

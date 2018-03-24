.class public Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;
.super Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;
.source "AsfTagTextField.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 39
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string v1, "Cannot interpret binary as string."

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)V

    .line 27
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;->getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagTextField;->getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setString(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 85
    const-string v1, "Only UTF-16LE is possible with ASF."

    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    return-void
.end method

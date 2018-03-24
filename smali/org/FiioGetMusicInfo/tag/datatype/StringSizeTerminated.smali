.class public Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;
.super Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;
.source "StringSizeTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;-><init>(Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;)V

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 64
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/datatype/StringSizeTerminated;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/tag/datatype/TextEncodedStringSizeTerminated;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTextEncodingCharSet()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.class public Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;
.super Ljava/lang/Object;
.source "ID3TextEncodingConversion.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "org.FiioGetMusicInfo.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertV24textEncodingToV23textEncoding(B)B
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 106
    const/4 p0, 0x1

    .line 116
    :cond_0
    :goto_0
    return p0

    .line 110
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 112
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;B)B
    .locals 2

    .prologue
    .line 31
    if-nez p0, :cond_2

    .line 33
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    const-string v1, "Header has not yet been set for this framebody"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result p1

    .line 67
    :cond_0
    :goto_0
    return p1

    .line 41
    :cond_1
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->convertV24textEncodingToV23textEncoding(B)B

    move-result p1

    goto :goto_0

    .line 44
    :cond_2
    instance-of v0, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v0, :cond_3

    .line 46
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getId3v24DefaultTextEncoding()B

    move-result p1

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->isResetTextEncodingForExistingFrames()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getId3v23DefaultTextEncoding()B

    move-result p1

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->convertV24textEncodingToV23textEncoding(B)B

    move-result p1

    goto :goto_0
.end method

.method public static getUnicodeTextEncoding(Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrame;)B
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    if-nez p0, :cond_1

    .line 82
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3TextEncodingConversion;->logger:Ljava/util/logging/Logger;

    const-string v2, "Header has not yet been set for this framebody"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    instance-of v1, p0, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frame;

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getInstance()Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/TagOptionSingleton;->getId3v24UnicodeTextEncoding()B

    move-result v0

    goto :goto_0
.end method

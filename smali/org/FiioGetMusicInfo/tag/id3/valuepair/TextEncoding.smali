.class public Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;
.super Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;
.source "TextEncoding.java"


# static fields
.field public static final ISO_8859_1:B = 0x0t

.field public static final TEXT_ENCODING_FIELD_SIZE:I = 0x1

.field public static final UTF_16:B = 0x1t

.field public static final UTF_16BE:B = 0x2t

.field public static final UTF_8:B = 0x3t

.field private static textEncodings:Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;


# instance fields
.field private final idToCharset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/datatype/AbstractIntStringValuePair;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    .line 75
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->createMaps()V

    .line 85
    return-void

    .line 80
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToValue:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->textEncodings:Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    invoke-direct {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;-><init>()V

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->textEncodings:Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;

    .line 70
    :cond_0
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->textEncodings:Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCharsetForId(I)Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->idToCharset:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getIdForCharset(Ljava/nio/charset/Charset;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/TextEncoding;->valueToId:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

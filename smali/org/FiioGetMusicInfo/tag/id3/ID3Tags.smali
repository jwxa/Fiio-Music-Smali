.class public Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;
.super Ljava/lang/Object;
.source "ID3Tags.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "org.FiioGetMusicInfo.tag.id3"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrameID22To24(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    move-object v0, v2

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    if-eqz v0, :cond_3

    .line 151
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->convertv23Tov24:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    if-nez v1, :cond_2

    .line 156
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    .line 162
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 167
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 172
    goto :goto_0
.end method

.method public static convertFrameID23To22(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->convertv23Tov22:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    move-object p0, v0

    .line 223
    :cond_0
    :goto_0
    return-object p0

    .line 210
    :cond_1
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->convertv23Tov24:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 223
    goto :goto_0
.end method

.method public static convertFrameID24To23(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 280
    const/4 v0, 0x0

    .line 290
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->convertv24Tov23:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 287
    goto :goto_0
.end method

.method public static copyObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 308
    if-nez p0, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 317
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 318
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoSuchMethodException: Error finding constructor to create copy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IllegalAccessException: No access to run constructor to create copy"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InstantiationException: Unable to instantiate constructor to copy"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catch_3
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 337
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 345
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InvocationTargetException: Unable to invoke constructor to create copy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findNumber(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/ID3Tags;->findNumber(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findNumber(Ljava/lang/String;I)J
    .locals 4

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 374
    if-nez p0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Offset to image string is out of bounds: offset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", string.length()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v0, v3, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    .line 390
    add-int/lit8 p1, p1, 0x1

    .line 386
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 394
    :cond_5
    add-int/lit8 v0, p1, 0x1

    .line 395
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 403
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_8

    if-le v0, p1, :cond_8

    .line 405
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 411
    return-wide v0

    .line 397
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v3, :cond_6

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_8
    new-instance v0, Lorg/FiioGetMusicInfo/tag/TagException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find integer in string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/tag/TagException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceFrameID22To23(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->forcev22Tov23:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static forceFrameID23To22(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->forcev23Tov22:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static forceFrameID23To24(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->forcev23Tov24:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static forceFrameID24To23(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/ID3Frames;->forcev24Tov23:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getWholeNumber(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 93
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 117
    :goto_0
    return-wide v0

    .line 97
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 99
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 103
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 107
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 111
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported value class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isID3v22FrameIdentifier(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v22Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isID3v23FrameIdentifier(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v23Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isID3v24FrameIdentifier(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/ID3v24Frames;->getIdToValueMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static stripChar(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 423
    if-eqz p0, :cond_2

    .line 425
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    .line 427
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 434
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 438
    :goto_1
    return-object v0

    .line 429
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    .line 431
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    move v2, v3

    .line 427
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 451
    if-nez p0, :cond_1

    move-object p0, v0

    .line 465
    :cond_0
    :goto_0
    return-object p0

    .line 455
    :cond_1
    if-gez p1, :cond_2

    move-object p0, v0

    .line 457
    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

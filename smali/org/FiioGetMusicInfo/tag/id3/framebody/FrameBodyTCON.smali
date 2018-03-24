.class public Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;
.super Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;
.source "FrameBodyTCON.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v23FrameBody;
.implements Lorg/FiioGetMusicInfo/tag/id3/framebody/ID3v24FrameBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(BLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;-><init>(Lorg/FiioGetMusicInfo/tag/id3/framebody/AbstractFrameBodyTextInfo;)V

    .line 85
    return-void
.end method

.method private static bracketWrap(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkBracketed(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 280
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 282
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    :cond_0
    :goto_0
    return-object v0

    .line 291
    :catch_0
    move-exception v1

    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    sget-object v1, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertGenericToID3v22Genre(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 186
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 188
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 223
    :cond_0
    :goto_0
    return-object p0

    .line 198
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 214
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->bracketWrap(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static convertGenericToID3v24Genre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 136
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 146
    :catch_0
    move-exception v0

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxStandardGenreId()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_3
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_4
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static convertID3v22GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x29

    .line 324
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->checkBracketed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->checkBracketed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertID3v24GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 247
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getMaxGenreId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 249
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getInstanceOf()Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/FiioGetMusicInfo/tag/reference/GenreTypes;->getValueForId(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 271
    :cond_0
    :goto_0
    return-object p0

    .line 258
    :catch_0
    move-exception v0

    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->RX:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object p0, v0

    .line 271
    goto :goto_0

    .line 262
    :cond_1
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->CR:Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ID3V2ExtendedGenreTypes;->getDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "TCON"

    return-object v0
.end method

.method public setV23Format()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->getObject(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/datatype/AbstractDataType;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/datatype/TCONString;

    .line 342
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/tag/datatype/TCONString;->setNullSeperateMultipleValues(Z)V

    .line 343
    return-void
.end method

.method protected setupObjectList()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;

    const-string v2, "TextEncoding"

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, v3}, Lorg/FiioGetMusicInfo/tag/datatype/NumberHashMap;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/framebody/FrameBodyTCON;->objectList:Ljava/util/ArrayList;

    new-instance v1, Lorg/FiioGetMusicInfo/tag/datatype/TCONString;

    const-string v2, "Text"

    invoke-direct {v1, v2, p0}, Lorg/FiioGetMusicInfo/tag/datatype/TCONString;-><init>(Ljava/lang/String;Lorg/FiioGetMusicInfo/tag/id3/AbstractTagFrameBody;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

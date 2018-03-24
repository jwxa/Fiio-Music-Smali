.class public Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentCreator;
.super Lorg/FiioGetMusicInfo/audio/generic/AbstractTagCreator;
.source "VorbisCommentCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lorg/FiioGetMusicInfo/tag/Tag;I)Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    .line 52
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    move-object v0, p1

    check-cast v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getVendor()Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    .line 57
    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 58
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 61
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFieldCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 62
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 65
    invoke-interface {p1}, Lorg/FiioGetMusicInfo/tag/Tag;->getFields()Ljava/util/Iterator;

    move-result-object v3

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 82
    return-object v1

    .line 68
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/FiioGetMusicInfo/tag/TagField;

    .line 69
    invoke-interface {v1}, Lorg/FiioGetMusicInfo/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->VENDOR:Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-interface {v1}, Lorg/FiioGetMusicInfo/tag/TagField;->getRawContent()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 87
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.class public Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;
.super Ljava/lang/Object;
.source "VorbisCommentReader.java"


# static fields
.field public static final FIELD_COMMENT_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_USER_COMMENT_LIST_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_LENGTH_POS:I = 0x0

.field public static final FIELD_VENDOR_STRING_POS:I = 0x4

.field private static final JAUDIOTAGGER_MAX_COMMENT_LENGTH:I = 0x989680

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "org.FiioGetMusicInfo.tag.vorbiscomment.VorbisCommentReader"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public read([BZ)Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v2, 0x0

    .line 84
    new-instance v4, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;

    invoke-direct {v4}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;-><init>()V

    .line 86
    new-array v0, v9, [B

    .line 87
    invoke-static {p1, v2, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-static {v0}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([B)I

    move-result v0

    .line 91
    new-array v1, v0, [B

    .line 92
    invoke-static {p1, v9, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int/lit8 v0, v0, 0x4

    .line 94
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->setVendor(Ljava/lang/String;)V

    .line 95
    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Vendor is:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 97
    new-array v1, v9, [B

    .line 98
    invoke-static {p1, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    add-int/lit8 v0, v0, 0x4

    .line 101
    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([B)I

    move-result v5

    .line 102
    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Number of user comments:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    move v1, v2

    .line 104
    :goto_0
    if-lt v1, v5, :cond_0

    .line 136
    :goto_1
    if-eqz p2, :cond_3

    .line 138
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v10, :cond_3

    .line 140
    new-instance v1, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v3, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->OGG_VORBIS_NO_FRAMING_BIT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v4, v10, [Ljava/lang/Object;

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    new-array v3, v9, [B

    .line 107
    invoke-static {p1, v0, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int/lit8 v0, v0, 0x4

    .line 110
    invoke-static {v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([B)I

    move-result v3

    .line 111
    sget-object v6, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Next Comment Length:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 113
    const v6, 0x989680

    if-le v3, v6, :cond_1

    .line 115
    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_TOO_LARGE:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_1
    array-length v6, p1

    if-le v3, v6, :cond_2

    .line 120
    sget-object v1, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->VORBIS_COMMENT_LENGTH_LARGE_THAN_HEADER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-virtual {v5, v6}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_2
    new-array v6, v3, [B

    .line 126
    invoke-static {p1, v0, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/2addr v3, v0

    .line 129
    new-instance v0, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;

    invoke-direct {v0, v6}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;-><init>([B)V

    .line 130
    sget-object v6, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentReader;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTagField;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4, v0}, Lorg/FiioGetMusicInfo/tag/vorbiscomment/VorbisCommentTag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto/16 :goto_0

    .line 143
    :cond_3
    return-object v4
.end method

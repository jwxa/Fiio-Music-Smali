.class public Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;
.super Ljava/lang/Object;
.source "Mp4TagReader.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "org.FiioGetMusicInfo.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMp4Field(Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "----"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :try_start_0
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-direct {v1, p2, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 199
    invoke-virtual {p1, v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 203
    sget-object v3, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_UNABLE_READ_REVERSE_DNS_FIELD:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v4, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {v0, p2, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 205
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 212
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p3, v4, v4, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 213
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    if-eqz v3, :cond_d

    .line 217
    const/16 v1, 0x9

    const/16 v3, 0xb

    invoke-static {p3, v1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 218
    invoke-static {v3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v1

    .line 219
    sget-object v4, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Box Type id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TrackField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 225
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4DiscNoField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 230
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 232
    :cond_3
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4GenreField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 235
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ARTWORK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v5}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->isCoverArtType(Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    move v2, v0

    .line 242
    :goto_1
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 246
    if-lez v2, :cond_6

    .line 248
    add-int/lit8 v1, v0, 0x9

    .line 249
    add-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, -0x1

    .line 248
    invoke-static {p3, v1, v3}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 250
    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFieldType(I)Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v1

    .line 253
    :cond_6
    :try_start_1
    new-instance v3, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;

    invoke-direct {v3, p3, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;-><init>(Ljava/nio/ByteBuffer;Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;)V

    .line 254
    invoke-virtual {p1, v3}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    .line 255
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagCoverField;->getDataAndHeaderSize()I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    add-int/2addr v0, v3

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    const-string v0, "long"

    const-string v1, "m4a\u56fe\u7247\u52a0\u8f7d\u5f02\u5e38----mp4TagReader.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    :cond_7
    sget-object v4, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    if-ne v1, v4, :cond_8

    .line 265
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 266
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 268
    :cond_8
    sget-object v4, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->IMPLICIT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    if-ne v1, v4, :cond_9

    .line 270
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 271
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 273
    :cond_9
    sget-object v4, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->INTEGER:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    if-ne v1, v4, :cond_a

    .line 275
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagByteField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 276
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 281
    :cond_a
    invoke-static {}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->values()[Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_2
    if-lt v1, v5, :cond_b

    .line 296
    :goto_3
    if-nez v0, :cond_0

    .line 298
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnKnown Field:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with invalid field type of:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created as binary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 299
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagBinaryField;

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagBinaryField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 300
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 281
    :cond_b
    aget-object v6, v4, v1

    .line 283
    invoke-virtual {v6}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 290
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Known Field:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with invalid field type of:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is ignored"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move v0, v2

    .line 291
    goto :goto_3

    .line 281
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    :cond_d
    invoke-virtual {p2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->AAPR:Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4NonStandardFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 311
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {v0, p2, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 312
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0

    .line 317
    :cond_e
    new-instance v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagRawBinaryField;

    invoke-direct {v0, p2, p3}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagRawBinaryField;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 318
    invoke-virtual {p1, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;->addField(Lorg/FiioGetMusicInfo/tag/TagField;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;
    .locals 8

    .prologue
    .line 89
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;

    invoke-direct {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;-><init>()V

    .line 93
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->MOOV:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_NOT_CONTAINER:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 100
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 103
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->UDTA:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 108
    if-nez v0, :cond_1

    .line 110
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 170
    :goto_0
    return-object v0

    .line 113
    :cond_1
    new-instance v3, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v3, v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 114
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 117
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 119
    if-nez v0, :cond_4

    .line 121
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 122
    goto :goto_0

    .line 128
    :cond_2
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->META:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 129
    if-nez v0, :cond_3

    .line 131
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    new-instance v3, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;

    invoke-direct {v3, v0, v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 135
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 139
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->ILST:Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4AtomIdentifier;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->seekWithinLevel(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    move-result-object v0

    .line 141
    if-nez v0, :cond_4

    .line 143
    sget-object v0, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_FILE_HAS_NO_METADATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, v1

    .line 144
    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    .line 151
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 153
    sget-object v2, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "headerlengthsays:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "datalength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 154
    const/4 v2, 0x0

    .line 155
    sget-object v5, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Started to read metadata fields at position is in metadata buffer:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 156
    :goto_1
    if-lt v2, v3, :cond_5

    move-object v0, v1

    .line 170
    goto/16 :goto_0

    .line 159
    :cond_5
    invoke-virtual {v0, v4}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V

    .line 163
    sget-object v5, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Next position is at:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {p0, v1, v0, v5}, Lorg/FiioGetMusicInfo/audio/mp4/Mp4TagReader;->createMp4Field(Lorg/FiioGetMusicInfo/tag/mp4/Mp4Tag;Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 167
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1
.end method

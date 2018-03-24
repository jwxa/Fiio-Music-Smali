.class public Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;
.super Lorg/FiioGetMusicInfo/tag/asf/a;
.source "AsfTagCoverField.java"


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private description:Ljava/lang/String;

.field private endOfName:I

.field private imageDataSize:I

.field private mimeType:Ljava/lang/String;

.field private pictureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "org.FiioGetMusicInfo.audio.asf.tag"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 29
    sput-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->LOGGER:Ljava/util/logging/Logger;

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/a;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->endOfName:I

    .line 84
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    const-string v1, "Descriptor description must be WM/Picture"

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->processRawContent()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_1
    move-exception v0

    const-string v0, "long"

    const-string v1, "wma\u8bfb\u53d6\u56fe\u7247\u4fe1\u606f\u5185\u5b58\u6ea2\u51fa---AsfTagConverterField.java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->COVER_ART:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/a;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->endOfName:I

    .line 69
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->createRawContent([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    .line 73
    return-void
.end method

.method private createRawContent([BILjava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 105
    array-length v0, p1

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->imageDataSize:I

    .line 106
    iput p2, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->pictureType:I

    .line 107
    iput-object p4, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 110
    if-nez p4, :cond_0

    .line 111
    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    move-result-object p4

    .line 115
    if-nez p4, :cond_0

    .line 116
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->GENERAL_UNIDENITIFED_IMAGE_FORMAT:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    .line 117
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 118
    const-string p4, "image/png"

    .line 122
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    array-length v1, p1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeLEInt32(I)[B

    move-result-object v1

    const/4 v2, 0x4

    .line 128
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 134
    :try_start_0
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 143
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 150
    :try_start_1
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 151
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 157
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 161
    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    array-length v1, p1

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find encoding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find encoding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processRawContent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v1

    aget-byte v1, v1, v0

    iput v1, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->pictureType:I

    .line 205
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 204
    invoke-static {v1, v3, v4}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getIntLE([BII)I

    move-result v1

    iput v1, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->imageDataSize:I

    .line 209
    iput-object v5, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 210
    iput-object v5, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    move v1, v2

    .line 213
    :goto_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_0

    .line 228
    :goto_1
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_1

    .line 215
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 216
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    .line 217
    const-string v5, "UTF-16LE"

    invoke-direct {v0, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 216
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    .line 218
    add-int/lit8 v0, v1, 0x2

    .line 226
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 219
    :cond_2
    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 220
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v3

    .line 221
    sub-int v4, v1, v0

    const-string v5, "UTF-16LE"

    invoke-direct {v2, v3, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 220
    iput-object v2, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    .line 222
    add-int/lit8 v0, v1, 0x2

    iput v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->endOfName:I

    goto :goto_1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDataSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->imageDataSize:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->pictureType:I

    return v0
.end method

.method public getRawImageData()[B
    .locals 5

    .prologue
    .line 192
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->getRawContent()[B

    move-result-object v1

    iget v2, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->endOfName:I

    iget-object v3, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 194
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result v3

    .line 195
    iget v4, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagCoverField;->endOfName:I

    sub-int/2addr v3, v4

    .line 193
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 196
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

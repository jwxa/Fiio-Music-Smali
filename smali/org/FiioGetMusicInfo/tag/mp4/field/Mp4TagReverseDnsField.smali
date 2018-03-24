.class public Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;
.super Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;
.source "Mp4TagReverseDnsField.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagTextField;


# static fields
.field public static final IDENTIFIER:Ljava/lang/String; = "----"


# instance fields
.field protected content:Ljava/lang/String;

.field protected dataSize:I

.field private descriptor:Ljava/lang/String;

.field private issuer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method protected build(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 104
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 105
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 106
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4MeanBox;->getIssuer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->setIssuer(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    new-instance v1, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v1, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 111
    new-instance v2, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4NameBox;

    invoke-direct {v2, v1, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4NameBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 112
    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4NameBox;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->setDescriptor(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    iget-object v2, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->parentHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v2

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v0

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    if-ne v2, v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->id:Ljava/lang/String;

    .line 119
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->setContent(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->MP4_REVERSE_DNS_FIELD_HAS_NO_DATA:Lorg/FiioGetMusicInfo/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/FiioGetMusicInfo/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    invoke-direct {v0, p1}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 127
    new-instance v1, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;

    invoke-direct {v1, v0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 128
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/atom/Mp4DataBox;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->setContent(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 1

    .prologue
    .line 139
    instance-of v0, p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 141
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    move-object v0, p1

    .line 142
    check-cast v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 143
    check-cast p1, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataBytes()[B
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->TEXT:Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 4

    .prologue
    .line 176
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 180
    array-length v2, v1

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    const-string v2, "mean"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 182
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 186
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 187
    array-length v2, v1

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 188
    const-string v2, "name"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 190
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getRawContentDataOnly()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 198
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 200
    const-string v2, "----"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 202
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRawContentDataOnly()[B
    .locals 5

    .prologue
    .line 215
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting Raw data for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 221
    array-length v2, v1

    add-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 222
    const-string v2, "data"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 223
    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 225
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 226
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 227
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 245
    const-string v0, ""

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->descriptor:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setEncoding(Ljava/nio/charset/Charset;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->issuer:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4TagReverseDnsField;->content:Ljava/lang/String;

    return-object v0
.end method

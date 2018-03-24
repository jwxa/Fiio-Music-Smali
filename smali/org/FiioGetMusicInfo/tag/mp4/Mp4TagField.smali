.class public abstract Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;
.super Ljava/lang/Object;
.source "Mp4TagField.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/tag/TagField;


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field protected id:Ljava/lang/String;

.field protected parentHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "org.FiioGetMusicInfo.tag.mp4"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    .line 69
    return-void
.end method

.method protected constructor <init>(Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->parentHeader:Lorg/FiioGetMusicInfo/audio/mp4/atom/Mp4BoxHeader;

    .line 81
    invoke-virtual {p0, p2}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->build(Ljava/nio/ByteBuffer;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected abstract build(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract getDataBytes()[B
.end method

.method public abstract getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getIdBytes()[B
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getRawContent()[B
    .locals 4

    .prologue
    .line 145
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting Raw data for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getRawContentDataOnly()[B

    move-result-object v0

    .line 152
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 154
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 155
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 156
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRawContentDataOnly()[B
    .locals 5

    .prologue
    .line 173
    sget-object v0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting Raw data for:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 177
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getDataBytes()[B

    move-result-object v1

    .line 179
    array-length v2, v1

    add-int/lit8 v2, v2, 0x10

    invoke-static {v2}, Lorg/FiioGetMusicInfo/audio/generic/Utils;->getSizeBEInt32(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 180
    const-string v2, "data"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 182
    const/4 v2, 0x3

    new-array v2, v2, [B

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->getFieldType()Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/tag/mp4/field/Mp4FieldType;->getFileClassId()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBinary(Z)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public isCommon()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ARTIST:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->ALBUM:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TITLE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->TRACK:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->DAY:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->COMMENT:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    sget-object v1, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->GENRE:Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public final Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;
.super Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
.source "ContentDescription.java"


# static fields
.field public static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_AUTHOR:Ljava/lang/String; = "AUTHOR"

.field public static final KEY_COPYRIGHT:Ljava/lang/String; = "COPYRIGHT"

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final KEY_RATING:Ljava/lang/String; = "RATING"

.field public static final KEY_TITLE:Ljava/lang/String; = "TITLE"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "AUTHOR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 70
    const-string v3, "COPYRIGHT"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DESCRIPTION"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "RATING"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    .line 69
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->ALLOWED:Ljava/util/Set;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;-><init>(JLjava/math/BigInteger;)V

    .line 78
    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->CONTENT_DESCRIPTION:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    .line 90
    return-void
.end method


# virtual methods
.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "AUTHOR"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCopyRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "COPYRIGHT"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentAsfChunkSize()J
    .locals 4

    .prologue
    .line 118
    const-wide/16 v0, 0x2c

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 122
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 123
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 124
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 125
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 126
    return-wide v0
.end method

.method public final getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "RATING"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "TITLE"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->ALLOWED:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |->Title      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |->Author     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |->Copyright  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |->Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  |->Rating     :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 180
    const-string v0, "AUTHOR"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 191
    const-string v0, "DESCRIPTION"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final setCopyright(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 202
    const-string v0, "COPYRIGHT"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public final setRating(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    const-string v0, "RATING"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 224
    const-string v0, "TITLE"

    invoke-virtual {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public final writeInto(Ljava/io/OutputStream;)J
    .locals 4

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getCurrentAsfChunkSize()J

    move-result-wide v0

    .line 234
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getCurrentAsfChunkSize()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 238
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 239
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 240
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 241
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 242
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 244
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 245
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 246
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getAuthor()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 247
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getCopyRight()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getComment()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 251
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 252
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentDescription;->getRating()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 253
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/data/AsfHeader;->ZERO_TERM:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 254
    return-wide v0
.end method

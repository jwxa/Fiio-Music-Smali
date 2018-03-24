.class public final Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;
.super Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
.source "ContentBranding.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

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

.field public static final KEY_BANNER_IMAGE:Ljava/lang/String; = "BANNER_IMAGE"

.field public static final KEY_BANNER_TYPE:Ljava/lang/String; = "BANNER_IMAGE_TYPE"

.field public static final KEY_BANNER_URL:Ljava/lang/String; = "BANNER_IMAGE_URL"

.field public static final KEY_COPYRIGHT_URL:Ljava/lang/String; = "COPYRIGHT_URL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->$assertionsDisabled:Z

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    sput-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE_TYPE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "BANNER_IMAGE_URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    const-string v1, "COPYRIGHT_URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;-><init>(JLjava/math/BigInteger;)V

    .line 67
    return-void
.end method

.method public constructor <init>(JLjava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final getBannerImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "BANNER_IMAGE_URL"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCopyRightURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "COPYRIGHT_URL"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getValueFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentAsfChunkSize()J
    .locals 4

    .prologue
    .line 106
    const-wide/16 v0, 0x28

    .line 107
    const-string v2, "BANNER_IMAGE"

    .line 108
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 109
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 110
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 111
    return-wide v0
.end method

.method public final getImageData()[B
    .locals 2

    .prologue
    .line 120
    const-string v0, "BANNER_IMAGE"

    .line 121
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v0

    .line 120
    return-object v0
.end method

.method public final getImageType()J
    .locals 4

    .prologue
    .line 131
    const-string v0, "BANNER_IMAGE_TYPE"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->hasDescriptor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 133
    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    const-string v2, "BANNER_IMAGE_TYPE"

    .line 134
    const/4 v3, 0x3

    .line 132
    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 135
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 138
    :cond_0
    const-string v0, "BANNER_IMAGE_TYPE"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->ALLOWED:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBannerImageURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "BANNER_IMAGE_URL"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "BANNER_IMAGE_URL"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCopyRightURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "COPYRIGHT_URL"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "COPYRIGHT_URL"

    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setImage(J[B)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 185
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :cond_1
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    array-length v0, p3

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 187
    :cond_2
    const-string v0, "BANNER_IMAGE_TYPE"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setDWordValue(J)V

    .line 189
    const-string v0, "BANNER_IMAGE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->assertDescriptor(Ljava/lang/String;I)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    .line 191
    return-void
.end method

.method public final writeInto(Ljava/io/OutputStream;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 198
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getCurrentAsfChunkSize()J

    move-result-wide v0

    .line 199
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-static {v0, v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 201
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getImageType()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 202
    sget-boolean v2, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getImageType()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getImageType()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getImageData()[B

    move-result-object v2

    .line 204
    sget-boolean v3, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getImageType()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 205
    :cond_2
    array-length v3, v2

    int-to-long v4, v3

    invoke-static {v4, v5, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 206
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 208
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getBannerImageURL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 209
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT32(JLjava/io/OutputStream;)V

    .line 210
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContentBranding;->getCopyRightURL()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 211
    return-wide v0
.end method

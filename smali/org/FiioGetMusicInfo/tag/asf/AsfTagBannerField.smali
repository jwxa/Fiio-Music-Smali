.class public Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;
.super Lorg/FiioGetMusicInfo/tag/asf/a;
.source "AsfTagBannerField.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/a;-><init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/a;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 31
    sget-boolean v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v1, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    sget-object v1, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->CONTENT_BRANDING:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    .line 43
    sget-object v2, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    invoke-virtual {v2}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 44
    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lorg/FiioGetMusicInfo/tag/asf/a;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    .line 46
    return-void
.end method


# virtual methods
.method public getImageDataSize()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawDataSize()I

    move-result v0

    return v0
.end method

.method public getRawImageData()[B
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagBannerField;->getRawContent()[B

    move-result-object v0

    return-object v0
.end method

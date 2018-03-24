.class abstract Lorg/FiioGetMusicInfo/tag/asf/a;
.super Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;
.source "AbstractAsfTagImageField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;-><init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract getImageDataSize()I
.end method

.method public abstract getRawImageData()[B
.end method

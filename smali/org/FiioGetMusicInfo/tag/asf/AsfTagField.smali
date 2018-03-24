.class public Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;
.super Ljava/lang/Object;
.source "AsfTagField.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/FiioGetMusicInfo/tag/TagField;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-static {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    .line 74
    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 72
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->createCopy()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;)V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 47
    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyContent(Lorg/FiioGetMusicInfo/tag/TagField;)V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDescriptor()Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawContent()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 2

    .prologue
    .line 127
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No conversion supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setBinaryValue([B)V

    .line 131
    return-void
.end method

.method public isBinary()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommon()Z
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lorg/FiioGetMusicInfo/tag/asf/AsfTag;->COMMON_FIELDS:Ljava/util/Set;

    .line 139
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/FiioGetMusicInfo/tag/asf/AsfFieldKey;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/asf/AsfTagField;->toWrap:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

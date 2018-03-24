.class final Lorg/FiioGetMusicInfo/audio/asf/data/a;
.super Ljava/lang/Object;
.source "MetadataContainer.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/a;->a(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Lorg/FiioGetMusicInfo/audio/asf/data/a;

    .line 42
    return-void
.end method


# virtual methods
.method protected final a(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Lorg/FiioGetMusicInfo/audio/asf/data/a;
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 84
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 50
    :goto_0
    instance-of v3, p1, Lorg/FiioGetMusicInfo/audio/asf/data/a;

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 51
    check-cast p1, Lorg/FiioGetMusicInfo/audio/asf/data/a;

    iget-object v3, p1, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 52
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v0

    .line 54
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v5

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_1
    and-int/2addr v0, v4

    .line 55
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    .line 56
    invoke-virtual {v3}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v3

    if-ne v4, v3, :cond_3

    :goto_2
    and-int/2addr v0, v1

    .line 58
    :cond_0
    return v0

    :cond_1
    move v0, v2

    .line 49
    goto :goto_0

    :cond_2
    move v0, v2

    .line 54
    goto :goto_1

    :cond_3
    move v1, v2

    .line 56
    goto :goto_2
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/a;->b:Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    return v0
.end method

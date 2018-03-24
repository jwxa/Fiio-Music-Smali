.class public Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;
.super Ljava/lang/Object;
.source "ChunkRemover.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/ChunkModifier;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final toRemove:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    .line 33
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 36
    return-void

    .line 33
    :cond_0
    aget-object v2, p1, v0

    .line 34
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isApplicable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;->toRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public modify(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/io/InputStream;Ljava/io/OutputStream;)Lorg/FiioGetMusicInfo/audio/asf/io/f;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/io/f;

    const-wide/16 v2, 0x0

    new-array v1, v6, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {v0, v6, v2, v3, v1}, Lorg/FiioGetMusicInfo/audio/asf/io/f;-><init>(IJ[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V

    .line 63
    :goto_0
    return-object v0

    .line 56
    :cond_0
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/io/ChunkRemover;->isApplicable(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    invoke-static {p2}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->readUINT64(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 60
    const-wide/16 v0, 0x18

    sub-long v0, v2, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    .line 61
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/io/f;

    const/4 v1, -0x1

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    aput-object p1, v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/FiioGetMusicInfo/audio/asf/io/f;-><init>(IJ[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V

    goto :goto_0
.end method

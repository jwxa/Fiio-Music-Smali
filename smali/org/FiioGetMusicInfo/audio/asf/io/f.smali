.class final Lorg/FiioGetMusicInfo/audio/asf/io/f;
.super Ljava/lang/Object;
.source "ModificationResult.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:J

.field private final c:I

.field private final d:Ljava/util/Set;
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
    .line 14
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/io/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(IJ[Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->d:Ljava/util/Set;

    .line 46
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->a:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    array-length v0, p4

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_1
    iput p1, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->c:I

    .line 48
    iput-wide p2, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->b:J

    .line 49
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->d:Ljava/util/Set;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(JLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->d:Ljava/util/Set;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->c:I

    .line 65
    iput-wide p1, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->b:J

    .line 66
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->d:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->c:I

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/GUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/io/f;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

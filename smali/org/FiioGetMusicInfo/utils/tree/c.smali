.class final Lorg/FiioGetMusicInfo/utils/tree/c;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"


# instance fields
.field a:Lorg/FiioGetMusicInfo/utils/tree/d;

.field b:Lorg/FiioGetMusicInfo/utils/tree/d;

.field final synthetic c:Lorg/FiioGetMusicInfo/utils/tree/b;


# direct methods
.method constructor <init>(Lorg/FiioGetMusicInfo/utils/tree/b;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->c:Lorg/FiioGetMusicInfo/utils/tree/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    if-nez v0, :cond_0

    .line 1433
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/utils/tree/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    if-nez v0, :cond_0

    .line 1408
    new-instance v0, Lorg/FiioGetMusicInfo/utils/tree/d;

    invoke-direct {v0, p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/d;-><init>(Lorg/FiioGetMusicInfo/utils/tree/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->a:Lorg/FiioGetMusicInfo/utils/tree/d;

    .line 1413
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    new-instance v1, Lorg/FiioGetMusicInfo/utils/tree/d;

    invoke-direct {v1, p0, p1}, Lorg/FiioGetMusicInfo/utils/tree/d;-><init>(Lorg/FiioGetMusicInfo/utils/tree/c;Ljava/lang/Object;)V

    iput-object v1, v0, Lorg/FiioGetMusicInfo/utils/tree/d;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    .line 1411
    iget-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    iget-object v0, v0, Lorg/FiioGetMusicInfo/utils/tree/d;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    iput-object v0, p0, Lorg/FiioGetMusicInfo/utils/tree/c;->b:Lorg/FiioGetMusicInfo/utils/tree/d;

    goto :goto_0
.end method

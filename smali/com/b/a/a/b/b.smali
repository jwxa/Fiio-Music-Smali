.class public abstract Lcom/b/a/a/b/b;
.super Lcom/b/a/a/b/a;
.source "LimitedMemoryCache.java"


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/b/a/a/b/a;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/b;->c:Ljava/util/List;

    .line 59
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/b/a/a/b/b;->a:I

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p2}, Lcom/b/a/a/b/b;->b(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 76
    iget v3, p0, Lcom/b/a/a/b/b;->a:I

    .line 77
    iget-object v1, p0, Lcom/b/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 78
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 79
    :cond_0
    :goto_0
    add-int v1, v0, v2

    if-gt v1, v3, :cond_2

    .line 85
    iget-object v0, p0, Lcom/b/a/a/b/b;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 88
    const/4 v0, 0x1

    .line 91
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 92
    return v0

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/b/a/a/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    iget-object v4, p0, Lcom/b/a/a/b/b;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    iget-object v0, p0, Lcom/b/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Lcom/b/a/a/b/b;->b(Landroid/graphics/Bitmap;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract b(Landroid/graphics/Bitmap;)I
.end method

.method protected abstract b()Landroid/graphics/Bitmap;
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/b/a/a/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/b/a/a/b/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/b/a/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lcom/b/a/a/b/b;->b(Landroid/graphics/Bitmap;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 106
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/a/b/a;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

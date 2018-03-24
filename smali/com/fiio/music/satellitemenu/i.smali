.class final Lcom/fiio/music/satellitemenu/i;
.super Ljava/lang/Object;
.source "SatelliteMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;ZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/fiio/music/satellitemenu/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/i;->a:Ljava/lang/ref/WeakReference;

    .line 347
    iput-boolean p2, p0, Lcom/fiio/music/satellitemenu/i;->b:Z

    .line 348
    iput-object p3, p0, Lcom/fiio/music/satellitemenu/i;->c:Ljava/util/Map;

    .line 349
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 374
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 376
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/fiio/music/satellitemenu/i;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    .line 379
    iget-boolean v1, p0, Lcom/fiio/music/satellitemenu/i;->b:Z

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->g()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->g()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/i;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/fiio/music/satellitemenu/i;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    .line 357
    iget-boolean v1, p0, Lcom/fiio/music/satellitemenu/i;->b:Z

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->g()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->g()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->d()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

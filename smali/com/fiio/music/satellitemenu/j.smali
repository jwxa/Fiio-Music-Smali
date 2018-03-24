.class final Lcom/fiio/music/satellitemenu/j;
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
            "Lcom/fiio/music/satellitemenu/SatelliteMenu;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;I)V
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/j;->a:Ljava/lang/ref/WeakReference;

    .line 316
    iput p2, p0, Lcom/fiio/music/satellitemenu/j;->b:I

    .line 317
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 330
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c()V

    .line 332
    invoke-static {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Lcom/fiio/music/satellitemenu/h;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->b(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Lcom/fiio/music/satellitemenu/h;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/satellitemenu/j;->b:I

    invoke-interface {v0, v1}, Lcom/fiio/music/satellitemenu/h;->a(I)V

    .line 337
    :cond_0
    return-void
.end method

.class final Lcom/fiio/music/satellitemenu/g;
.super Ljava/lang/Object;
.source "SatelliteMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method public constructor <init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fiio/music/satellitemenu/g;->a:Ljava/lang/ref/WeakReference;

    .line 404
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->getViewToItemMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/satellitemenu/l;

    .line 411
    invoke-virtual {v0}, Lcom/fiio/music/satellitemenu/l;->h()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    :cond_0
    return-void
.end method

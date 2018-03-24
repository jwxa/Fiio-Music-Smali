.class final Lcom/fiio/music/satellitemenu/c;
.super Ljava/lang/Object;
.source "SatelliteMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/satellitemenu/SatelliteMenu;


# direct methods
.method constructor <init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/satellitemenu/c;->a:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/c;->a:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    invoke-static {v0}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->c(Lcom/fiio/music/satellitemenu/SatelliteMenu;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.class final Lcom/fiio/music/slidemenu/f;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/slidemenu/SlidingMenu;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/slidemenu/SlidingMenu;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/slidemenu/f;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    iput p2, p0, Lcom/fiio/music/slidemenu/f;->b:I

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1001
    const-string v1, "SlidingMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "changing layerType. hardware? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/fiio/music/slidemenu/f;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/fiio/music/slidemenu/f;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/slidemenu/f;->b:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1003
    iget-object v0, p0, Lcom/fiio/music/slidemenu/f;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/slidemenu/f;->b:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1004
    iget-object v0, p0, Lcom/fiio/music/slidemenu/f;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/fiio/music/slidemenu/f;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-virtual {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->getSecondaryMenu()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/slidemenu/f;->b:I

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1007
    :cond_0
    return-void

    .line 1001
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class final Lcom/fiio/music/slidemenu/e;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/fiio/music/slidemenu/c;


# instance fields
.field final synthetic a:Lcom/fiio/music/slidemenu/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/fiio/music/slidemenu/SlidingMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/slidemenu/e;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 224
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/fiio/music/slidemenu/e;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->a(Lcom/fiio/music/slidemenu/SlidingMenu;)Lcom/fiio/music/slidemenu/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/fiio/music/slidemenu/e;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->a(Lcom/fiio/music/slidemenu/SlidingMenu;)Lcom/fiio/music/slidemenu/j;

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/slidemenu/e;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->b(Lcom/fiio/music/slidemenu/SlidingMenu;)Lcom/fiio/music/slidemenu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fiio/music/slidemenu/e;->a:Lcom/fiio/music/slidemenu/SlidingMenu;

    invoke-static {v0}, Lcom/fiio/music/slidemenu/SlidingMenu;->b(Lcom/fiio/music/slidemenu/SlidingMenu;)Lcom/fiio/music/slidemenu/h;

    goto :goto_0
.end method

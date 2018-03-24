.class final Lcom/fiio/music/util/cb;
.super Landroid/os/Handler;
.source "QuickTimer.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/ca;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/ca;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/cb;->a:Lcom/fiio/music/util/ca;

    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 22
    iget-object v0, p0, Lcom/fiio/music/util/cb;->a:Lcom/fiio/music/util/ca;

    invoke-static {v0}, Lcom/fiio/music/util/ca;->a(Lcom/fiio/music/util/ca;)Lcom/fiio/music/util/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/fiio/music/util/cb;->a:Lcom/fiio/music/util/ca;

    invoke-static {v0}, Lcom/fiio/music/util/ca;->a(Lcom/fiio/music/util/ca;)Lcom/fiio/music/util/cd;

    move-result-object v0

    invoke-interface {v0}, Lcom/fiio/music/util/cd;->a()V

    .line 24
    iget-object v0, p0, Lcom/fiio/music/util/cb;->a:Lcom/fiio/music/util/ca;

    invoke-static {v0}, Lcom/fiio/music/util/ca;->b(Lcom/fiio/music/util/ca;)V

    .line 26
    :cond_0
    return-void
.end method

.class final Lcom/fiio/music/util/cc;
.super Ljava/util/TimerTask;
.source "QuickTimer.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/ca;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/ca;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/cc;->a:Lcom/fiio/music/util/ca;

    .line 29
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fiio/music/util/cc;->a:Lcom/fiio/music/util/ca;

    invoke-static {v0}, Lcom/fiio/music/util/ca;->c(Lcom/fiio/music/util/ca;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    return-void
.end method

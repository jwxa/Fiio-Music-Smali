.class final Lcom/fiio/music/util/bj;
.super Ljava/util/TimerTask;
.source "MusicManager.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/util/bh;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/bh;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/bj;->a:Lcom/fiio/music/util/bh;

    iput-object p2, p0, Lcom/fiio/music/util/bj;->b:Landroid/os/Handler;

    .line 837
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/fiio/music/util/bj;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 841
    return-void
.end method

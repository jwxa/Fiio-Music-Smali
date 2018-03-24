.class final Lcom/fiio/music/service/i;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/h;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    move-object v0, p2

    check-cast v0, Lcom/fiio/music/service/z;

    .line 202
    invoke-virtual {v0}, Lcom/fiio/music/service/z;->a()Lcom/fiio/music/service/MediaPlayerService;

    move-result-object v0

    .line 201
    invoke-static {v1, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/h;Lcom/fiio/music/service/MediaPlayerService;)V

    .line 203
    iget-object v0, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    invoke-static {v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    invoke-static {v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/l;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/fiio/music/service/l;->a(Landroid/os/IBinder;)V

    .line 206
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/h;Lcom/fiio/music/service/MediaPlayerService;)V

    .line 210
    iget-object v0, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    invoke-static {v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/fiio/music/service/i;->a:Lcom/fiio/music/service/h;

    invoke-static {v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/fiio/music/service/l;->a()V

    .line 213
    :cond_0
    return-void
.end method

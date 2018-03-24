.class final Lcom/fiio/music/service/m;
.super Landroid/os/Handler;
.source "MediaPlayerService.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/m;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 222
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 233
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/service/m;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/m;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/h;->a(Lcom/fiio/music/entity/Song;)V

    .line 227
    iget-object v0, p0, Lcom/fiio/music/service/m;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->c(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/m;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/i;->a(Lcom/fiio/music/entity/Song;)V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

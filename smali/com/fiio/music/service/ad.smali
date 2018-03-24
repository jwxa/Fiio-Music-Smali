.class final Lcom/fiio/music/service/ad;
.super Landroid/os/Handler;
.source "MediaPlayerService.java"


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fiio/music/service/MediaPlayerService;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method public constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5030
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5027
    iput-object v0, p0, Lcom/fiio/music/service/ad;->a:Ljava/lang/ref/WeakReference;

    .line 5028
    iput-object v0, p0, Lcom/fiio/music/service/ad;->b:Lcom/fiio/music/service/MediaPlayerService;

    .line 5031
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fiio/music/service/ad;->a:Ljava/lang/ref/WeakReference;

    .line 5032
    iget-object v0, p0, Lcom/fiio/music/service/ad;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/service/MediaPlayerService;

    iput-object v0, p0, Lcom/fiio/music/service/ad;->b:Lcom/fiio/music/service/MediaPlayerService;

    .line 5033
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 5038
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5072
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 5074
    :cond_0
    :goto_0
    return-void

    .line 5041
    :pswitch_0
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5042
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getCurrentPosition()I

    move-result v3

    move v1, v2

    .line 5045
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/service/ad;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ae(Lcom/fiio/music/service/MediaPlayerService;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5046
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5045
    if-lt v1, v0, :cond_1

    .line 5056
    iget-object v0, p0, Lcom/fiio/music/service/ad;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->C(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/service/ad;

    move-result-object v0

    .line 5057
    const-wide/16 v4, 0x1f4

    .line 5056
    invoke-virtual {v0, v2, v4, v5}, Lcom/fiio/music/service/ad;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 5047
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/ad;->b:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ae(Lcom/fiio/music/service/MediaPlayerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/g/a;

    .line 5048
    invoke-interface {v0, v3}, Lcom/fiio/music/g/a;->a(I)V

    .line 5046
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

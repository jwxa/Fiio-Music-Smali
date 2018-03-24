.class final Lcom/fiio/music/service/x;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method private constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 3655
    iput-object p1, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/service/MediaPlayerService;B)V
    .locals 0

    .prologue
    .line 3655
    invoke-direct {p0, p1}, Lcom/fiio/music/service/x;-><init>(Lcom/fiio/music/service/MediaPlayerService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 3658
    iget-object v0, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3677
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v1, Landroid/content/Intent;

    .line 3683
    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3684
    const-string v2, "flag"

    const/16 v3, 0xe

    .line 3683
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 3682
    invoke-virtual {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3686
    return-void

    .line 3660
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->aa(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 3665
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ab(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 3670
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ac(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 3675
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/service/x;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ad(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 3658
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

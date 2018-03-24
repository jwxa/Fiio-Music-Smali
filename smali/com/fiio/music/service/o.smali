.class final Lcom/fiio/music/service/o;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion()V
    .locals 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;Z)V

    .line 541
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->d(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 542
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 543
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setAutoOnComplete(Z)V

    .line 544
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->e(Lcom/fiio/music/service/MediaPlayerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 574
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->i(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fiio.music.player.brocast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    const-string v2, "flag"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 583
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->j(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 585
    return-void

    .line 546
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->f(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 547
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->g(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->h(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/o;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->h(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

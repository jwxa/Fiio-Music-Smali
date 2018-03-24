.class final Lcom/fiio/music/service/u;
.super Landroid/os/Handler;
.source "MediaPlayerService.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/u;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 4968
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 4971
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 5006
    :goto_0
    return-void

    .line 4973
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 5004
    :pswitch_1
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4975
    :pswitch_2
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    iget-object v0, p0, Lcom/fiio/music/service/u;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->p(Lcom/fiio/music/service/MediaPlayerService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/u;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->q(Lcom/fiio/music/service/MediaPlayerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 4977
    iget-object v0, p0, Lcom/fiio/music/service/u;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->M()V

    goto :goto_0

    .line 4980
    :pswitch_3
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4985
    :pswitch_4
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4992
    :pswitch_5
    const-string v0, "xyz-MediaPlayerService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4971
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 4973
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

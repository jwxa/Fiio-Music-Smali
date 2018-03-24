.class final Lcom/example/root/checkappmusic/c;
.super Landroid/os/Handler;
.source "FiioMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/FiioMediaPlayer;


# direct methods
.method constructor <init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 317
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 365
    const-string v0, "xyz-FiioMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 324
    :sswitch_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->e()V

    .line 325
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$4(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->disposeTheDecoder()V

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " get MEDIA_PLAYBACK_COMPLETE ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget v2, v2, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$6(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$6(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;->onCompletion()V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$7(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    goto :goto_0

    .line 339
    :sswitch_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$8(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$8(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(I)V

    goto :goto_0

    .line 346
    :sswitch_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " get error MEDIA_ERROR ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget v2, v2, Lcom/example/root/checkappmusic/FiioMediaPlayer;->SampleRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$9(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$9(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;->onError(II)Z

    move-result v0

    .line 352
    :goto_1
    iget-object v2, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$6(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$6(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnCompletionListener;->onCompletion()V

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$7(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    goto/16 :goto_0

    .line 360
    :sswitch_4
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$10(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/example/root/checkappmusic/c;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$10(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;->onPrepareOk(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x64 -> :sswitch_3
        0x6f -> :sswitch_4
    .end sparse-switch
.end method

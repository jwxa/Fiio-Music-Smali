.class final Lcom/example/root/checkappmusic/b;
.super Landroid/os/Handler;
.source "FiioMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/FiioMediaPlayer;


# direct methods
.method constructor <init>(Lcom/example/root/checkappmusic/FiioMediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    .line 269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 273
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->c()I

    move-result v1

    iput v1, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$0(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget v1, v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    iget-object v2, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v2

    long-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    .line 286
    :goto_1
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$2(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iput-boolean v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 288
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iput-boolean v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 289
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 290
    iput v5, v0, Landroid/os/Message;->what:I

    .line 291
    iget-object v1, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$2(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget v1, v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->realDuration:I

    iget-object v2, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v2

    long-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    goto :goto_1

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget v1, v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mDuration:I

    iget-object v2, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v2

    long-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playLenthCount:I

    goto :goto_1

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$0(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CompleteFlag0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CompleteFlag1:Z

    if-eqz v0, :cond_0

    .line 298
    :cond_5
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 300
    :cond_6
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iput-boolean v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 301
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iput-boolean v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 302
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iput-boolean v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CompleteFlag1:Z

    .line 303
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iput-boolean v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->CompleteFlag0:Z

    .line 309
    :goto_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 310
    iput v5, v0, Landroid/os/Message;->what:I

    .line 311
    iget-object v1, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v1, v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 305
    :cond_7
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "CUE --- Complete --- goGaplessPlayBack true"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/example/root/checkappmusic/b;->a:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$3(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 307
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fiio/music/util/ap;->b(Z)V

    goto :goto_2

    .line 273
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

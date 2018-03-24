.class final Lcom/example/root/checkappmusic/e;
.super Landroid/os/Handler;
.source "FiioMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/example/root/checkappmusic/d;


# direct methods
.method constructor <init>(Lcom/example/root/checkappmusic/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/4 v8, 0x2

    const-wide/16 v12, 0x1f4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v0, v3, :cond_c

    .line 421
    :cond_0
    const-string v0, "xyz-ChildThread"

    const-string v3, "Going to Play..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$12(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 424
    const-string v0, "xyz-FiioMediaPlayer"

    const-string v3, "\u63a5\u6536\u5230 Play \u5e7f\u64ad..\u5f00\u59cb\u51c6\u5907 write\u3002\u3002\u3002"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioStart()V

    .line 428
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    .line 430
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->b()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 432
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$13(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$14(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 450
    :goto_1
    const-string v0, "xyz-ChildThread"

    const-string v3, "Before While..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$15(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 453
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    if-nez v0, :cond_6

    .line 638
    const-string v0, "xyz-ChildThread"

    const-string v1, "Out While ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_2
    :goto_3
    return-void

    .line 435
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    goto :goto_1

    .line 443
    :cond_4
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$13(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$14(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    goto :goto_1

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$16(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 465
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$13(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 469
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 475
    :cond_7
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$17(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 477
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$18(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    .line 481
    if-nez v0, :cond_b

    .line 483
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    if-nez v0, :cond_8

    .line 485
    const-wide/16 v4, 0x14

    :try_start_2
    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 492
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v4}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v4

    invoke-static {v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$19(Lcom/example/root/checkappmusic/FiioMediaPlayer;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioTrack;->write([BII)I

    move v0, v1

    .line 577
    :goto_5
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$0(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 578
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gtz v3, :cond_9

    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/ap;->b()Z

    move-result v3

    if-nez v3, :cond_9

    move v0, v2

    .line 617
    :cond_9
    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v0, :cond_1

    .line 620
    :try_start_3
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$20(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 623
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 629
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-boolean v1, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 630
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-boolean v1, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 631
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 632
    iput v8, v0, Landroid/os/Message;->what:I

    .line 633
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget-object v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 488
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 495
    :cond_b
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x4e2

    cmp-long v0, v4, v6

    if-gez v0, :cond_1e

    move v0, v2

    .line 496
    goto/16 :goto_5

    .line 627
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 639
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-eq v0, v3, :cond_d

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    .line 640
    :cond_d
    const-string v0, "xyz-ChildThread"

    const-string v3, "Going to Play..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$12(Lcom/example/root/checkappmusic/FiioMediaPlayer;Z)V

    .line 642
    const-string v0, "xyz-FiioMediaPlayer"

    const-string v3, "\u63a5\u6536\u5230 Play \u5e7f\u64ad..\u5f00\u59cb\u51c6\u5907 write\u3002\u3002\u3002"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :try_start_4
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$21(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$22(Lcom/example/root/checkappmusic/FiioMediaPlayer;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 649
    :goto_7
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->audioStart()V

    .line 650
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ctrlTimer()V

    .line 651
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/counttimer/CountDownTimerService;->b()I

    move-result v0

    if-eq v0, v2, :cond_16

    .line 653
    const-wide/16 v4, 0xa

    :try_start_5
    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 658
    :goto_8
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 665
    :cond_e
    :goto_9
    :try_start_6
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 666
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;
    :try_end_6
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_6 .. :try_end_6} :catch_7

    if-nez v0, :cond_12

    .line 668
    :cond_10
    const-wide/16 v4, 0xc8

    :try_start_7
    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 672
    :try_start_8
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    if-nez v0, :cond_12

    .line 673
    :cond_11
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$21(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$22(Lcom/example/root/checkappmusic/FiioMediaPlayer;Ljava/lang/String;)V

    .line 677
    :cond_12
    :goto_a
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->samples:[[I

    if-nez v0, :cond_13

    .line 678
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v0, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->channels:I

    const/16 v4, 0x800

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->samples:[[I

    .line 680
    :cond_13
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget-object v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->samples:[[I

    invoke-virtual {v0, v3}, Lorg/justcodecs/dsd/DecoderInt;->decodePCM([[I)I
    :try_end_8
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v7

    .line 681
    if-lez v7, :cond_2

    move v6, v1

    move v0, v1

    .line 685
    :goto_b
    if-lt v6, v7, :cond_1a

    .line 697
    :try_start_9
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->getTrack()Landroid/media/AudioTrack;

    move-result-object v3

    iget-object v4, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v4}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v4

    iget-object v4, v4, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playBuffer:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_9 .. :try_end_9} :catch_7

    move v3, v1

    .line 704
    :goto_c
    :try_start_a
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-wide v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sampleCount:J

    int-to-long v6, v7

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sampleCount:J

    .line 705
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->testSeek:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-wide v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->sampleCount:J

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    iget v0, v0, Lorg/justcodecs/dsd/Decoder$PCMFormat;->sampleRate:I

    mul-int/lit8 v0, v0, 0xa

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_14

    .line 706
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    iget-object v4, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v4}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v4

    invoke-static {v4}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v4

    invoke-virtual {v4}, Lorg/justcodecs/dsd/DecoderInt;->getSampleRate()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v6}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v6

    iget v6, v6, Lcom/example/root/checkappmusic/FiioMediaPlayer;->testSeek:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/justcodecs/dsd/DecoderInt;->seek(J)V

    .line 707
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v4, 0x0

    iput v4, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->testSeek:I

    .line 713
    :cond_14
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J
    :try_end_a
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_a .. :try_end_a} :catch_7

    move-result-wide v4

    cmp-long v0, v4, v12

    if-gtz v0, :cond_1d

    .line 715
    const-wide/16 v4, 0x12c

    :try_start_b
    invoke-static {v4, v5}, Lcom/example/root/checkappmusic/d;->sleep(J)V

    .line 717
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$1(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lcom/fiio/music/counttimer/CountDownTimerService;

    invoke-static {}, Lcom/fiio/music/counttimer/CountDownTimerService;->a()J
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_b .. :try_end_b} :catch_7

    move-result-wide v4

    cmp-long v0, v4, v12

    if-gtz v0, :cond_1d

    move v0, v2

    .line 725
    :goto_d
    if-eqz v0, :cond_15

    .line 726
    :try_start_c
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    if-eqz v0, :cond_15

    .line 727
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->IsPlaying:Z

    .line 728
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    .line 729
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 730
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 731
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget-object v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 735
    :cond_15
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-boolean v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z
    :try_end_c
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_c .. :try_end_c} :catch_7

    if-nez v0, :cond_e

    goto/16 :goto_3

    .line 647
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;->printStackTrace()V

    goto/16 :goto_7

    .line 656
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 660
    :cond_16
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->ChileThreadNeedRepead:Z

    goto/16 :goto_9

    :catch_6
    move-exception v0

    .line 672
    :try_start_d
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    if-nez v0, :cond_12

    .line 673
    :cond_17
    iget-object v0, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v0}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    invoke-static {v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$21(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$22(Lcom/example/root/checkappmusic/FiioMediaPlayer;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_a

    .line 738
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/Decoder$DecodeException;->printStackTrace()V

    goto/16 :goto_3

    .line 671
    :catchall_0
    move-exception v0

    .line 672
    :try_start_e
    iget-object v1, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v1}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$5(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Lorg/justcodecs/dsd/DecoderInt;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v1}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/example/root/checkappmusic/FiioMediaPlayer;->pcmf:Lorg/justcodecs/dsd/Decoder$PCMFormat;

    if-nez v1, :cond_19

    .line 673
    :cond_18
    iget-object v1, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v1}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v2}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$21(Lcom/example/root/checkappmusic/FiioMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->access$22(Lcom/example/root/checkappmusic/FiioMediaPlayer;Ljava/lang/String;)V

    .line 675
    :cond_19
    throw v0

    :cond_1a
    move v5, v1

    .line 686
    :goto_e
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->channels:I

    if-lt v5, v3, :cond_1b

    .line 685
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_b

    .line 688
    :cond_1b
    iget-object v3, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v3}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v3

    iget-object v3, v3, Lcom/example/root/checkappmusic/FiioMediaPlayer;->samples:[[I

    aget-object v3, v3, v5

    aget v4, v3, v6

    shr-int/lit8 v4, v4, 0x8

    aput v4, v3, v6

    move v3, v0

    move v0, v1

    .line 689
    :goto_f
    iget-object v4, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v4}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v4

    iget v4, v4, Lcom/example/root/checkappmusic/FiioMediaPlayer;->bytesChannelSample:I

    if-lt v0, v4, :cond_1c

    .line 686
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v3

    goto :goto_e

    .line 690
    :cond_1c
    iget-object v4, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v4}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v4

    iget-object v8, v4, Lcom/example/root/checkappmusic/FiioMediaPlayer;->playBuffer:[B

    add-int/lit8 v4, v3, 0x1

    iget-object v9, p0, Lcom/example/root/checkappmusic/e;->a:Lcom/example/root/checkappmusic/d;

    invoke-static {v9}, Lcom/example/root/checkappmusic/d;->a(Lcom/example/root/checkappmusic/d;)Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v9

    iget-object v9, v9, Lcom/example/root/checkappmusic/FiioMediaPlayer;->samples:[[I

    aget-object v9, v9, v5

    aget v9, v9, v6

    mul-int/lit8 v10, v0, 0x8

    shr-int/2addr v9, v10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    .line 689
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_f

    .line 699
    :catch_8
    move-exception v0

    .line 701
    const-string v3, "sin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sacd audioTrack write error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 702
    goto/16 :goto_c

    .line 721
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_e .. :try_end_e} :catch_7

    :cond_1d
    move v0, v3

    goto/16 :goto_d

    :cond_1e
    move v0, v1

    goto/16 :goto_5
.end method

.class final Lcom/fiio/music/activity/bz;
.super Landroid/content/BroadcastReceiver;
.source "ListMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/ListMainActivity;B)V
    .locals 0

    .prologue
    .line 1462
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/bz;-><init>(Lcom/fiio/music/activity/ListMainActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1465
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fiio.music.sleep_countdown_time_change"

    if-ne v0, v1, :cond_3

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1468
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$25()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1469
    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$26(J)V

    .line 1471
    const-wide/16 v0, 0xbb8

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$27(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v0

    if-gt v0, v5, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$28(Lcom/fiio/music/activity/ListMainActivity;)V

    goto :goto_0

    .line 1478
    :cond_2
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sleepProgressValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$27(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$27(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$29(Lcom/fiio/music/activity/ListMainActivity;I)V

    .line 1481
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$30(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1482
    const-string v1, "SLEEP_PROGRESS"

    iget-object v2, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$27(Lcom/fiio/music/activity/ListMainActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1483
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1485
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fiio.music.sleep_puretone_mode"

    if-ne v0, v1, :cond_5

    .line 1486
    const-string v0, "long"

    const-string v1, "\u63a5\u6536\u5230\u81ea\u52a8\u5173\u6682\u505c\u7684\u5e7f\u64ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1488
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 1490
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$30(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1491
    const-string v1, "SLEEP_PROGRESS"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1492
    const-string v1, "SLEEP_SWITCH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1495
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fiio.music.sleep_shutdown_app"

    if-ne v0, v1, :cond_0

    .line 1496
    const-string v0, "long"

    const-string v1, "\u63a5\u6536\u5230\u81ea\u52a8\u5173\u95ed\u64cd\u7684\u5e7f\u64ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1498
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1499
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoShutdown()V

    .line 1500
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->e()V

    .line 1501
    const-string v0, "long"

    const-string v1, "\u6267\u884clistMainActivity\u7684finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/fiio/music/activity/bz;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->finish()V

    .line 1503
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0
.end method

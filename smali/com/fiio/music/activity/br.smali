.class final Lcom/fiio/music/activity/br;
.super Landroid/content/BroadcastReceiver;
.source "ListMainActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;

.field private final synthetic b:Lcom/fiio/music/c/b;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/c/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/br;->b:Lcom/fiio/music/c/b;

    .line 440
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 443
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action of sdCard\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  isEjectBroadCastAfterShutdownBroadCast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ListMainActivity;->access$32(Lcom/fiio/music/activity/ListMainActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 444
    const-string v2, "    SystemSetting.KEY_AUTO_SCAN):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/fiio/music/c/b;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Lcom/fiio/music/util/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "double TF cards -- sd2 eject"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    const-string v1, "file:///mnt/external_sd2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "sin"

    const-string v1, "go to eject"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->V()V

    .line 455
    :cond_0
    invoke-static {}, Lcom/fiio/music/util/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fiio/music/util/l;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$33(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "UPDATE_MODE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$34(Lcom/fiio/music/activity/ListMainActivity;Ljava/lang/Boolean;)V

    .line 467
    iget-object v0, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$35(Lcom/fiio/music/activity/ListMainActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$36(Lcom/fiio/music/activity/ListMainActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 471
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 472
    iget-object v0, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$32(Lcom/fiio/music/activity/ListMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    const-string v0, "long"

    const-string v1, "//\u5173\u673a\u5e7f\u64ad\u540e\u4ea7\u751f\u7684\u4e00\u4e2aeject\u5e7f\u64ad \u4e0d\u9700\u8981\u505a\u64cd\u4f5c"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3
    :goto_1
    return-void

    .line 460
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 474
    :cond_4
    sget-boolean v0, Lcom/fiio/music/c/b;->b:Z

    if-eqz v0, :cond_5

    .line 476
    const-string v0, "long"

    const-string v1, "\u6df1\u5ea6\u4f11\u7720\u540e\u7684\u7b2c\u4e00\u4e2aeject\u5e7f\u64ad \u4e0d\u9700\u8981\u505a\u64cd\u4f5c \u7531\u4e8e\u5524\u9192\u65f6\u4f1a\u6709\u63d2\u5361\u5e7f\u64ad\u6240\u4ee5\u8fd9\u91cc\u4e0d\u505a\u64cd\u4f5c"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 478
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    iget-object v1, p0, Lcom/fiio/music/activity/br;->b:Lcom/fiio/music/c/b;

    const-string v2, "sdCardStatusChanged"

    invoke-virtual {v1, v2, v4}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 482
    iget-object v1, p0, Lcom/fiio/music/activity/br;->b:Lcom/fiio/music/c/b;

    const-string v2, "sdCardStatus"

    const-string v3, "EJECT"

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v1

    const-string v2, "activity.ScanningActivity"

    invoke-virtual {v1, v2}, Lcom/fiio/music/a/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 485
    new-instance v0, Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0}, Lcom/fiio/music/activity/ScanningActivity;-><init>()V

    .line 486
    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ScanningActivity;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 488
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 492
    :cond_7
    sget-boolean v0, Lcom/fiio/music/c/b;->b:Z

    if-eqz v0, :cond_8

    .line 493
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiio/music/c/b;->b:Z

    .line 494
    const-string v0, "long"

    const-string v1, "\u6df1\u5ea6\u4f11\u7720\u540e\u7684\u7b2c\u4e00\u4e2aMOUNTED\u5e7f\u64ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 496
    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-class v2, Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    iget-object v1, p0, Lcom/fiio/music/activity/br;->b:Lcom/fiio/music/c/b;

    const-string v2, "sdCardStatusChanged"

    invoke-virtual {v1, v2, v4}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Z)V

    .line 500
    iget-object v1, p0, Lcom/fiio/music/activity/br;->b:Lcom/fiio/music/c/b;

    const-string v2, "sdCardStatus"

    const-string v3, "MOUNTED"

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {v4}, Lcom/fiio/music/activity/ListMainActivity;->access$37(Z)V

    .line 502
    invoke-static {}, Lcom/fiio/music/a/c;->a()Lcom/fiio/music/a/c;

    move-result-object v1

    const-string v2, "activity.ScanningActivity"

    invoke-virtual {v1, v2}, Lcom/fiio/music/a/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 504
    new-instance v0, Lcom/fiio/music/activity/ScanningActivity;

    invoke-direct {v0}, Lcom/fiio/music/activity/ScanningActivity;-><init>()V

    .line 505
    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$1(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ScanningActivity;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 507
    :cond_9
    iget-object v1, p0, Lcom/fiio/music/activity/br;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/ListMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

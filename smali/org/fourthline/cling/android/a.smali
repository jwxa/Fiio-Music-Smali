.class final Lorg/fourthline/cling/android/a;
.super Landroid/content/BroadcastReceiver;
.source "AndroidRouter.java"


# instance fields
.field final synthetic a:Lorg/fourthline/cling/android/AndroidRouter;


# direct methods
.method constructor <init>(Lorg/fourthline/cling/android/AndroidRouter;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "isFailover"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    const-string v1, "otherNetwork"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v7

    const-string v8, "Connectivity change detected..."

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "EXTRA_NO_CONNECTIVITY: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EXTRA_REASON: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "EXTRA_IS_FAILOVER: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EXTRA_NETWORK_INFO: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "none"

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "EXTRA_OTHER_NETWORK_INFO: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v1, "none"

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "EXTRA_EXTRA_INFO: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "extraInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v1, v1, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    move v1, v2

    .line 285
    :goto_1
    const/4 v4, 0x3

    if-le v1, v4, :cond_4

    .line 289
    :cond_3
    iget-object v1, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v1, v1, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    move v1, v2

    :goto_2
    if-eqz v1, :cond_9

    .line 290
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "No actual network change... ignoring event!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_4
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 279
    invoke-static {}, Lorg/fourthline/cling/android/AndroidRouter;->access$0()Ljava/util/logging/Logger;

    move-result-object v0

    .line 280
    const-string v4, "%s => NONE network transition, waiting for new network... retry #%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 281
    iget-object v6, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v6, v6, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 279
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lorg/fourthline/cling/android/NetworkUtils;->getConnectedNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 284
    if-nez v0, :cond_3

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_5
    if-eqz v1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v1, v4, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_2

    .line 293
    :cond_9
    :try_start_1
    iget-object v1, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v2, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    iget-object v2, v2, Lorg/fourthline/cling/android/AndroidRouter;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v0}, Lorg/fourthline/cling/android/AndroidRouter;->onNetworkTypeChange(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)V
    :try_end_1
    .catch Lorg/fourthline/cling/transport/RouterException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    iget-object v1, p0, Lorg/fourthline/cling/android/a;->a:Lorg/fourthline/cling/android/AndroidRouter;

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/android/AndroidRouter;->handleRouterExceptionOnNetworkTypeChange(Lorg/fourthline/cling/transport/RouterException;)V

    goto/16 :goto_0

    .line 277
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

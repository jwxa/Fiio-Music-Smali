.class final Lcom/fiio/music/activity/s;
.super Ljava/lang/Object;
.source "DlnaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/DlnaActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/DlnaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 469
    iget-object v0, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$4(Lcom/fiio/music/activity/DlnaActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 470
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 474
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 476
    :try_start_0
    const-string v2, "%d.%d.%d.%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 477
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 478
    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 476
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 480
    iget-object v2, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/activity/DlnaActivity;->access$8(Lcom/fiio/music/activity/DlnaActivity;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/activity/DlnaActivity;->access$9(Lcom/fiio/music/activity/DlnaActivity;Ljava/lang/String;)V

    .line 482
    const-string v2, "xyz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hostName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/DlnaActivity;->access$10(Lcom/fiio/music/activity/DlnaActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",hostAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/DlnaActivity;->access$11(Lcom/fiio/music/activity/DlnaActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 484
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 485
    iget-object v0, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$12(Lcom/fiio/music/activity/DlnaActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/fiio/music/activity/s;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$12(Lcom/fiio/music/activity/DlnaActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

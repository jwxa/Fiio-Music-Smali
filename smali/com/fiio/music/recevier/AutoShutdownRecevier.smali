.class public Lcom/fiio/music/recevier/AutoShutdownRecevier;
.super Landroid/content/BroadcastReceiver;
.source "AutoShutdownRecevier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->cancelAutoShutdown()V

    move-object v0, p1

    .line 26
    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->e()V

    .line 27
    check-cast p1, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {p1}, Lcom/fiio/music/activity/ListMainActivity;->finish()V

    .line 29
    return-void
.end method

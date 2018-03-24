.class final Lcom/fiio/music/activity/r;
.super Landroid/os/Handler;
.source "DlnaActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/DlnaActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/DlnaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/r;->a:Lcom/fiio/music/activity/DlnaActivity;

    .line 434
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const v2, 0x7f0c0004

    const/4 v1, 0x0

    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 460
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 461
    return-void

    .line 440
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/r;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$4(Lcom/fiio/music/activity/DlnaActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 446
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/fiio/music/activity/r;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/DlnaActivity;->access$5(Lcom/fiio/music/activity/DlnaActivity;Ljava/net/InetAddress;)V

    .line 448
    iget-object v1, p0, Lcom/fiio/music/activity/r;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/DlnaActivity;->access$6(Lcom/fiio/music/activity/DlnaActivity;)V

    .line 449
    const-string v1, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inetAddress="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/r;->a:Lcom/fiio/music/activity/DlnaActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/DlnaActivity;->access$4(Lcom/fiio/music/activity/DlnaActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class final Lcom/fiio/music/activity/fb;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;

.field private final synthetic b:Lcom/fiio/music/entity/Song;

.field private final synthetic c:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    iput-object p3, p0, Lcom/fiio/music/activity/fb;->c:Lcom/fiio/music/custom/f;

    .line 2540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2544
    iget-object v2, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    .line 2547
    iget-object v3, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->P()V

    .line 2549
    iget-object v3, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v3

    .line 2550
    if-lez v3, :cond_3

    .line 2551
    iget-object v4, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$36(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/b/k;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fiio/music/b/k;->a([Ljava/lang/Integer;)I

    move-result v3

    .line 2552
    if-ltz v3, :cond_3

    .line 2556
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2575
    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2577
    iget-object v2, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    .line 2578
    iget-object v3, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v3

    .line 2576
    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->deleteForResetPlayerList(Ljava/lang/String;ILjava/lang/String;)V

    .line 2579
    new-instance v0, Landroid/content/Intent;

    .line 2580
    const-string v1, "com.fiio.music.player.brocast"

    .line 2579
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2581
    const-string v1, "flag"

    .line 2582
    const/4 v2, 0x7

    .line 2581
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2583
    iget-object v1, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2588
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    .line 2589
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2591
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2594
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 2595
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 2596
    return-void

    .line 2558
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 2559
    if-nez v0, :cond_2

    .line 2560
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    .line 2561
    iget-object v1, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    .line 2562
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    .line 2561
    invoke-virtual {v0}, Lcom/fiio/music/service/h;->E()V

    goto :goto_1

    .line 2564
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2565
    iget-object v2, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->l()I

    move-result v2

    .line 2566
    iget-object v3, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v3

    .line 2564
    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->deleteForResetPlayerList(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 2571
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/fb;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fb;->b:Lcom/fiio/music/entity/Song;

    .line 2572
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    .line 2571
    invoke-virtual {v0}, Lcom/fiio/music/service/h;->E()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0

    .line 2556
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

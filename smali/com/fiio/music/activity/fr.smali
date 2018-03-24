.class final Lcom/fiio/music/activity/fr;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f02059d

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1876
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1467
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$19(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00ed

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 1469
    :cond_1
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1470
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u901a\u7528app\uff0c\u672a\u652f\u6301EQ"

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 1472
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1473
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1474
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/activity/EqActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1475
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1484
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1490
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v3, Lcom/fiio/music/activity/ListMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1491
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->finish()V

    goto :goto_0

    .line 1496
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1497
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1499
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-nez v1, :cond_3

    .line 1500
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".cue"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1502
    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 1503
    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    .line 1504
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    goto/16 :goto_0

    .line 1510
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1512
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1513
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1517
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1518
    const-string v1, "Song"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1519
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1520
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1521
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1515
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->i()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$24(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto :goto_1

    .line 1523
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1525
    const-string v1, "Song"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1526
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1527
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1528
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1529
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1531
    const-string v1, "Song"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1532
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1533
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1534
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1540
    :pswitch_5
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->z()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1541
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 1542
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1546
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->a(I)V

    .line 1547
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$27(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 1548
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$28()[I

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1553
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-eq v0, v6, :cond_8

    .line 1554
    invoke-static {}, Lcom/fiio/music/util/ap;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->T()V

    goto/16 :goto_0

    .line 1544
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$26(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$25(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto :goto_2

    .line 1558
    :cond_8
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "\u5355\u66f2\u5faa\u73af,\u65e0\u7f1d\u8fc7\u6ee4"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1570
    :pswitch_6
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1572
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1574
    if-eqz v0, :cond_9

    .line 1575
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 1579
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "FiiOMusic"

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1581
    const-string v1, "autosearchlrc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1583
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flagIsAuto = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->o()I

    move-result v1

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_b

    .line 1586
    if-eqz v0, :cond_a

    .line 1587
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01d7

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$31(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1603
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1604
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1605
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->o()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_10

    .line 1607
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    .line 1608
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v5, :cond_d

    .line 1609
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1589
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01df

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1594
    :cond_b
    if-eqz v0, :cond_c

    .line 1595
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01d6

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1597
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01df

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1611
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v6, :cond_e

    .line 1612
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1614
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v7, :cond_f

    .line 1615
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1617
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1623
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-ne v0, v6, :cond_14

    .line 1624
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    .line 1625
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1626
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 1627
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1629
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v6, :cond_12

    .line 1630
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1632
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v7, :cond_13

    .line 1633
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1635
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1640
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_0

    .line 1644
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1647
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1646
    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    .line 1647
    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->o()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_16

    .line 1649
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    goto/16 :goto_0

    .line 1651
    :cond_16
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->access$32(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    goto/16 :goto_0

    .line 1656
    :pswitch_7
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->playOrPause()V

    goto/16 :goto_0

    .line 1664
    :pswitch_8
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "FiiOMusic"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1665
    const-string v1, "autosearchlrc"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1666
    if-eqz v0, :cond_19

    .line 1667
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01d7

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1675
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1677
    if-eqz v0, :cond_17

    .line 1678
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 1680
    :cond_17
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$31(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1681
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1a

    .line 1683
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1696
    :cond_18
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1697
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1698
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto/16 :goto_0

    .line 1669
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01df

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1685
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v6, :cond_1b

    .line 1686
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02059c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_5

    .line 1688
    :cond_1b
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    if-ne v0, v7, :cond_1c

    .line 1689
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_5

    .line 1691
    :cond_1c
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$9(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 1692
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$10(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_5

    .line 1699
    :cond_1d
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->isTabAPlayingSong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto/16 :goto_0

    .line 1705
    :pswitch_9
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$33(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1708
    :pswitch_a
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1714
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1715
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1716
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1717
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v3, 0x7f0c00b9

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_0

    .line 1723
    :cond_1e
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1725
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$34(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/util/bw;)V

    .line 1726
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1728
    if-eqz v0, :cond_22

    .line 1730
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$36(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$37(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1731
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    .line 1732
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 1733
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1732
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1731
    if-nez v0, :cond_1f

    .line 1736
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    .line 1748
    :cond_1f
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1749
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1739
    :cond_20
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    .line 1740
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 1741
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1740
    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1739
    if-nez v0, :cond_1f

    .line 1744
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto :goto_6

    .line 1751
    :cond_21
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1754
    :cond_22
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$36(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$37(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1755
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1756
    if-nez v0, :cond_23

    .line 1758
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    .line 1785
    :cond_23
    :goto_7
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1786
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1761
    :cond_24
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->K()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1762
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1763
    if-nez v0, :cond_23

    .line 1765
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    .line 1766
    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1765
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto :goto_7

    .line 1768
    :cond_25
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1769
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1770
    if-nez v0, :cond_23

    .line 1772
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    .line 1773
    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1772
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto/16 :goto_7

    .line 1776
    :cond_26
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$35(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 1777
    if-nez v0, :cond_23

    .line 1779
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    .line 1780
    iget-object v3, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f0

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1779
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto/16 :goto_7

    .line 1788
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$38(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1793
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/activity/SearchSongActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1794
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1795
    const-string v1, "activity"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1796
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1799
    :pswitch_c
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1800
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 1801
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, v5}, Lcom/fiio/music/activity/PlayerMainActivity;->access$40(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 1803
    :cond_28
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$41(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/util/bz;

    move-result-object v0

    const-string v1, "playMainPageFlag"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bz;->a(Ljava/lang/String;I)V

    .line 1804
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$39(Lcom/fiio/music/activity/PlayerMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->swipPlayerMainView(I)V

    goto/16 :goto_0

    .line 1811
    :pswitch_d
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1816
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1817
    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1819
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "emptyText = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  : justStr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    :cond_29
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1823
    const-string v1, "playingSong"

    iget-object v2, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1824
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1830
    :pswitch_e
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$42(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1831
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$42(Lcom/fiio/music/activity/PlayerMainActivity;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1833
    :cond_2a
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$43(Lcom/fiio/music/activity/PlayerMainActivity;)V

    .line 1834
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$44(Lcom/fiio/music/activity/PlayerMainActivity;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->c(I)V

    goto/16 :goto_0

    .line 1841
    :pswitch_f
    new-instance v0, Lcom/fiio/music/h/h;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-direct {v0, v1}, Lcom/fiio/music/h/h;-><init>(Landroid/content/Context;)V

    .line 1842
    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/PlayerMainActivity;->lyricCallBack:Lcom/fiio/music/h/j;

    invoke-virtual {v0, v1}, Lcom/fiio/music/h/h;->a(Lcom/fiio/music/h/j;)V

    .line 1843
    invoke-virtual {v0}, Lcom/fiio/music/h/h;->show()V

    goto/16 :goto_0

    .line 1846
    :pswitch_10
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1847
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$45(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1849
    :cond_2b
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$31(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1852
    :pswitch_11
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->decreaseLyricFontSize()V

    .line 1853
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter;->getLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$47(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 1854
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1857
    :pswitch_12
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->increaseLyricFontSize()V

    .line 1858
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/LyricAdapter;->getLyricFontSize()Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$47(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/adapter/LyricAdapter$LyricFontSize;)V

    .line 1859
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 1863
    :pswitch_13
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_0

    .line 1865
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0247

    if-ne v0, v1, :cond_2c

    .line 1868
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->d()V

    .line 1869
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1870
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0248

    if-ne v0, v1, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/h/e;->c()V

    .line 1873
    iget-object v0, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fr;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$15(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/h/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0233
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_0
        :pswitch_3
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

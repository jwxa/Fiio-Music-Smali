.class final Lcom/fiio/music/activity/ep;
.super Landroid/content/BroadcastReceiver;
.source "MyMusicListActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;B)V
    .locals 0

    .prologue
    .line 1608
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/ep;-><init>(Lcom/fiio/music/activity/MyMusicListActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 1611
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1613
    if-nez v0, :cond_2

    .line 1614
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$23(Lcom/fiio/music/activity/MyMusicListActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$24(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1617
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$25(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1618
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$26(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$26(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$27(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 1810
    :cond_1
    :goto_0
    return-void

    .line 1625
    :cond_2
    if-ne v0, v7, :cond_9

    .line 1626
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$28(Lcom/fiio/music/activity/MyMusicListActivity;Lcom/fiio/music/entity/Song;)V

    .line 1627
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1628
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$30(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1632
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$31(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$32(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V

    .line 1634
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$33(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1635
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$34(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$33(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1636
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$35(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$36(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$37(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/util/List;)V

    .line 1639
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1640
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$38(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$39(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1643
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "albumPath"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    :goto_2
    if-nez v0, :cond_5

    .line 1650
    const-string v0, "drawable://2130837972"

    .line 1652
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->imageLoader:Lcom/b/a/b/f;

    .line 1653
    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$41(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$42(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/b/a/b/d;

    move-result-object v3

    .line 1652
    invoke-virtual {v1, v0, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 1654
    const-string v0, "duration"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1655
    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1656
    if-lez v0, :cond_6

    .line 1657
    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 1659
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 1661
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$43(Lcom/fiio/music/activity/MyMusicListActivity;)V

    goto/16 :goto_0

    .line 1630
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "songId"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$30(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    goto/16 :goto_1

    .line 1647
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/MyMusicListActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1662
    :cond_9
    if-ne v0, v8, :cond_1b

    .line 1663
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$28(Lcom/fiio/music/activity/MyMusicListActivity;Lcom/fiio/music/entity/Song;)V

    .line 1664
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1665
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$30(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1666
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$44(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V

    .line 1670
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "currentPosition"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$24(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1671
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "duration"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$25(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1672
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$26(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-lez v0, :cond_a

    .line 1673
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$26(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setMax(I)V

    .line 1676
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$27(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 1677
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "songName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$31(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V

    .line 1678
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "artistName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$32(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$33(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1680
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$34(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$33(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$35(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$36(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->isTabAPlayingSong()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 1684
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$34(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1685
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$35(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/widget/AlwaysMarqueeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const v2, 0x7f0c00e5

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$37(Lcom/fiio/music/activity/MyMusicListActivity;Ljava/util/List;)V

    .line 1690
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1691
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$38(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bl;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$39(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    .line 1692
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "albumPath"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1698
    :goto_4
    if-nez v0, :cond_f

    .line 1699
    const-string v0, "drawable://2130837972"

    .line 1701
    :cond_f
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->imageLoader:Lcom/b/a/b/f;

    .line 1702
    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$41(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$42(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/b/a/b/d;

    move-result-object v3

    .line 1701
    invoke-virtual {v1, v0, v2, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/b/a/b/d;)V

    .line 1703
    const-string v0, "playerState"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1704
    if-eq v0, v4, :cond_10

    if-ne v0, v5, :cond_17

    .line 1705
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_14

    .line 1706
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1728
    :cond_11
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$8(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1729
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    .line 1730
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerState(I)V

    goto/16 :goto_0

    .line 1668
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-string v1, "songId"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$30(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    goto/16 :goto_3

    .line 1696
    :cond_13
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$29(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/MyMusicListActivity;->imageLoader:Lcom/b/a/b/f;

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1707
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_15

    .line 1708
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_5

    .line 1709
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_16

    .line 1710
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1711
    :cond_16
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 1712
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1716
    :cond_17
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_18

    .line 1717
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1718
    :cond_18
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_19

    .line 1719
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1720
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1a

    .line 1721
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1722
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 1723
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 1732
    :cond_1b
    if-ne v0, v4, :cond_1c

    .line 1735
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$43(Lcom/fiio/music/activity/MyMusicListActivity;)V

    goto/16 :goto_0

    .line 1736
    :cond_1c
    if-eq v0, v5, :cond_1

    .line 1738
    const/16 v1, 0x9

    if-ne v0, v1, :cond_26

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86\uff0c\uff0c\uff0c\uff0c\uff0ccurrentPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$27(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1740
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u64ad\u653e\u754c\u9762\u63a5\u6536\u5230 FLAG_UNLATCH_SD_CARD--->\u62d4\u51faSD\u5361\u4e86***state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;)V

    .line 1742
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$20(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/RoundProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$27(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/RoundProgressBar;->setProgress(I)V

    .line 1743
    if-eq v0, v4, :cond_1d

    if-ne v0, v5, :cond_22

    .line 1744
    :cond_1d
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_1f

    .line 1745
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1766
    :cond_1e
    :goto_6
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$43(Lcom/fiio/music/activity/MyMusicListActivity;)V

    goto/16 :goto_0

    .line 1746
    :cond_1f
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_20

    .line 1747
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_6

    .line 1748
    :cond_20
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_21

    .line 1749
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_6

    .line 1750
    :cond_21
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1e

    .line 1751
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_6

    .line 1755
    :cond_22
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_23

    .line 1756
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_6

    .line 1757
    :cond_23
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_24

    .line 1758
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_6

    .line 1759
    :cond_24
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_25

    .line 1760
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1761
    :cond_25
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1e

    .line 1762
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1767
    :cond_26
    const/16 v1, 0xf

    if-ne v0, v1, :cond_2a

    .line 1768
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_27

    .line 1769
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1770
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_28

    .line 1771
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1772
    :cond_28
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_29

    .line 1773
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1774
    :cond_29
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1778
    :cond_2a
    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 1782
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1783
    if-eqz v0, :cond_1

    .line 1784
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    .line 1785
    iget-object v1, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$43(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1786
    if-eq v0, v4, :cond_2b

    if-ne v0, v5, :cond_2f

    .line 1788
    :cond_2b
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_2c

    .line 1789
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1790
    :cond_2c
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_2d

    .line 1791
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1792
    :cond_2d
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_2e

    .line 1793
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1794
    :cond_2e
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1795
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1798
    :cond_2f
    if-ne v0, v8, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v7, :cond_30

    .line 1801
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02055f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1802
    :cond_30
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v8, :cond_31

    .line 1803
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020560

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1804
    :cond_31
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_32

    .line 1805
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020561

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1806
    :cond_32
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$40(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/fiio/music/activity/ep;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$45(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020562

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

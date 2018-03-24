.class final Lcom/fiio/music/fragment/at;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/swipemenulistview/a;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 609
    iget-object v1, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v2

    .line 611
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    .line 613
    packed-switch p3, :pswitch_data_0

    .line 669
    :cond_0
    :goto_0
    return v7

    .line 615
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0, v1, p1, v7, v4}, Lcom/fiio/music/fragment/TabAFm;->access$31(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;IZLjava/lang/String;)V

    goto :goto_0

    .line 618
    :pswitch_1
    iget-object v2, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    const v5, 0x7f0c0054

    invoke-virtual {v2, v5}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 620
    iget-object v5, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    new-instance v6, Lcom/fiio/music/util/bw;

    invoke-direct {v6, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/fiio/music/fragment/TabAFm;->access$32(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/util/bw;)V

    .line 621
    iget-object v2, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$33(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/bw;

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 623
    if-eqz v2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$25(Lcom/fiio/music/fragment/TabAFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    const v4, 0x7f0c00ba

    invoke-virtual {v3, v4}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$26(Lcom/fiio/music/fragment/TabAFm;Landroid/widget/Toast;)V

    goto :goto_0

    .line 631
    :cond_1
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-nez v2, :cond_3

    .line 632
    iget-object v2, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$33(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/bw;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 640
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 641
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$25(Lcom/fiio/music/fragment/TabAFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    const v4, 0x7f0c00db

    invoke-virtual {v3, v4}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$26(Lcom/fiio/music/fragment/TabAFm;Landroid/widget/Toast;)V

    goto :goto_0

    .line 634
    :cond_3
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 635
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$33(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    goto :goto_1

    .line 636
    :cond_4
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 637
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$33(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/util/bw;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    goto :goto_1

    .line 643
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$25(Lcom/fiio/music/fragment/TabAFm;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v3

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    const v6, 0x7f0c00dc

    invoke-virtual {v5, v6}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "songName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-static {v2, v3, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$26(Lcom/fiio/music/fragment/TabAFm;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 649
    :pswitch_2
    if-eqz v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$34(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 656
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 660
    :pswitch_4
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v2, "CUE"

    invoke-static {v0, v1, v2}, Lcom/fiio/music/fragment/TabAFm;->access$35(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 662
    :cond_6
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 663
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    const-string v2, "SACD"

    invoke-static {v0, v1, v2}, Lcom/fiio/music/fragment/TabAFm;->access$35(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/fragment/at;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0, v2}, Lcom/fiio/music/fragment/TabAFm;->access$36(Lcom/fiio/music/fragment/TabAFm;I)V

    goto/16 :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

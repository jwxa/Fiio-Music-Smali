.class final Lcom/fiio/music/adapter/l;
.super Ljava/lang/Object;
.source "ListItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/ListItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const v4, 0x7f04002a

    const/16 v7, 0xd

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$0(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    move v3, v2

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$0(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 571
    :cond_0
    :goto_1
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$0(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v1

    .line 422
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$0(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    .line 420
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :pswitch_0
    const-string v0, "long"

    const-string v1, "\u6279\u91cf\u64ad\u653e\u6309\u952e in ListItemAdapter.java (\u6d4b\u8bd5\u786e\u5b9a\u4e3a\u98ce\u683c\u6b4c\u624b\u4e13\u8f91tab\u4e0b\u7684\u6279\u91cf)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/fiio/music/b/k;->c([ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 434
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v4

    if-nez v4, :cond_3

    .line 436
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v7, v5, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 444
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v4

    .line 445
    iget-object v5, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00dd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-static {v1, v4, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    .line 446
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 437
    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 438
    new-instance v4, Lcom/fiio/music/util/j;

    iget-object v5, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/ListItemAdapter;->access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;

    move-result-object v5

    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 439
    invoke-virtual {v4, v0, v1, v7}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    goto :goto_2

    .line 441
    :cond_4
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$3(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/service/h;

    move-result-object v4

    invoke-virtual {v4, v0, v7, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto :goto_2

    .line 452
    :pswitch_1
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    new-instance v3, Lcom/fiio/music/util/bw;

    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0c0054

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$7(Lcom/fiio/music/adapter/ListItemAdapter;Lcom/fiio/music/util/bw;)V

    .line 455
    array-length v4, v5

    move v3, v2

    :goto_3
    if-lt v3, v4, :cond_6

    .line 474
    if-eqz v1, :cond_18

    move v3, v2

    move v4, v2

    .line 475
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_c

    .line 481
    :goto_5
    if-nez v3, :cond_d

    array-length v0, v5

    if-eqz v0, :cond_d

    .line 482
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v2, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    .line 490
    :goto_6
    if-eqz v3, :cond_5

    .line 491
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$8(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 455
    :cond_6
    aget v0, v5, v3

    .line 456
    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "artistid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 457
    if-nez v1, :cond_7

    .line 458
    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 455
    :goto_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_3

    .line 460
    :cond_7
    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 461
    goto :goto_7

    :cond_8
    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "albumid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 462
    if-nez v1, :cond_9

    .line 463
    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 465
    :cond_9
    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 466
    goto :goto_7

    .line 467
    :cond_a
    if-nez v1, :cond_b

    .line 468
    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 470
    :cond_b
    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto/16 :goto_7

    .line 476
    :cond_c
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 477
    iget-object v6, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/ListItemAdapter;->access$8(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 478
    add-int/lit8 v0, v3, 0x1

    .line 475
    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto/16 :goto_4

    .line 483
    :cond_d
    array-length v0, v5

    if-nez v0, :cond_e

    .line 484
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v2, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0108

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    goto/16 :goto_6

    .line 486
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v5}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v5

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v7}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    const v7, 0x7f0c0055

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-static {v4, v5, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    goto/16 :goto_6

    .line 496
    :pswitch_2
    array-length v0, v5

    if-eqz v0, :cond_12

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 501
    array-length v1, v5

    :goto_9
    if-lt v2, v1, :cond_f

    .line 520
    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "batch"

    invoke-static {v1, v2, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 524
    :goto_a
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 501
    :cond_f
    aget v3, v5, v2

    .line 502
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "artistid"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 503
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 507
    :cond_10
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$2(Lcom/fiio/music/adapter/ListItemAdapter;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "albumid"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 508
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 513
    :cond_11
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$1(Lcom/fiio/music/adapter/ListItemAdapter;)Lcom/fiio/music/b/k;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 522
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0108

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    goto/16 :goto_a

    .line 527
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$5(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$6(Lcom/fiio/music/adapter/ListItemAdapter;Landroid/widget/Toast;)V

    .line 528
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 531
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0, v5}, Lcom/fiio/music/adapter/ListItemAdapter;->access$9(Lcom/fiio/music/adapter/ListItemAdapter;[I)V

    .line 532
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0, v3}, Lcom/fiio/music/adapter/ListItemAdapter;->access$10(Lcom/fiio/music/adapter/ListItemAdapter;I)V

    .line 533
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 534
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 535
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 536
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$11(Lcom/fiio/music/adapter/ListItemAdapter;)I

    move-result v0

    if-ne v0, v9, :cond_14

    .line 537
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 545
    :cond_13
    :goto_c
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 546
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 547
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 548
    iget-object v4, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/ListItemAdapter;->access$4(Lcom/fiio/music/adapter/ListItemAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    new-instance v0, Lcom/fiio/music/adapter/m;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/m;-><init>(Lcom/fiio/music/adapter/l;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    new-instance v0, Lcom/fiio/music/adapter/n;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/n;-><init>(Lcom/fiio/music/adapter/l;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 538
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$11(Lcom/fiio/music/adapter/ListItemAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 539
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_c

    .line 540
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$11(Lcom/fiio/music/adapter/ListItemAdapter;)I

    move-result v0

    if-ne v0, v6, :cond_16

    .line 541
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_c

    .line 542
    :cond_16
    iget-object v0, p0, Lcom/fiio/music/adapter/l;->a:Lcom/fiio/music/adapter/ListItemAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/ListItemAdapter;->access$11(Lcom/fiio/music/adapter/ListItemAdapter;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 543
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_c

    :cond_17
    move v0, v3

    goto/16 :goto_8

    :cond_18
    move v3, v2

    goto/16 :goto_5

    .line 425
    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

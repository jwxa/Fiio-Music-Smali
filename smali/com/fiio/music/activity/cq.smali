.class final Lcom/fiio/music/activity/cq;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/swipemenulistview/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 3285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/fiio/music/swipemenulistview/a;I)Z
    .locals 12

    .prologue
    const v11, 0x7f0c0055

    const v7, 0x7f0c0054

    const v10, 0x7f0c00ba

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3288
    new-array v6, v5, [I

    .line 3289
    const/4 v0, 0x0

    .line 3290
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3291
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fiio/music/fragment/TabEFm;->getFileItemInPosition(I)Lcom/fiio/music/entity/FileItem;

    move-result-object v2

    iput-object v2, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    .line 3293
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 3824
    :cond_1
    :goto_0
    return v5

    .line 3295
    :pswitch_0
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 3296
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v7

    .line 3297
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->show()V

    .line 3298
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 3299
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 3305
    :cond_2
    :goto_1
    const v0, 0x7f0b0079

    invoke-virtual {v7, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3306
    const v1, 0x7f0b007e

    invoke-virtual {v7, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3307
    const v2, 0x7f0b007d

    invoke-virtual {v7, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3309
    const/4 v3, 0x0

    .line 3310
    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v8

    if-nez v8, :cond_6

    .line 3311
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabBFm;->getListofItem()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v5

    .line 3321
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v8

    if-nez v8, :cond_8

    .line 3322
    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00f2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3323
    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3335
    :goto_3
    new-instance v0, Lcom/fiio/music/activity/cr;

    invoke-direct {v0, p0, v6, p1, v7}, Lcom/fiio/music/activity/cr;-><init>(Lcom/fiio/music/activity/cq;[IILcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3484
    new-instance v0, Lcom/fiio/music/activity/cs;

    invoke-direct {v0, p0, v7}, Lcom/fiio/music/activity/cs;-><init>(Lcom/fiio/music/activity/cq;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 3300
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3301
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_1

    .line 3302
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3303
    invoke-virtual {v7}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    goto/16 :goto_1

    .line 3315
    :cond_6
    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v8

    if-nez v8, :cond_7

    .line 3316
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabDFm;->getListofItem()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v5

    goto/16 :goto_2

    .line 3317
    :cond_7
    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v8

    if-nez v8, :cond_3

    .line 3318
    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v8}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 3319
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabBFm;->getListOfItemInPageNumber1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v5

    goto/16 :goto_2

    .line 3325
    :cond_8
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v3

    if-nez v3, :cond_9

    .line 3326
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3327
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3329
    :cond_9
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3330
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3495
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v2, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 3497
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_d

    .line 3498
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v4

    .line 3499
    new-instance v0, Ljava/lang/StringBuilder;

    aget v1, v6, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3500
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move v1, v4

    move v2, v4

    .line 3501
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_a

    .line 3516
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    .line 3688
    :goto_5
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3689
    if-nez v1, :cond_27

    .line 3690
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3502
    :cond_a
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3503
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3504
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3505
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3501
    :goto_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 3507
    :cond_b
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3508
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3509
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3511
    goto :goto_6

    .line 3512
    :cond_c
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3513
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_6

    .line 3517
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v0

    if-ne v0, v5, :cond_11

    .line 3518
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListOfItemInPageNumber1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v5

    .line 3519
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    .line 3520
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->getSongListByArtistAndAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move v1, v4

    move v2, v4

    .line 3521
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_e

    .line 3536
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    goto/16 :goto_5

    .line 3522
    :cond_e
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3523
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3524
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3525
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3521
    :goto_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    .line 3527
    :cond_f
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3528
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3529
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3531
    goto :goto_8

    .line 3532
    :cond_10
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3533
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_8

    .line 3558
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v0

    if-nez v0, :cond_15

    .line 3559
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v4

    .line 3560
    new-instance v0, Ljava/lang/StringBuilder;

    aget v1, v6, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3561
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move v1, v4

    move v2, v4

    .line 3562
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_12

    .line 3577
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    goto/16 :goto_5

    .line 3563
    :cond_12
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3564
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 3565
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3566
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3562
    :goto_a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_9

    .line 3568
    :cond_13
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 3569
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3570
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3572
    goto :goto_a

    .line 3573
    :cond_14
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 3574
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_a

    .line 3578
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3579
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3580
    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$60()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3581
    new-instance v0, Lcom/fiio/music/util/bc;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fiio/music/util/bc;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 3582
    invoke-virtual {v0}, Lcom/fiio/music/util/bc;->c()Ljava/util/List;

    move-result-object v3

    move v1, v4

    move v2, v4

    .line 3583
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_16

    .line 3588
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    .line 3589
    if-nez v1, :cond_17

    .line 3590
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_5

    .line 3584
    :cond_16
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3585
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3586
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3583
    :goto_c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_b

    .line 3592
    :cond_17
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 3593
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3594
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v7, v11}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3593
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3592
    invoke-static {v2, v3, v6}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_5

    .line 3596
    :cond_18
    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$61()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3597
    new-instance v0, Lorg/justcodecs/dsd/SacdDataFormat;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 3598
    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->isDst()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3599
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c0216

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3602
    :cond_19
    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    .line 3603
    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 3604
    :cond_1a
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c0218

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3608
    :cond_1b
    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-static {v1}, Lcom/fiio/music/util/bw;->c(Ljava/util/List;)I

    move-result v0

    if-eqz v0, :cond_1d

    .line 3609
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v5

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3612
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c00db

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3609
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3610
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v4, v6, v7, v1}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move v1, v0

    goto :goto_d

    .line 3614
    :cond_1d
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3618
    :cond_1e
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->simplifyGetSong(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3619
    if-nez v0, :cond_1f

    move v5, v4

    .line 3621
    goto/16 :goto_0

    .line 3623
    :cond_1f
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3625
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Lcom/fiio/music/util/bw;

    invoke-direct {v3, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 3626
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 3627
    if-eqz v1, :cond_20

    .line 3628
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    move v1, v4

    .line 3629
    goto/16 :goto_5

    .line 3631
    :cond_20
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    move-result v0

    .line 3632
    if-eqz v0, :cond_21

    .line 3633
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v6, 0x7f0c00db

    invoke-virtual {v3, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    move v1, v4

    .line 3634
    goto/16 :goto_5

    .line 3635
    :cond_21
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v6, 0x7f0c00dc

    invoke-virtual {v3, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    move v1, v4

    .line 3639
    goto/16 :goto_5

    :cond_22
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3642
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/cf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3644
    new-instance v1, Lcom/fiio/music/util/cp;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 3645
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3646
    if-eqz v0, :cond_39

    .line 3647
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v3, "AZtabEFM"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v2

    .line 3648
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v6, "tabEFm"

    invoke-virtual {v3, v6}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v3

    .line 3649
    invoke-virtual {v1, v0, v3, v2}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    .line 3650
    if-eqz v3, :cond_39

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 3651
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    move v1, v4

    move v2, v4

    .line 3652
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_23

    .line 3657
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    .line 3658
    if-nez v1, :cond_24

    .line 3659
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v6, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_5

    .line 3653
    :cond_23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3654
    iget-object v6, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 3655
    add-int/lit8 v0, v1, 0x1

    .line 3652
    :goto_f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_e

    .line 3661
    :cond_24
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 3662
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3663
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v7, v11}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3662
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3661
    invoke-static {v2, v3, v6}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_5

    .line 3666
    :cond_25
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3669
    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$62()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3670
    new-instance v0, Lcom/fiio/music/util/j;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Ljava/io/File;I)V

    .line 3671
    invoke-virtual {v0}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3672
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3673
    if-eqz v0, :cond_1

    .line 3674
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Lcom/fiio/music/util/bw;

    invoke-direct {v3, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 3675
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 3676
    if-eqz v1, :cond_26

    .line 3677
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3679
    :cond_26
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/bw;->b(Lcom/fiio/music/entity/Song;I)Z

    .line 3680
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c00db

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3692
    :cond_27
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 3693
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3694
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v1, v11}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3693
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3692
    invoke-static {v2, v3, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3699
    :pswitch_2
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_29

    .line 3700
    const-string v1, "artistid"

    .line 3701
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v4

    move-object v0, v1

    .line 3790
    :cond_28
    :goto_10
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3791
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3792
    if-eqz v0, :cond_1

    .line 3793
    array-length v2, v6

    :goto_11
    if-lt v4, v2, :cond_36

    .line 3811
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "batch"

    invoke-static {v0, v2, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 3702
    :cond_29
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v5, :cond_2a

    .line 3703
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListOfItemInPageNumber1()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v5

    .line 3704
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    .line 3705
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->getSongListByArtistAndAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3706
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "batch"

    invoke-static {v1, v2, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 3712
    :cond_2a
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_2b

    .line 3713
    const-string v1, "styleid"

    .line 3714
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v4

    move-object v0, v1

    .line 3715
    goto/16 :goto_10

    :cond_2b
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3716
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3717
    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$60()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3718
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3717
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3718
    if-eqz v1, :cond_2c

    .line 3719
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3720
    new-instance v1, Lcom/fiio/music/util/bw;

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 3721
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v4, v4, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v4}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    .line 3722
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    goto/16 :goto_0

    .line 3724
    :cond_2c
    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$61()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3725
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3724
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3725
    if-eqz v1, :cond_30

    .line 3726
    new-instance v0, Lorg/justcodecs/dsd/SacdDataFormat;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 3727
    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->isDst()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3728
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c0216

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3731
    :cond_2d
    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    .line 3732
    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 3733
    :cond_2e
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c0218

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 3736
    :cond_2f
    new-instance v0, Lcom/fiio/music/util/bw;

    invoke-direct {v0, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 3737
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v4, v4, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v4}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)I

    move-result v1

    .line 3738
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/bw;->a(ILandroid/content/Context;)Z

    goto/16 :goto_0

    .line 3741
    :cond_30
    new-instance v1, Lcom/fiio/music/util/bh;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/bh;->c(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 3742
    if-nez v1, :cond_31

    move v5, v4

    .line 3743
    goto/16 :goto_0

    .line 3745
    :cond_31
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v3, Lcom/fiio/music/util/bw;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$54(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/util/bw;)V

    .line 3748
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$55(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/bw;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3749
    if-eqz v2, :cond_32

    .line 3750
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v7, v10}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_10

    .line 3753
    :cond_32
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3754
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$57(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_10

    .line 3757
    :cond_33
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3760
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/cf;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3762
    new-instance v2, Lcom/fiio/music/util/cp;

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/fiio/music/util/cp;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V

    .line 3763
    invoke-virtual {v2, v1}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3764
    if-eqz v1, :cond_28

    .line 3765
    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v3

    const-string v7, "AZtabEFM"

    invoke-virtual {v3, v7}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v3

    .line 3766
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v7

    const-string v8, "tabEFm"

    invoke-virtual {v7, v8}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v7

    .line 3767
    invoke-virtual {v2, v1, v7, v3}, Lcom/fiio/music/util/cp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    .line 3768
    if-eqz v1, :cond_34

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 3769
    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "batch"

    invoke-static {v2, v3, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_10

    .line 3771
    :cond_34
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 3772
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3771
    invoke-static {v2, v3, v7}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_10

    .line 3774
    :cond_35
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3777
    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$62()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3778
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3779
    new-instance v0, Lcom/fiio/music/util/j;

    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Ljava/io/File;I)V

    .line 3780
    invoke-virtual {v0}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 3782
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3783
    iget-object v1, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$57(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 3793
    :cond_36
    aget v3, v6, v4

    .line 3794
    const-string v7, "artistid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 3795
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3793
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    .line 3799
    :cond_37
    const-string v7, "albumid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 3800
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 3805
    :cond_38
    iget-object v7, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    .line 3819
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_39
    move v1, v4

    goto/16 :goto_5

    :cond_3a
    move v0, v1

    goto/16 :goto_f

    :cond_3b
    move v0, v1

    goto/16 :goto_c

    :cond_3c
    move v0, v1

    goto/16 :goto_a

    :cond_3d
    move v0, v1

    goto/16 :goto_8

    :cond_3e
    move v0, v1

    goto/16 :goto_6

    .line 3293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

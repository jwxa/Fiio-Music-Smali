.class final Lcom/fiio/music/adapter/t;
.super Ljava/lang/Object;
.source "PlayListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/fiio/music/adapter/PlayListAdapter;

.field private c:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/PlayListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v4, 0x7f04002a

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->cancelSelect()V

    .line 475
    :cond_0
    :goto_1
    return-void

    .line 377
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    .line 378
    new-instance v0, Lcom/fiio/music/b/j;

    iget-object v1, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/j;-><init>(Landroid/content/Context;)V

    .line 379
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 380
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    move v1, v2

    .line 383
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 391
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 392
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    .line 393
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 395
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 397
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    :cond_1
    if-ltz v2, :cond_0

    .line 406
    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 407
    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$4(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;[Ljava/lang/String;Ljava/util/List;I)V

    .line 423
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$2(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/util/bw;

    move-result-object v4

    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_5

    .line 386
    iget-object v4, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 399
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 409
    :cond_7
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 410
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-ltz v1, :cond_0

    .line 412
    new-instance v1, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/PlayListAdapter;->access$4(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 413
    iget-object v2, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/PlayListAdapter;->access$4(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v1}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    invoke-virtual {v2, v0, v6, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_4

    .line 416
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->access$4(Lcom/fiio/music/adapter/PlayListAdapter;)Lcom/fiio/music/service/h;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fiio/music/adapter/t;->a:Ljava/util/List;

    invoke-virtual {v1, v0, v6, v2, v3}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_4

    .line 420
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->c:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/t;->c:Landroid/widget/Toast;

    goto/16 :goto_4

    .line 426
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->c:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/adapter/t;->c:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 430
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$1(Lcom/fiio/music/adapter/PlayListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 431
    new-instance v0, Lcom/fiio/music/custom/g;

    iget-object v1, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/custom/g;-><init>(Landroid/content/Context;)V

    .line 432
    invoke-virtual {v0}, Lcom/fiio/music/custom/g;->a()Lcom/fiio/music/custom/f;

    move-result-object v3

    .line 433
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->show()V

    .line 434
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$5(Lcom/fiio/music/adapter/PlayListAdapter;)I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 435
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 444
    :cond_a
    :goto_5
    const v0, 0x7f0b0079

    invoke-virtual {v3, v0}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    const v1, 0x7f0b007e

    invoke-virtual {v3, v1}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 446
    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Lcom/fiio/music/custom/f;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 447
    iget-object v4, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v4}, Lcom/fiio/music/adapter/PlayListAdapter;->access$0(Lcom/fiio/music/adapter/PlayListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00fd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    new-instance v0, Lcom/fiio/music/adapter/u;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/u;-><init>(Lcom/fiio/music/adapter/t;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    new-instance v0, Lcom/fiio/music/adapter/v;

    invoke-direct {v0, p0, v3}, Lcom/fiio/music/adapter/v;-><init>(Lcom/fiio/music/adapter/t;Lcom/fiio/music/custom/f;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 436
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$5(Lcom/fiio/music/adapter/PlayListAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 437
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_5

    .line 438
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$5(Lcom/fiio/music/adapter/PlayListAdapter;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 439
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_5

    .line 440
    :cond_d
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->access$5(Lcom/fiio/music/adapter/PlayListAdapter;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 441
    invoke-virtual {v3}, Lcom/fiio/music/custom/f;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(I)V

    goto :goto_5

    .line 466
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/adapter/t;->b:Lcom/fiio/music/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/PlayListAdapter;->cancelSelect()V

    goto/16 :goto_1

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

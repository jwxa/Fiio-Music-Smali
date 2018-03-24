.class final Lcom/fiio/music/activity/cr;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/cq;

.field private final synthetic b:[I

.field private final synthetic c:I

.field private final synthetic d:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/cq;[IILcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iput-object p2, p0, Lcom/fiio/music/activity/cr;->b:[I

    iput p3, p0, Lcom/fiio/music/activity/cr;->c:I

    iput-object p4, p0, Lcom/fiio/music/activity/cr;->d:Lcom/fiio/music/custom/f;

    .line 3335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 3340
    .line 3341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3342
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->P()V

    .line 3344
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_1

    .line 3345
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->b:[I

    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fiio/music/activity/cr;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 3346
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/activity/cr;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3348
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->b:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3349
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->b:[I

    const-string v5, "artistid"

    iget-object v6, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v6, v6, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/fiio/music/b/k;->b([ILjava/lang/String;)I

    .line 3350
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabBFm;->updataList()V

    .line 3456
    :goto_0
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3457
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v5, v5, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v5}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v5

    .line 3458
    iget-object v6, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v6, v6, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v7, 0x7f0c0107

    invoke-virtual {v6, v7}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    .line 3459
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    .line 3458
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3457
    invoke-static {v4, v5, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    .line 3471
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3477
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setTabContent()V

    .line 3479
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->d:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 3480
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->d:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 3481
    :goto_3
    return-void

    .line 3358
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_2

    .line 3359
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->b:[I

    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fiio/music/activity/cr;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 3360
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->getListofItem()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/activity/cr;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3362
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->b:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3363
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->b:[I

    const-string v5, "styleid"

    iget-object v6, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v6, v6, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/fiio/music/b/k;->b([ILjava/lang/String;)I

    .line 3364
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/fragment/TabDFm;->updateList()V

    goto/16 :goto_0

    .line 3365
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3367
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$58(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/an;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/fiio/music/util/an;->b(Z)V

    .line 3369
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_3

    .line 3370
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fiio/music/util/k;->b(Ljava/io/File;)V

    move v1, v2

    .line 3371
    goto/16 :goto_0

    .line 3372
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 3374
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/fiio/music/activity/LocalMusicActivity;->access$59()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v6, v6, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v6, v6, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v6}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3376
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v4, v4, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v4}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3377
    if-eqz v1, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3378
    invoke-static {v3}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 3381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3382
    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v4, v4, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3383
    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v4, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInFileItemAdapter(Ljava/util/List;)V

    .line 3385
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->l()I

    move-result v1

    if-ne v1, v9, :cond_8

    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 3386
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->E()V

    .line 3387
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    if-ne v1, v10, :cond_15

    .line 3388
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 3389
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f02055f

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3390
    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 3391
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f020560

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3392
    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    if-ne v1, v7, :cond_7

    .line 3393
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f020561

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3394
    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    if-ne v1, v9, :cond_15

    .line 3395
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f020562

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3399
    goto/16 :goto_0

    .line 3400
    :cond_8
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    .line 3401
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->m()I

    move-result v1

    if-ne v1, v10, :cond_15

    .line 3402
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    if-ne v1, v8, :cond_9

    .line 3403
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f02055f

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3404
    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 3405
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f020560

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3406
    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    if-ne v1, v7, :cond_b

    .line 3407
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f020561

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3408
    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$35(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v1

    if-ne v1, v9, :cond_15

    .line 3409
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$36(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v3, 0x7f020562

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v1, v2

    .line 3413
    goto/16 :goto_0

    .line 3414
    :cond_c
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fiio/music/service/h;->c(Ljava/lang/String;)V

    .line 3415
    invoke-static {v3}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 3418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3419
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3420
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInFileItemAdapter(Ljava/util/List;)V

    move v1, v2

    .line 3422
    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3423
    if-eqz v1, :cond_e

    .line 3424
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3425
    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    aget-object v1, v1, v3

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v4, v4, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v4}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3426
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->f()V

    .line 3429
    :cond_e
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fiio/music/util/k;->a(Ljava/io/File;)V

    .line 3431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3432
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3433
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v3, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInFileItemAdapter(Ljava/util/List;)V

    move v1, v2

    .line 3436
    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/LocalMusicActivity;->fileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3438
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v2, v2, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    const v4, 0x7f0c0219

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    .line 3439
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->d:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 3440
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->d:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    goto/16 :goto_3

    .line 3445
    :cond_10
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTabFmPageNumber()I

    move-result v1

    if-ne v1, v8, :cond_15

    .line 3446
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListOfItemInPageNumber1()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/fiio/music/activity/cr;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    .line 3447
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    .line 3448
    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->getSongListByArtistAndAlbum(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3449
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->getListOfItemInPageNumber1()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/fiio/music/activity/cr;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3450
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3453
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->afterDel()V

    .line 3454
    iget-object v0, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v0, v0, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0, v3, v8}, Lcom/fiio/music/fragment/TabBFm;->updataAlbumList(IZ)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_0

    .line 3450
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3451
    iget-object v5, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v5, v5, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v5}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v5, v6}, Lcom/fiio/music/b/k;->a([Ljava/lang/Integer;)I

    goto :goto_4

    .line 3461
    :cond_12
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabEFm;->getTabFmPageNumber()I

    move-result v1

    if-nez v1, :cond_13

    .line 3462
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v2, v2, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 3463
    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0214

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3462
    invoke-static {v2, v3, v4}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_1

    .line 3465
    :cond_13
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v2, v2, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$8(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v3, v3, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v3

    .line 3466
    iget-object v4, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v4, v4, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3465
    invoke-static {v2, v3, v4}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$9(Lcom/fiio/music/activity/LocalMusicActivity;Landroid/widget/Toast;)V

    goto/16 :goto_1

    .line 3472
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 3473
    iget-object v1, p0, Lcom/fiio/music/activity/cr;->a:Lcom/fiio/music/activity/cq;

    iget-object v1, v1, Lcom/fiio/music/activity/cq;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    invoke-virtual {v1, v0, v8, v8}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    goto/16 :goto_2

    :cond_15
    move v1, v2

    goto/16 :goto_0
.end method

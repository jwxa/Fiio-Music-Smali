.class final Lcom/fiio/music/activity/i;
.super Ljava/lang/Object;
.source "AddPlayListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AddPlayListActivity;

.field private b:Landroid/widget/Toast;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AddPlayListActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/activity/i;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;

    iget-object v2, v0, Lcom/fiio/music/adapter/PlayListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 288
    if-nez p3, :cond_c

    .line 289
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Lcom/fiio/music/activity/AddPlayListActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->b(Lcom/fiio/music/activity/AddPlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v4, Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    if-nez v1, :cond_5

    .line 315
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v1

    .line 316
    iget-object v2, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00b9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    .line 322
    :goto_1
    invoke-virtual {v4, v3}, Lcom/fiio/music/util/bw;->b(Ljava/util/List;)Z

    .line 323
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    .line 409
    :cond_1
    :goto_2
    return-void

    .line 296
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 297
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-nez v6, :cond_3

    .line 298
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 299
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 302
    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 303
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 304
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 307
    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 309
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 318
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v5, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v5}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v5

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v0, v5, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    goto/16 :goto_1

    .line 327
    :cond_6
    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    .line 330
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 331
    const/4 v0, 0x1

    .line 332
    :cond_7
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-nez v3, :cond_9

    .line 333
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    .line 339
    :cond_8
    :goto_3
    if-eqz v0, :cond_b

    .line 340
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v1

    .line 341
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    .line 342
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    goto/16 :goto_2

    .line 334
    :cond_9
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 335
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    goto :goto_3

    .line 336
    :cond_a
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 337
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    goto :goto_3

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    .line 346
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    goto/16 :goto_2

    .line 350
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Lcom/fiio/music/activity/AddPlayListActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->b(Lcom/fiio/music/activity/AddPlayListActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 353
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v4, Lcom/fiio/music/util/bw;

    const v0, 0x7f0b0001

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->c(Lcom/fiio/music/activity/AddPlayListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_d
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 375
    if-nez v1, :cond_11

    .line 376
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00b9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    .line 383
    :goto_5
    invoke-virtual {v4, v3}, Lcom/fiio/music/util/bw;->b(Ljava/util/List;)Z

    .line 384
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    goto/16 :goto_2

    .line 357
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 358
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-nez v6, :cond_f

    .line 359
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 360
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 363
    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 364
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 365
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 368
    goto :goto_4

    :cond_10
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 369
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fiio/music/util/bw;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 370
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    .line 379
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v5, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v5}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v5

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v7}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v0, v5, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    goto/16 :goto_5

    .line 387
    :cond_12
    new-instance v1, Lcom/fiio/music/util/bw;

    const v0, 0x7f0b0001

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    .line 389
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fiio/music/util/bw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 390
    const/4 v0, 0x1

    .line 391
    :cond_13
    if-eqz v0, :cond_15

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-nez v3, :cond_15

    .line 392
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    .line 398
    :cond_14
    :goto_6
    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v1

    .line 400
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    .line 401
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    goto/16 :goto_2

    .line 393
    :cond_15
    if-eqz v0, :cond_16

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 394
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    goto :goto_6

    .line 395
    :cond_16
    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 396
    iget-object v3, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->e(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lcom/fiio/music/util/bw;->a(Lcom/fiio/music/entity/Song;I)Z

    goto :goto_6

    .line 403
    :cond_17
    iget-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v1

    .line 404
    iget-object v2, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/i;->b:Landroid/widget/Toast;

    .line 405
    iget-object v0, p0, Lcom/fiio/music/activity/i;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->finish()V

    goto/16 :goto_2
.end method

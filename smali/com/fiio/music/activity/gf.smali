.class final Lcom/fiio/music/activity/gf;
.super Ljava/lang/Object;
.source "ScanDirectoryActivity.java"

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
.field final synthetic a:Lcom/fiio/music/activity/ScanDirectoryActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanDirectoryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v3, 0x0

    .line 322
    invoke-static {}, Lcom/fiio/music/util/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->i(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->i(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->k(Lcom/fiio/music/activity/ScanDirectoryActivity;)V

    .line 347
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/ScanListAdapter;->getCheckStateList()Ljava/util/List;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 349
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->d(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 350
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->setCheckAllState(Ljava/io/File;)V

    .line 355
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 356
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->g(Lcom/fiio/music/activity/ScanDirectoryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_1
    return-void

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->j(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    .line 329
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->h(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    .line 329
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 335
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/fiio/music/activity/ScanDirectoryActivity;->a(Lcom/fiio/music/activity/ScanDirectoryActivity;Ljava/io/File;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanDirectoryActivity;->b(Lcom/fiio/music/activity/ScanDirectoryActivity;)Lcom/fiio/music/adapter/ScanListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gf;->a:Lcom/fiio/music/activity/ScanDirectoryActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanDirectoryActivity;->e(Lcom/fiio/music/activity/ScanDirectoryActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/ScanListAdapter;->deleteCheckAllState(Ljava/io/File;)V

    goto :goto_1
.end method

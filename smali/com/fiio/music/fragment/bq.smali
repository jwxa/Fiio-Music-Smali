.class final Lcom/fiio/music/fragment/bq;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;

.field private final synthetic b:I

.field private final synthetic c:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;ILcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    iput p2, p0, Lcom/fiio/music/fragment/bq;->b:I

    iput-object p3, p0, Lcom/fiio/music/fragment/bq;->c:Lcom/fiio/music/custom/f;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 698
    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 699
    new-array v1, v7, [I

    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    iget v3, p0, Lcom/fiio/music/fragment/bq;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    aput v0, v1, v2

    .line 700
    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabCFr;->songDao:Lcom/fiio/music/b/k;

    const-string v3, "albumid"

    iget-object v4, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/fiio/music/b/k;->a([ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [I

    .line 703
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v3, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v3

    .line 708
    iget-object v5, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0107

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 709
    iget-object v7, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v7, v7, Lcom/fiio/music/fragment/TabCFr;->songDao:Lcom/fiio/music/b/k;

    iget-object v8, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v8}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    invoke-virtual {v7, v4}, Lcom/fiio/music/b/k;->a([I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 708
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-static {v1, v3, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabCFr;->access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V

    .line 711
    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInSongItemApdapter()V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 715
    iget-object v0, p0, Lcom/fiio/music/fragment/bq;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 716
    return-void

    .line 703
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    add-int/lit8 v3, v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v4, v1

    move v1, v3

    goto :goto_0
.end method

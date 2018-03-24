.class final Lcom/fiio/music/fragment/bn;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initSuccess()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$0(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$1(Lcom/fiio/music/fragment/TabCFr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$2(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$3(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$0(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$5(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabCFr;->access$6(Lcom/fiio/music/fragment/TabCFr;I)V

    .line 309
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$5(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$5(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCNandF"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$7(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/util/cm;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$8(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v0}, Lcom/fiio/music/util/cm;->c(ILjava/util/List;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    .line 313
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$9(Lcom/fiio/music/fragment/TabCFr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$10(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabCFr;->tabPerformClick(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    .line 321
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showOrHideHeadBar()V

    .line 322
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$2(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$3(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$0(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$3(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabCFr;->leftcCreator_pageOne:Lcom/fiio/music/swipemenulistview/c;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$3(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$3(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bn;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabCFr;->leftcCreator_pageTwo:Lcom/fiio/music/swipemenulistview/c;

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setMenuLeftCreator(Lcom/fiio/music/swipemenulistview/c;)V

    goto :goto_1
.end method

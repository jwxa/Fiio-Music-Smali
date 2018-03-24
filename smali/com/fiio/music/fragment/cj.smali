.class final Lcom/fiio/music/fragment/cj;
.super Ljava/lang/Object;
.source "TabEFm.java"

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
.field final synthetic a:Lcom/fiio/music/fragment/TabEFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabEFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 833
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$13(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 835
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/FileListAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$0(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/adapter/FileListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/FileListAdapter;->toggleCheckBox(I)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$14(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/an;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-boolean v1, v1, Lcom/fiio/music/fragment/TabEFm;->folder:Z

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 841
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$8(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    if-nez v0, :cond_5

    .line 842
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 846
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 847
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 848
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 852
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_7

    .line 867
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$8(Lcom/fiio/music/fragment/TabEFm;)I

    move-result v0

    if-nez v0, :cond_a

    .line 868
    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    iput-object v0, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    .line 873
    :goto_4
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 874
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 875
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/16 v2, 0x8

    iput v2, v0, Lcom/fiio/music/fragment/TabEFm;->listenerOrBack:I

    .line 876
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 877
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, v0, Lcom/fiio/music/fragment/TabEFm;->topForFolderPosition:I

    .line 878
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$9(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, v0, Lcom/fiio/music/fragment/TabEFm;->firstFolderPosition:I

    .line 881
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 882
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iput-object v1, v0, Lcom/fiio/music/fragment/TabEFm;->mEnterDir:Ljava/lang/String;

    .line 883
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->setTabFmPageNumber(I)V

    .line 884
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$17(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/fragment/cl;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/fiio/music/fragment/cl;-><init>(Lcom/fiio/music/fragment/TabEFm;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 885
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v1}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/fragment/TabEFm;->songParent:Ljava/lang/String;

    goto/16 :goto_0

    .line 844
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 848
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 849
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 854
    :cond_7
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 855
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/fiio/music/fragment/TabEFm;->isfirstPath:Z

    .line 856
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/fiio/music/fragment/TabEFm;->isFirstList:Z

    .line 857
    invoke-static {v1}, Lcom/fiio/music/util/ch;->a(Ljava/lang/String;)Lcom/fiio/music/util/ci;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_8

    .line 859
    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-wide v6, v0, Lcom/fiio/music/util/ci;->a:J

    invoke-static {v4, v6, v7}, Lcom/fiio/music/fragment/TabEFm;->access$15(Lcom/fiio/music/fragment/TabEFm;J)V

    .line 860
    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-wide v6, v0, Lcom/fiio/music/util/ci;->b:J

    invoke-static {v4, v6, v7}, Lcom/fiio/music/fragment/TabEFm;->access$16(Lcom/fiio/music/fragment/TabEFm;J)V

    .line 862
    :cond_8
    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/fiio/music/fragment/TabEFm;->titleText:Ljava/lang/String;

    .line 853
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    .line 870
    :cond_a
    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$6(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    iput-object v0, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    goto/16 :goto_4

    .line 888
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "song_file_path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 889
    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 890
    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 891
    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 892
    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 893
    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 894
    const-string v1, "UNLATCH_SD_CARD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 895
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6587\u4ef6\u5939\u64ad\u653e this song="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->u()V

    goto/16 :goto_0

    .line 899
    :cond_c
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/fragment/TabEFm;->songParent:Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$19(Lcom/fiio/music/fragment/TabEFm;I)V

    .line 903
    const/4 v1, 0x0

    .line 904
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/cj;->g()Z

    .line 905
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 906
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v3, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v3, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v4}, Lcom/fiio/music/fragment/TabEFm;->playCueFile(Ljava/io/File;II)V

    move v0, v1

    .line 964
    :goto_5
    if-nez v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$30(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 966
    const-string v1, "M3UPATH"

    const-string v2, "NotTheM3UMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 908
    :cond_d
    invoke-static {}, Lcom/fiio/music/fragment/TabEFm;->access$20()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v3, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 909
    const/4 v1, 0x1

    .line 910
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    new-instance v2, Lcom/fiio/music/util/bc;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v4, v4, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v4}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fiio/music/util/bc;-><init>(Ljava/io/File;Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/fiio/music/fragment/TabEFm;->access$21(Lcom/fiio/music/fragment/TabEFm;Lcom/fiio/music/util/bc;)V

    .line 911
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabEFm;->access$22(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/bc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/bc;->b()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v5, v5, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v5}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 911
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V

    move v0, v1

    .line 913
    goto/16 :goto_5

    :cond_e
    invoke-static {}, Lcom/fiio/music/fragment/TabEFm;->access$23()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v3, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 914
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    new-instance v2, Lorg/justcodecs/dsd/SacdDataFormat;

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v3, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabEFm;->access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/fiio/music/fragment/TabEFm;->access$24(Lcom/fiio/music/fragment/TabEFm;Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 915
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$25(Lcom/fiio/music/fragment/TabEFm;)Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->isLoad()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 916
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$25(Lcom/fiio/music/fragment/TabEFm;)Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->isDst()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 917
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$26(Lcom/fiio/music/fragment/TabEFm;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const v5, 0x7f0c0216

    invoke-virtual {v4, v5}, Lcom/fiio/music/fragment/TabEFm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/fragment/TabEFm;->access$27(Lcom/fiio/music/fragment/TabEFm;Landroid/widget/Toast;)V

    move v0, v1

    .line 918
    goto/16 :goto_5

    .line 919
    :cond_f
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$25(Lcom/fiio/music/fragment/TabEFm;)Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v2

    invoke-virtual {v2}, Lorg/justcodecs/dsd/SacdDataFormat;->getAlbumTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabEFm;->access$25(Lcom/fiio/music/fragment/TabEFm;)Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v3

    invoke-virtual {v3}, Lorg/justcodecs/dsd/SacdDataFormat;->getSongNameArray()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v5, v5, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v5}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V

    move v0, v1

    .line 922
    goto/16 :goto_5

    .line 923
    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    invoke-static {v0}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 924
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    new-instance v2, Lcom/fiio/music/util/j;

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabEFm;->access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v6, v6, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v6}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/fiio/music/fragment/TabEFm;->access$28(Lcom/fiio/music/fragment/TabEFm;Lcom/fiio/music/util/j;)V

    .line 925
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabEFm;->access$29(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/util/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/util/j;->c()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v5, v5, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v5}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 925
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->creatCueOrM3uListDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;I)V

    move v0, v1

    .line 927
    goto/16 :goto_5

    .line 929
    :cond_11
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dsf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 930
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "diff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 931
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v2, v2, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v2}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 933
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    new-instance v3, Lorg/justcodecs/dsd/SacdDataFormat;

    iget-object v4, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v4, v4, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v4}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabEFm;->access$24(Lcom/fiio/music/fragment/TabEFm;Lorg/justcodecs/dsd/SacdDataFormat;)V

    .line 937
    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$25(Lcom/fiio/music/fragment/TabEFm;)Lorg/justcodecs/dsd/SacdDataFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/justcodecs/dsd/SacdDataFormat;->checkErrorFormat(Ljava/lang/String;)I

    move-result v0

    .line 939
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 941
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$26(Lcom/fiio/music/fragment/TabEFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const v4, 0x7f0c0216

    invoke-virtual {v3, v4}, Lcom/fiio/music/fragment/TabEFm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$27(Lcom/fiio/music/fragment/TabEFm;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 943
    :cond_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    .line 945
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabEFm;->access$26(Lcom/fiio/music/fragment/TabEFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    const v4, 0x7f0c022d

    invoke-virtual {v3, v4}, Lcom/fiio/music/fragment/TabEFm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->access$27(Lcom/fiio/music/fragment/TabEFm;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 951
    :cond_14
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "kuishe"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 953
    const-string v2, "enable_viper"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 955
    if-eqz v0, :cond_15

    .line 956
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$18(Lcom/fiio/music/fragment/TabEFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 959
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/fiio/music/fragment/cj;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v3, Lcom/fiio/music/fragment/TabEFm;->currentFileItem:Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v3}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/activity/LocalMusicActivity;->folderJumpForplayerMusic(Ljava/io/File;)V

    :cond_16
    move v0, v1

    goto/16 :goto_5
.end method

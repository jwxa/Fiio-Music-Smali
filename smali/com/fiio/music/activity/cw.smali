.class final Lcom/fiio/music/activity/cw;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

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
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;

.field private final synthetic b:I

.field private final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iput p2, p0, Lcom/fiio/music/activity/cw;->b:I

    iput-object p3, p0, Lcom/fiio/music/activity/cw;->c:Ljava/io/File;

    .line 4180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 4185
    iget v0, p0, Lcom/fiio/music/activity/cw;->b:I

    if-ne v0, v3, :cond_4

    .line 4186
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4187
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->c:Ljava/io/File;

    invoke-virtual {v0, v1, p3, v3}, Lcom/fiio/music/fragment/TabAFm;->playCueFile(Ljava/io/File;II)V

    .line 4188
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabAFm;->tabAFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 4189
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    .line 4224
    :cond_0
    :goto_0
    return-void

    .line 4190
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4191
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->c:Ljava/io/File;

    invoke-virtual {v0, v1, p3, v2}, Lcom/fiio/music/fragment/TabBFm;->playCueFile(Ljava/io/File;II)V

    .line 4192
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->tabGetSongListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 4193
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4199
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4200
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->c:Ljava/io/File;

    invoke-virtual {v0, v1, p3, v2}, Lcom/fiio/music/fragment/TabDFm;->playCueFile(Ljava/io/File;II)V

    .line 4201
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->tabDFGetListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/SongItemAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 4202
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4203
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->c:Ljava/io/File;

    invoke-virtual {v0, v1, p3, v2}, Lcom/fiio/music/fragment/TabEFm;->playCueFile(Ljava/io/File;II)V

    .line 4205
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 4206
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 4210
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/cw;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 4211
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4212
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabEFm;->playM3UFile(I)V

    .line 4213
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 4214
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 4218
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/cw;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4219
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->c:Ljava/io/File;

    invoke-virtual {v0, v1, p3}, Lcom/fiio/music/fragment/TabEFm;->playSACDFile(Ljava/io/File;I)V

    .line 4220
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabEFm;->tabEFGetListView()Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/adapter/FileListAdapter;

    iget-object v1, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$3(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/FileListAdapter;->setPlayerManager(Lcom/fiio/music/service/h;)V

    .line 4221
    iget-object v0, p0, Lcom/fiio/music/activity/cw;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$42(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/adapter/CueListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/CueListItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

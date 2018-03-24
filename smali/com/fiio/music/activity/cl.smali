.class final Lcom/fiio/music/activity/cl;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;

.field private final synthetic b:I

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:I

.field private final synthetic e:Z

.field private final synthetic f:I

.field private final synthetic g:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;ILjava/util/List;IZILcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iput p2, p0, Lcom/fiio/music/activity/cl;->b:I

    iput-object p3, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    iput p4, p0, Lcom/fiio/music/activity/cl;->d:I

    iput-boolean p5, p0, Lcom/fiio/music/activity/cl;->e:Z

    iput p6, p0, Lcom/fiio/music/activity/cl;->f:I

    iput-object p7, p0, Lcom/fiio/music/activity/cl;->g:Lcom/fiio/music/custom/f;

    .line 3084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3088
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$56(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/b/k;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Integer;

    iget v2, p0, Lcom/fiio/music/activity/cl;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a([Ljava/lang/Integer;)I

    move-result v0

    .line 3089
    if-ne v0, v4, :cond_5

    .line 3092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3094
    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3095
    iget v1, p0, Lcom/fiio/music/activity/cl;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3096
    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3097
    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3099
    iget-boolean v0, p0, Lcom/fiio/music/activity/cl;->e:Z

    if-eqz v0, :cond_5

    .line 3100
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabBFm;->afterDel()V

    .line 3102
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabDFm;->afterDel()V

    .line 3103
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v4, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->updataDataAfterDel(Ljava/util/List;)V

    .line 3107
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget v1, p0, Lcom/fiio/music/activity/cl;->b:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    .line 3109
    :cond_0
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-eq v0, v6, :cond_1

    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 3110
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->reGetList()V

    .line 3113
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget v1, p0, Lcom/fiio/music/activity/cl;->b:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    .line 3115
    :cond_2
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v7, :cond_3

    .line 3117
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabDFm;->updataDataAfterDel(Ljava/util/List;)V

    .line 3119
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget v1, p0, Lcom/fiio/music/activity/cl;->b:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    .line 3121
    :cond_3
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v8, :cond_4

    .line 3122
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabBFm;->updataInnerDataAfterDel(Ljava/util/List;)V

    .line 3124
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget v1, p0, Lcom/fiio/music/activity/cl;->b:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    .line 3129
    :cond_4
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_5

    .line 3130
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/TabDFm;->updataInnerDataAfterDel(Ljava/util/List;)V

    .line 3131
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget v1, p0, Lcom/fiio/music/activity/cl;->b:I

    const/4 v2, -0x1

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteForResetPlayerList(IILjava/lang/String;)V

    .line 3132
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$4(Lcom/fiio/music/activity/LocalMusicActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget v1, p0, Lcom/fiio/music/activity/cl;->b:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/fiio/music/activity/LocalMusicActivity;->deleteSongOrLists(III)V

    .line 3136
    :cond_5
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v4, :cond_6

    .line 3137
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabBFm;->getDateSize()I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 3138
    :cond_6
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v6, :cond_7

    .line 3140
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3141
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->getParameter()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabCFr;->getmAdapter()Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/QueryAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 3143
    :cond_7
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v7, :cond_8

    .line 3144
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getTitleString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/fragment/TabDFm;->getDateSize()I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(Ljava/lang/String;IZ)V

    .line 3145
    :cond_8
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    if-ne v0, v8, :cond_9

    .line 3146
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabBFm;->getInnerSongList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 3147
    :cond_9
    iget v0, p0, Lcom/fiio/music/activity/cl;->f:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_a

    .line 3148
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/cl;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/fragment/TabDFm;->getInnerSongList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 3149
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->g:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 3150
    iget-object v0, p0, Lcom/fiio/music/activity/cl;->g:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 3151
    return-void
.end method

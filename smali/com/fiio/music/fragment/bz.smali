.class final Lcom/fiio/music/fragment/bz;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 855
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 895
    :cond_0
    :goto_0
    :sswitch_0
    return v9

    .line 858
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 859
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 861
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 862
    iget-object v2, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v3, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c00b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabCFr;->access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V

    .line 870
    :goto_1
    if-eqz v1, :cond_0

    .line 871
    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v2, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    goto :goto_0

    .line 863
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 864
    iget-object v2, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v3, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0108

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabCFr;->access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V

    goto :goto_1

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v3, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabCFr;->access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v4

    .line 867
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v6}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0104

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    iget-object v6, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v6}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0055

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 867
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 866
    invoke-static {v3, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/fragment/TabCFr;->access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V

    goto/16 :goto_1

    .line 877
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 878
    iget-object v1, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "batch"

    invoke-static {v1, v2, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 883
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 884
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 885
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 887
    iget-object v0, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$20(Lcom/fiio/music/fragment/TabCFr;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Lcom/fiio/music/fragment/TabCFr;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabCFr;->access$21(Lcom/fiio/music/fragment/TabCFr;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 889
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$11(Lcom/fiio/music/fragment/TabCFr;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fiio/music/entity/Song;

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->playerMusicByItem(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 890
    iget-object v0, p0, Lcom/fiio/music/fragment/bz;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 855
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.class final Lcom/fiio/music/adapter/y;
.super Ljava/lang/Object;
.source "QueryAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/QueryAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    .prologue
    const v6, 0x7f0c0108

    const/16 v7, 0xd

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1007
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1108
    :cond_0
    :goto_0
    return v9

    .line 1009
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 1010
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1011
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    .line 1012
    if-eqz v1, :cond_3

    .line 1013
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1014
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    .line 1015
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

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

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1018
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1020
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    :cond_1
    if-ltz v0, :cond_0

    .line 1029
    if-nez v0, :cond_2

    move v0, v8

    .line 1030
    :cond_2
    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2, v1, v0, v4}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    .line 1031
    invoke-virtual {v3}, Lcom/fiio/music/util/j;->e()[Ljava/lang/String;

    move-result-object v0

    .line 1033
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1034
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1035
    const/4 v4, 0x2

    aget-object v4, v0, v4

    .line 1036
    const/4 v5, 0x3

    aget-object v5, v0, v5

    .line 1037
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 1048
    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    .line 1050
    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1049
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    .line 1051
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 1022
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1023
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 1038
    :cond_5
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1039
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1041
    new-instance v0, Lorg/justcodecs/dsd/SacdDataFormat;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    iget-object v4, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v4}, Lorg/justcodecs/dsd/SacdDataFormat;-><init>(Ljava/lang/String;Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 1042
    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lorg/justcodecs/dsd/SacdDataFormat;->getSacdSongList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-virtual {v2, v0, v7, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto/16 :goto_1

    .line 1044
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->mediaPlayerManager:Lcom/fiio/music/service/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v7, v2, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1055
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    .line 1056
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 1060
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1061
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1063
    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    .line 1064
    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v5, v5, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    .line 1072
    :goto_2
    if-eqz v1, :cond_7

    .line 1073
    new-instance v1, Lcom/fiio/music/util/bw;

    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bw;->a(Ljava/util/List;)Z

    .line 1077
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 1065
    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 1066
    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v5, v5, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    goto :goto_2

    .line 1068
    :cond_9
    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v3}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v6, v6, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0104

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1070
    iget-object v6, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v6, v6, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0c0055

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1069
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1068
    invoke-static {v3, v4, v5}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    goto/16 :goto_2

    .line 1080
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 1083
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1084
    iget-object v1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, v1, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const-string v2, "batch"

    invoke-static {v1, v2, v0}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 1085
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 1088
    :pswitch_5
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    .line 1089
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    goto/16 :goto_0

    .line 1092
    :pswitch_6
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->cancelSelect()V

    .line 1094
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v2}, Lcom/fiio/music/adapter/QueryAdapter;->access$7(Lcom/fiio/music/adapter/QueryAdapter;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v3, v3, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    .line 1097
    iget-object v4, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v4, v4, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 1098
    iget-object v6, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v6}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v6

    iget-object v7, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v7, v7, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/fiio/music/b/k;->a([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    .line 1097
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1096
    invoke-static {v2, v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$8(Lcom/fiio/music/adapter/QueryAdapter;Landroid/widget/Toast;)V

    .line 1100
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInSongItemApdapter()V

    .line 1101
    iget-object v0, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/adapter/y;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    goto/16 :goto_0

    .line 1105
    :pswitch_7
    invoke-static {}, Lcom/fiio/music/adapter/QueryAdapter;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multi delete failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

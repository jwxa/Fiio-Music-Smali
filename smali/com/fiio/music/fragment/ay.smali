.class final Lcom/fiio/music/fragment/ay;
.super Landroid/os/Handler;
.source "TabAFm.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 231
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 265
    return-void

    .line 235
    :pswitch_0
    new-array v4, v11, [Ljava/lang/String;

    const-string v0, "albumPath"

    aput-object v0, v4, v6

    .line 236
    new-array v5, v11, [I

    const v0, 0x7f0b0270

    aput v0, v5, v6

    .line 237
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    iget-object v10, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    new-instance v0, Lcom/fiio/music/test/simpleCursorSongAdapter;

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0374

    .line 239
    iget-object v3, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v7, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v7}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v7

    iget-object v8, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v8}, Lcom/fiio/music/fragment/TabAFm;->access$4(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v8

    iget-object v9, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v9}, Lcom/fiio/music/fragment/TabAFm;->access$5(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/fiio/music/test/simpleCursorSongAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILcom/fiio/music/service/h;Lcom/fiio/music/swipemenulistview/SwipeMenuListView;I)V

    .line 238
    invoke-static {v10, v0}, Lcom/fiio/music/fragment/TabAFm;->access$6(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/test/simpleCursorSongAdapter;)V

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$4(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$7(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setOnAddPlayListCallBack(Lcom/fiio/music/test/k;)V

    .line 245
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$8(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setOnAddMyLoveListCallBack(Lcom/fiio/music/test/j;)V

    .line 246
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$9(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setOnDeleteCallBack(Lcom/fiio/music/test/m;)V

    .line 247
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$10(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->setOnBatchPlayerCallBack(Lcom/fiio/music/test/l;)V

    .line 248
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " SortsongFirst ASC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v11}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    .line 253
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 255
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$12(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "positionA"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$13(Lcom/fiio/music/fragment/TabAFm;I)V

    .line 256
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$12(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "topA"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$14(Lcom/fiio/music/fragment/TabAFm;I)V

    .line 257
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$4(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$15(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$16(Lcom/fiio/music/fragment/TabAFm;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_1

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/ay;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0, v6}, Lcom/fiio/music/activity/LocalMusicActivity;->a_z_sideBar_show(Z)V

    goto :goto_2

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

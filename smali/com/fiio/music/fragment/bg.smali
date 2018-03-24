.class final Lcom/fiio/music/fragment/bg;
.super Landroid/os/Handler;
.source "TabAFm.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;

.field private b:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 460
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 463
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$29(Lcom/fiio/music/fragment/TabAFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 510
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 511
    return-void

    .line 465
    :pswitch_0
    new-instance v0, Lcom/fiio/music/b/k;

    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    .line 468
    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$29(Lcom/fiio/music/fragment/TabAFm;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;Ljava/util/List;)[Ljava/lang/Integer;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/fiio/music/b/k;->a([Ljava/lang/Integer;)I

    .line 472
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/fiio/music/fragment/bg;->b:Landroid/widget/Toast;

    iget-object v3, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    const v5, 0x7f0c0107

    invoke-virtual {v4, v5}, Lcom/fiio/music/fragment/TabAFm;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/fragment/bg;->b:Landroid/widget/Toast;

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 478
    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    .line 481
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 483
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    .line 501
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setDataAfterDelInSongItemApdapter()V

    goto/16 :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->Y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$29(Lcom/fiio/music/fragment/TabAFm;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/h;->b(ILjava/util/List;)I

    move-result v0

    .line 489
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 490
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_3

    .line 492
    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v6}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;Landroid/database/Cursor;I)V

    goto :goto_1

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->e()V

    goto :goto_1

    .line 496
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bg;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/service/h;->a(Landroid/database/Cursor;I)V

    goto :goto_1

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

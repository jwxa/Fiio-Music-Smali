.class final Lcom/fiio/music/activity/dv;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Lcom/fiio/music/satellitemenu/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1347
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$8(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1348
    if-ne p1, v2, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->setFootViewInterface()V

    .line 1350
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->showBulkManage()V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    if-ne p1, v3, :cond_3

    .line 1352
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$50(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "playList"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1353
    if-eqz v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$50(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "playList"

    invoke-virtual {v0, v1, v5}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1355
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$51(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->orderListByA_Z(ILjava/util/List;)V

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$50(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "playList"

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1359
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$51(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->orderListByA_Z(ILjava/util/List;)V

    goto :goto_0

    .line 1362
    :cond_3
    if-ne p1, v4, :cond_0

    .line 1363
    const-string v0, "zxy---"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->RestoreDefaultSort()V

    goto :goto_0

    .line 1367
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$8(Lcom/fiio/music/activity/MyMusicListActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1368
    if-ne p1, v2, :cond_5

    .line 1369
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->setFootViewInterface()V

    .line 1370
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->showBulkManage()V

    goto :goto_0

    .line 1371
    :cond_5
    if-ne p1, v3, :cond_7

    .line 1372
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "AZplagListSong"

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1373
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1374
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_6

    .line 1375
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1376
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1381
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v2, "AZplagListSong"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 1382
    iget-object v2, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->songOrderByAZ(II)V

    goto/16 :goto_0

    .line 1378
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1379
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_1

    .line 1383
    :cond_7
    if-ne p1, v4, :cond_9

    .line 1384
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "AZplagListSong"

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1385
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1386
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_8

    .line 1387
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1388
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1393
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v2, "AZplagListSong"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v1

    .line 1394
    iget-object v2, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v2, v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->songOrderByAZ(II)V

    goto/16 :goto_0

    .line 1390
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1391
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_2

    .line 1395
    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "AZplagListSong"

    sget v2, Lcom/fiio/music/util/cn;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1397
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1398
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_a

    .line 1399
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1400
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1401
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$15(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 1407
    :goto_3
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1403
    :cond_a
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1404
    sget v0, Lcom/fiio/music/util/cn;->b:I

    .line 1405
    iget-object v0, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dv;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$15(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    goto :goto_3
.end method

.class final Lcom/fiio/music/network/activity/c;
.super Lcom/fiio/music/network/b/g;
.source "SearchLrcActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/network/activity/SearchLrcActivity;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    iput-object p2, p0, Lcom/fiio/music/network/activity/c;->c:Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 238
    const-string v0, "SearchLrcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchCloudMusic onError code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v2, " : e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 244
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x5

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    if-nez p1, :cond_1

    const-string v0, "SearchLrcActivity"

    const-string v2, "searchCloudMusic onResponse response is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SearchLrcActivity"

    const-string v2, "searchCloudMusic onResponse response code not equal 200"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "SearchLrcActivity"

    const-string v2, "searchCloudMusic onResponse response getResult is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-virtual {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "playingSong"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    const-string v2, "SearchLrcActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searchCloudMusic onResponse song = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->c:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/fiio/music/network/d/a/a;->a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchLrcActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "searchCloudMusic songIdForSearchLrc = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_c

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    const-string v2, "SearchLrcActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response.getResult() Size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SearchLrcActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response.getResult().getSongs() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v8, :cond_7

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v2, v4}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V

    :cond_4
    :goto_1
    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v4, v1, p1, v0, v10}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$12(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x5

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2, v11}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v2, v4}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v2, v5}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V

    :cond_8
    :goto_3
    move v2, v1

    :goto_4
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v5, v1, p1, v0, v10}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$12(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$10(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v2, v6, v8

    if-eqz v2, :cond_8

    :cond_a
    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2, v11}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v2, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v2, v5}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$11(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/fiio/music/network/activity/c;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v3, v2, p1, v0, v1}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$12(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)V

    goto/16 :goto_0
.end method

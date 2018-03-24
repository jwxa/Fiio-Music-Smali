.class final Lcom/fiio/music/network/activity/d;
.super Lcom/fiio/music/network/b/g;
.source "SearchLrcActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fiio/music/network/b/g",
        "<",
        "Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/network/activity/SearchLrcActivity;

.field private final synthetic c:Z

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/activity/SearchLrcActivity;ZLjava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    iput-boolean p2, p0, Lcom/fiio/music/network/activity/d;->c:Z

    iput-object p3, p0, Lcom/fiio/music/network/activity/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/fiio/music/network/activity/d;->e:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    .line 372
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    const-string v0, "SearchLrcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchAndWriteLrcByHand onError code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean v0, p0, Lcom/fiio/music/network/activity/d;->c:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 388
    :goto_0
    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v0

    .line 389
    invoke-virtual {v0, v3}, Lcom/fiio/music/network/b/a;->a(Z)V

    .line 391
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$13(Lcom/fiio/music/network/activity/SearchLrcActivity;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;

    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fiio/music/network/b/a;->a(Z)V

    if-nez p1, :cond_1

    const-string v0, "SearchLrcActivity"

    const-string v1, "searchAndWriteLrcByHand onResponse  response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/fiio/music/network/activity/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$13(Lcom/fiio/music/network/activity/SearchLrcActivity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/lrc/SearchLrcResult;->getLrc()Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "SearchLrcActivity"

    const-string v1, "searchAndWriteLrcByHand onResponse lrc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/fiio/music/network/activity/d;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$13(Lcom/fiio/music/network/activity/SearchLrcActivity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/lrc/Lrc;->getLyric()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchLrcActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SearchCloudLrc onResponse lyric = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/fiio/music/network/activity/d;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$1(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$2(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$9(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$13(Lcom/fiio/music/network/activity/SearchLrcActivity;)V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/fiio/music/network/activity/d;->c:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    iget-object v2, p0, Lcom/fiio/music/network/activity/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/network/activity/d;->e:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    invoke-static {v1, v2, v3}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$14(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchLrcActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searchAndWriteLrcByHand onResponse coverUrl = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    const-string v0, "coverurl"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$15(Lcom/fiio/music/network/activity/SearchLrcActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    iget-object v2, p0, Lcom/fiio/music/network/activity/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/fiio/music/network/activity/d;->e:Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    invoke-static {v1, v2, v3}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$14(Lcom/fiio/music/network/activity/SearchLrcActivity;Ljava/lang/String;Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$16(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v1}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$17(Lcom/fiio/music/network/activity/SearchLrcActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/fiio/music/network/activity/d;->a:Lcom/fiio/music/network/activity/SearchLrcActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchLrcActivity;->access$13(Lcom/fiio/music/network/activity/SearchLrcActivity;)V

    goto/16 :goto_0
.end method

.class final Lcom/fiio/music/network/activity/a;
.super Lcom/fiio/music/network/b/g;
.source "SearchCoverActivity.java"


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
.field final synthetic a:Lcom/fiio/music/network/activity/SearchCoverActivity;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/activity/SearchCoverActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    iput-object p2, p0, Lcom/fiio/music/network/activity/a;->c:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchCloudMusic onError code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, " : e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 175
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "searchCloudMusic onResponse response is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "searchCloudMusic onResponse response code not equal 200"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "searchCloudMusic onResponse response getResult is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "searchCloudMusic onResponse response song size is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "searchCloudMusic onResponse song = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v3}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$4(Lcom/fiio/music/network/activity/SearchCoverActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$4(Lcom/fiio/music/network/activity/SearchCoverActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget-object v2, p0, Lcom/fiio/music/network/activity/a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/fiio/music/network/d/a/a;->b(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "searchCloudMusic songCoverId = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_a

    invoke-static {}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "searchSongs.size() = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_7

    :goto_1
    if-lt v1, v9, :cond_5

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$8(Lcom/fiio/music/network/activity/SearchCoverActivity;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$5(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v4}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$5(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$1(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$2(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$3(Lcom/fiio/music/network/activity/SearchCoverActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_4
    if-lt v2, v5, :cond_b

    :goto_5
    if-lt v5, v8, :cond_11

    :goto_6
    if-lt v1, v8, :cond_d

    :goto_7
    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$7(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$5(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v1}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$7(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$6(Lcom/fiio/music/network/activity/SearchCoverActivity;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$5(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/fiio/music/network/activity/a;->a:Lcom/fiio/music/network/activity/SearchCoverActivity;

    invoke-static {v2}, Lcom/fiio/music/network/activity/SearchCoverActivity;->access$5(Lcom/fiio/music/network/activity/SearchCoverActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_11
    if-lt v1, v5, :cond_f

    goto/16 :goto_7
.end method

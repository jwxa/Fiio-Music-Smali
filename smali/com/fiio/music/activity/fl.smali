.class final Lcom/fiio/music/activity/fl;
.super Lcom/fiio/music/network/b/g;
.source "PlayerMainActivity.java"


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
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;

.field private final synthetic c:Lcom/fiio/music/entity/Song;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/fl;->c:Lcom/fiio/music/entity/Song;

    .line 4017
    invoke-direct {p0}, Lcom/fiio/music/network/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 4021
    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchCloudMusic onError code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v2, 0x7f0c01d6

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4024
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const v2, 0x7f0c01d6

    .line 1
    check-cast p1, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchCloudMusic onResponse response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchCloudMusic onResponse response code not equal 200"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchCloudMusic onResponse response Result is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/fl;->c:Lcom/fiio/music/entity/Song;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/fiio/music/network/d/a/a;->a(Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;Lcom/fiio/music/entity/Song;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchCloudMusic onResponse songIdForSearchLrc is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$30(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v2}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/fl;->c:Lcom/fiio/music/entity/Song;

    invoke-static {v0, v3, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$95(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    iget-object v0, p0, Lcom/fiio/music/activity/fl;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Lcom/fiio/music/entity/Song;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchCloudMusic onResponse Cover Exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/SearchMusicResult;->getResult()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Result;->getSongs()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchCloudMusic searchSongs is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_9

    invoke-static {}, Lcom/fiio/music/activity/PlayerMainActivity;->access$29()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendSearchCloudMusic onResponse songToGetAlbum is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Song;->getAlbum()Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fiio/music/network/bean/cloudmusic/searchmusic/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fiio/music/network/b/a;->a()Lcom/fiio/music/network/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/fl;->c:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v0, v0, v2}, Lcom/fiio/music/network/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0
.end method

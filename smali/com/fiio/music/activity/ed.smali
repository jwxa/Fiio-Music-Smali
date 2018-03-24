.class final Lcom/fiio/music/activity/ed;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ec;

.field private final synthetic b:I

.field private final synthetic c:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ec;ILcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iput p2, p0, Lcom/fiio/music/activity/ed;->b:I

    iput-object p3, p0, Lcom/fiio/music/activity/ed;->c:Lcom/fiio/music/custom/f;

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getContentTitle()Ljava/lang/String;

    move-result-object v2

    .line 1904
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1905
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0054

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1906
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1907
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v1, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1909
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v2

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v4, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v5, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1910
    if-eqz v1, :cond_1

    .line 1911
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v2, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1912
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    iget v2, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-virtual {v1, v2}, Lcom/fiio/music/adapter/SongItemAdapter;->deleteItem(I)V

    .line 1913
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v2, v2, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1915
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1916
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 1917
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1918
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    .line 1929
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 1930
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    .line 1965
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 1966
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->c:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 1967
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$7(Lcom/fiio/music/activity/MyMusicListActivity;)V

    .line 1968
    return-void

    .line 1922
    :cond_2
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v4

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1935
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;)V

    .line 1936
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v1, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 1937
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v3

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v4, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v5, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/fiio/music/util/bw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1938
    if-eqz v1, :cond_1

    .line 1939
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    iget v3, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1940
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    iget v3, p0, Lcom/fiio/music/activity/ed;->b:I

    invoke-virtual {v1, v3}, Lcom/fiio/music/adapter/SongItemAdapter;->deleteItem(I)V

    .line 1942
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1943
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 1944
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1945
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1946
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    .line 1956
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$16(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/swipemenulistview/SwipeMenuListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1957
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->B()Ljava/lang/String;

    move-result-object v0

    .line 1958
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v0, v0, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1949
    :cond_5
    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v3

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1950
    iget-object v1, p0, Lcom/fiio/music/activity/ed;->a:Lcom/fiio/music/activity/ec;

    iget-object v1, v1, Lcom/fiio/music/activity/ec;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/service/h;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

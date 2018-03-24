.class final Lcom/fiio/music/activity/gr;
.super Ljava/lang/Object;
.source "SearchSongActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/SearchSongActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/SearchSongActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v3, "SearchAutoAdapter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->a(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/adapter/SearchAutoAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/SearchAutoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/c/a;

    .line 161
    iget-object v1, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SearchSongActivity;->b(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/util/ClearEditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->d()Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->c()Ljava/lang/String;

    move-result-object v3

    .line 171
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    iget-object v2, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/SearchSongActivity;->d(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/k;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/b/k;->c(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    if-eqz v0, :cond_c

    .line 180
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/SearchSongActivity;->e(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/service/h;

    move-result-object v4

    iget-object v5, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-virtual {v5}, Lcom/fiio/music/activity/SearchSongActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/fiio/music/util/j;-><init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V

    .line 183
    invoke-virtual {v3, v0, v2, v6}, Lcom/fiio/music/util/j;->a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V

    .line 190
    :goto_1
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v0

    .line 256
    :goto_2
    iget-object v2, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/SearchSongActivity;->f(Lcom/fiio/music/activity/SearchSongActivity;)V

    .line 257
    iget-object v2, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/SearchSongActivity;->a(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/adapter/SearchAutoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/adapter/SearchAutoAdapter;->initSearchHistory()V

    .line 258
    iget-object v2, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-virtual {v2, v1, v0}, Lcom/fiio/music/activity/SearchSongActivity;->a(II)V

    goto/16 :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/SearchSongActivity;->e(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/service/h;

    move-result-object v3

    invoke-virtual {v3, v0, v6, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/util/List;)V

    goto :goto_1

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/SearchSongActivity;->e(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/service/h;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v6, v4, v2}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v3, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/SearchSongActivity;->d(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fiio/music/b/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 196
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 197
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 198
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    .line 200
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 207
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 220
    :cond_6
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v0

    move v1, v2

    .line 223
    goto/16 :goto_2

    .line 201
    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 202
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 223
    :cond_8
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    iget-object v0, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/i/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/i/d;

    invoke-virtual {v0}, Lcom/fiio/music/i/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v3, p0, Lcom/fiio/music/activity/gr;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/SearchSongActivity;->d(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 227
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 228
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 230
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_b

    .line 237
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 249
    :cond_a
    const/4 v1, 0x2

    .line 250
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    goto/16 :goto_2

    .line 231
    :cond_b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 232
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

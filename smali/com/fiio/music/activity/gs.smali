.class final Lcom/fiio/music/activity/gs;
.super Ljava/lang/Object;
.source "SearchSongActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/SearchSongActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/SearchSongActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->g(Lcom/fiio/music/activity/SearchSongActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->h(Lcom/fiio/music/activity/SearchSongActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->h(Lcom/fiio/music/activity/SearchSongActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SearchSongActivity;->d(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/k;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->h(Lcom/fiio/music/activity/SearchSongActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SearchSongActivity;->i(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/c;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/c;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->h(Lcom/fiio/music/activity/SearchSongActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SearchSongActivity;->j(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/b/b;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/b;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/SearchSongActivity;->h(Lcom/fiio/music/activity/SearchSongActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/i/b;->a(Ljava/util/List;)V

    .line 285
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/gs;->a:Lcom/fiio/music/activity/SearchSongActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SearchSongActivity;->c(Lcom/fiio/music/activity/SearchSongActivity;)Lcom/fiio/music/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/i/b;->a()V

    goto :goto_0
.end method

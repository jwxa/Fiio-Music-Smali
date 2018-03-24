.class final Lcom/fiio/music/service/s;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Lcom/fiio/music/service/ab;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 1948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 1951
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->a(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1952
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;I)V

    .line 1953
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;Z)V

    .line 1954
    const-string v0, "\u64ad\u653e\u5b8c\u6bd5 !! \u81ea\u52a8\u5207\u6362\u64ad\u653e\u5b8c\u6bd5\uff0conSequentialPlayCompleted , \u8c03\u7528\u6682\u505c"

    invoke-static {v0}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->m(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1958
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->f(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 1959
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1960
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->stopPlay()V

    .line 1965
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1966
    iget-object v0, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v1}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 1968
    iget-object v2, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v2}, Lcom/fiio/music/service/MediaPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v3, v3, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 1967
    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/util/h;->b(Lcom/fiio/music/entity/Song;ILandroid/content/Context;Lcom/b/a/b/f;)Ljava/lang/String;

    move-result-object v0

    .line 1979
    new-instance v1, Lcom/b/a/b/a/f;

    invoke-direct {v1, v4, v4}, Lcom/b/a/b/a/f;-><init>(II)V

    .line 1980
    iget-object v2, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v2, v2, Lcom/fiio/music/service/MediaPlayerService;->c:Lcom/b/a/b/f;

    .line 1981
    iget-object v3, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->n(Lcom/fiio/music/service/MediaPlayerService;)Lcom/b/a/b/d;

    move-result-object v3

    .line 1980
    invoke-virtual {v2, v0, v1, v3}, Lcom/b/a/b/f;->a(Ljava/lang/String;Lcom/b/a/b/a/f;Lcom/b/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1982
    iget-object v1, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1983
    iget-object v1, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v2, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v2}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1984
    iget-object v3, p0, Lcom/fiio/music/service/s;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v3}, Lcom/fiio/music/service/MediaPlayerService;->b(Lcom/fiio/music/service/MediaPlayerService;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1983
    invoke-virtual {v1, v0, v2, v3}, Lcom/fiio/music/service/MediaPlayerService;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    :cond_0
    return-void

    .line 1962
    :cond_1
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->ae()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->forSdCard()V

    goto :goto_0
.end method

.class final Lcom/fiio/music/service/q;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Lcom/example/root/checkappmusic/FiioMediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(II)Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->j:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->k(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->d(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 610
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    iget-boolean v0, v0, Lcom/fiio/music/service/MediaPlayerService;->p:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->i(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/q;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->l(Lcom/fiio/music/service/MediaPlayerService;)V

    goto :goto_0
.end method

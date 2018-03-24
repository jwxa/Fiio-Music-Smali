.class public final Lcom/fiio/music/service/z;
.super Landroid/os/Binder;
.source "MediaPlayerService.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method public constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 4793
    iput-object p1, p0, Lcom/fiio/music/service/z;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/fiio/music/service/MediaPlayerService;
    .locals 1

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/fiio/music/service/z;->a:Lcom/fiio/music/service/MediaPlayerService;

    return-object v0
.end method

.method public final a(Lcom/fiio/music/g/a;)V
    .locals 1

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/fiio/music/service/z;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ae(Lcom/fiio/music/service/MediaPlayerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4801
    return-void
.end method

.method public final b(Lcom/fiio/music/g/a;)V
    .locals 1

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/fiio/music/service/z;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->ae(Lcom/fiio/music/service/MediaPlayerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4806
    return-void
.end method

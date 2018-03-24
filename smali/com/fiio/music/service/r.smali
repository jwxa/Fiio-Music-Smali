.class final Lcom/fiio/music/service/r;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Lcom/example/root/checkappmusic/FiioMediaPlayer$OnPrepareOkListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/r;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepareOk(Z)V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/fiio/music/service/r;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/MediaPlayerService;->a(Z)V

    .line 620
    return-void
.end method

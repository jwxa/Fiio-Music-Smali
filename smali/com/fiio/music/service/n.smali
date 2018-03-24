.class final Lcom/fiio/music/service/n;
.super Ljava/lang/Object;
.source "MediaPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/MediaPlayerService;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/n;->a:Lcom/fiio/music/service/MediaPlayerService;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/fiio/music/service/n;->a:Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {v0}, Lcom/fiio/music/service/MediaPlayerService;->af(Lcom/fiio/music/service/MediaPlayerService;)V

    .line 911
    return-void
.end method

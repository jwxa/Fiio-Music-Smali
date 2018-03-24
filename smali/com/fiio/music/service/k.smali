.class final Lcom/fiio/music/service/k;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/service/h;


# direct methods
.method constructor <init>(Lcom/fiio/music/service/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/service/k;->a:Lcom/fiio/music/service/h;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/fiio/music/service/k;->a:Lcom/fiio/music/service/h;

    invoke-static {v0}, Lcom/fiio/music/service/h;->b(Lcom/fiio/music/service/h;)Lcom/fiio/music/service/MediaPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/MediaPlayerService;->y()V

    .line 437
    return-void
.end method

.class final Lcom/fiio/music/activity/bh;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/bh;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 2467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/fiio/music/activity/bh;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    .line 2471
    return-void
.end method

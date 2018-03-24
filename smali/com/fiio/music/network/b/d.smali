.class final Lcom/fiio/music/network/b/d;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/network/b/a;

.field private final synthetic b:Lcom/fiio/music/network/b/g;

.field private final synthetic c:Le/g;

.field private final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/network/b/g;Le/g;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/b/d;->a:Lcom/fiio/music/network/b/a;

    iput-object p2, p0, Lcom/fiio/music/network/b/d;->b:Lcom/fiio/music/network/b/g;

    iput-object p3, p0, Lcom/fiio/music/network/b/d;->c:Le/g;

    iput-object p4, p0, Lcom/fiio/music/network/b/d;->d:Ljava/lang/Object;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fiio/music/network/b/d;->b:Lcom/fiio/music/network/b/g;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/fiio/music/network/b/d;->b:Lcom/fiio/music/network/b/g;

    iget-object v1, p0, Lcom/fiio/music/network/b/d;->c:Le/g;

    iget-object v1, p0, Lcom/fiio/music/network/b/d;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/fiio/music/network/b/g;->a(Ljava/lang/Object;)V

    .line 512
    :cond_0
    return-void
.end method

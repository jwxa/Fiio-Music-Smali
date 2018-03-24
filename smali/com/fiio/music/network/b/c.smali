.class final Lcom/fiio/music/network/b/c;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/network/b/a;

.field private final synthetic b:Lcom/fiio/music/network/b/g;

.field private final synthetic c:Le/g;

.field private final synthetic d:Ljava/lang/Exception;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/fiio/music/network/b/a;Lcom/fiio/music/network/b/g;Le/g;Ljava/lang/Exception;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/network/b/c;->a:Lcom/fiio/music/network/b/a;

    iput-object p2, p0, Lcom/fiio/music/network/b/c;->b:Lcom/fiio/music/network/b/g;

    iput-object p3, p0, Lcom/fiio/music/network/b/c;->c:Le/g;

    iput-object p4, p0, Lcom/fiio/music/network/b/c;->d:Ljava/lang/Exception;

    iput p5, p0, Lcom/fiio/music/network/b/c;->e:I

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/fiio/music/network/b/c;->b:Lcom/fiio/music/network/b/g;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/fiio/music/network/b/c;->b:Lcom/fiio/music/network/b/g;

    iget-object v1, p0, Lcom/fiio/music/network/b/c;->c:Le/g;

    iget-object v1, p0, Lcom/fiio/music/network/b/c;->d:Ljava/lang/Exception;

    iget v2, p0, Lcom/fiio/music/network/b/c;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/network/b/g;->a(Ljava/lang/Exception;I)V

    .line 493
    :cond_0
    return-void
.end method

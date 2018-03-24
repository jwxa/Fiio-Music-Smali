.class final Lcom/fiio/music/test/d;
.super Ljava/lang/Object;
.source "TestActivityEnter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/fiio/music/test/TestActivityEnter;


# direct methods
.method constructor <init>(Lcom/fiio/music/test/TestActivityEnter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    check-cast p2, Lcom/fiio/music/service/z;

    invoke-static {v0, p2}, Lcom/fiio/music/test/TestActivityEnter;->a(Lcom/fiio/music/test/TestActivityEnter;Lcom/fiio/music/service/z;)V

    .line 153
    iget-object v0, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivityEnter;->a(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/service/z;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    invoke-static {v1}, Lcom/fiio/music/test/TestActivityEnter;->b(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/z;->a(Lcom/fiio/music/g/a;)V

    .line 154
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivityEnter;->a(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/service/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    invoke-static {v0}, Lcom/fiio/music/test/TestActivityEnter;->a(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/service/z;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/fiio/music/test/d;->a:Lcom/fiio/music/test/TestActivityEnter;

    invoke-static {v1}, Lcom/fiio/music/test/TestActivityEnter;->b(Lcom/fiio/music/test/TestActivityEnter;)Lcom/fiio/music/g/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/z;->b(Lcom/fiio/music/g/a;)V

    .line 145
    :cond_0
    return-void
.end method

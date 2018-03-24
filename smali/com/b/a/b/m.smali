.class final Lcom/b/a/b/m;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/b/l;

.field private final synthetic b:Lcom/b/a/b/o;


# direct methods
.method constructor <init>(Lcom/b/a/b/l;Lcom/b/a/b/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b/a/b/m;->a:Lcom/b/a/b/l;

    iput-object p2, p0, Lcom/b/a/b/m;->b:Lcom/b/a/b/o;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/b/a/b/m;->a:Lcom/b/a/b/l;

    iget-object v0, v0, Lcom/b/a/b/l;->a:Lcom/b/a/b/h;

    iget-object v0, v0, Lcom/b/a/b/h;->o:Lcom/b/a/a/a/a;

    iget-object v1, p0, Lcom/b/a/b/m;->b:Lcom/b/a/b/o;

    iget-object v1, v1, Lcom/b/a/b/o;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/b/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/b/a/b/m;->a:Lcom/b/a/b/l;

    invoke-static {v1}, Lcom/b/a/b/l;->a(Lcom/b/a/b/l;)V

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/b/a/b/m;->a:Lcom/b/a/b/l;

    invoke-static {v0}, Lcom/b/a/b/l;->b(Lcom/b/a/b/l;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/b/m;->b:Lcom/b/a/b/o;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_1
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/b/a/b/m;->a:Lcom/b/a/b/l;

    invoke-static {v0}, Lcom/b/a/b/l;->c(Lcom/b/a/b/l;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/b/m;->b:Lcom/b/a/b/o;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

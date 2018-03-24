.class final Lcom/b/a/b/r;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/b/o;


# direct methods
.method constructor <init>(Lcom/b/a/b/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b/a/b/r;->a:Lcom/b/a/b/o;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/b/a/b/r;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->d:Lcom/b/a/b/f/a;

    iget-object v0, p0, Lcom/b/a/b/r;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/b/r;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    .line 373
    return-void
.end method

.class final Lcom/b/a/b/q;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/b/o;

.field private final synthetic b:Lcom/b/a/b/a/c;

.field private final synthetic c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/b/a/b/o;Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iput-object p2, p0, Lcom/b/a/b/q;->b:Lcom/b/a/b/a/c;

    iput-object p3, p0, Lcom/b/a/b/q;->c:Ljava/lang/Throwable;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    iget-object v1, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iget-object v1, v1, Lcom/b/a/b/o;->c:Lcom/b/a/b/d;

    iget-object v2, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    invoke-static {v2}, Lcom/b/a/b/o;->a(Lcom/b/a/b/o;)Lcom/b/a/b/h;

    move-result-object v2

    iget-object v2, v2, Lcom/b/a/b/h;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/b/a/b/d;->c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/b/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->d:Lcom/b/a/b/f/a;

    iget-object v0, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/b/q;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    new-instance v0, Lcom/b/a/b/a/b;

    iget-object v1, p0, Lcom/b/a/b/q;->b:Lcom/b/a/b/a/c;

    iget-object v2, p0, Lcom/b/a/b/q;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/b/a/b/a/b;-><init>(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V

    .line 362
    return-void
.end method

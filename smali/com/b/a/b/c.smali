.class final Lcom/b/a/b/c;
.super Ljava/lang/Object;
.source "DisplayBitmapTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/b/a/b/e/a;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/b/a/b/c/a;

.field private final f:Lcom/b/a/b/f/a;

.field private final g:Lcom/b/a/b/l;

.field private final h:Lcom/b/a/b/a/g;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/b/a/b/n;Lcom/b/a/b/l;Lcom/b/a/b/a/g;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/b/a/b/c;->a:Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p2, Lcom/b/a/b/n;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/b/c;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p2, Lcom/b/a/b/n;->c:Lcom/b/a/b/e/a;

    iput-object v0, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    .line 53
    iget-object v0, p2, Lcom/b/a/b/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/b/c;->d:Ljava/lang/String;

    .line 54
    iget-object v0, p2, Lcom/b/a/b/n;->e:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->q()Lcom/b/a/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/c;->e:Lcom/b/a/b/c/a;

    .line 55
    iget-object v0, p2, Lcom/b/a/b/n;->f:Lcom/b/a/b/f/a;

    iput-object v0, p0, Lcom/b/a/b/c;->f:Lcom/b/a/b/f/a;

    .line 56
    iput-object p3, p0, Lcom/b/a/b/c;->g:Lcom/b/a/b/l;

    .line 57
    iput-object p4, p0, Lcom/b/a/b/c;->h:Lcom/b/a/b/a/g;

    .line 58
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/b/c;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/b/a/b/c;->f:Lcom/b/a/b/f/a;

    iget-object v0, p0, Lcom/b/a/b/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    .line 74
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/b/a/b/c;->g:Lcom/b/a/b/l;

    iget-object v3, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    invoke-virtual {v0, v3}, Lcom/b/a/b/l;->a(Lcom/b/a/b/e/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/b/a/b/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 66
    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/b/a/b/c;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/b/a/b/c;->f:Lcom/b/a/b/f/a;

    iget-object v0, p0, Lcom/b/a/b/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 65
    goto :goto_1

    .line 69
    :cond_2
    const-string v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/b/a/b/c;->h:Lcom/b/a/b/a/g;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/b/a/b/c;->d:Ljava/lang/String;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/b/a/b/c;->e:Lcom/b/a/b/c/a;

    iget-object v1, p0, Lcom/b/a/b/c;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    iget-object v3, p0, Lcom/b/a/b/c;->h:Lcom/b/a/b/a/g;

    invoke-interface {v0, v1, v2, v3}, Lcom/b/a/b/c/a;->a(Landroid/graphics/Bitmap;Lcom/b/a/b/e/a;Lcom/b/a/b/a/g;)V

    .line 71
    iget-object v0, p0, Lcom/b/a/b/c;->g:Lcom/b/a/b/l;

    iget-object v1, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    invoke-virtual {v0, v1}, Lcom/b/a/b/l;->b(Lcom/b/a/b/e/a;)V

    .line 72
    iget-object v0, p0, Lcom/b/a/b/c;->f:Lcom/b/a/b/f/a;

    iget-object v1, p0, Lcom/b/a/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/b/c;->c:Lcom/b/a/b/e/a;

    invoke-interface {v2}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/b/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/b/a/b/f/a;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

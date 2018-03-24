.class final Lcom/b/a/b/t;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/b/a/b/l;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/b/a/b/n;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/b/a/b/l;Landroid/graphics/Bitmap;Lcom/b/a/b/n;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/b/a/b/t;->a:Lcom/b/a/b/l;

    .line 44
    iput-object p2, p0, Lcom/b/a/b/t;->b:Landroid/graphics/Bitmap;

    .line 45
    iput-object p3, p0, Lcom/b/a/b/t;->c:Lcom/b/a/b/n;

    .line 46
    iput-object p4, p0, Lcom/b/a/b/t;->d:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 51
    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/b/a/b/t;->c:Lcom/b/a/b/n;

    iget-object v3, v3, Lcom/b/a/b/n;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/c/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/b/a/b/t;->c:Lcom/b/a/b/n;

    iget-object v0, v0, Lcom/b/a/b/n;->e:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->p()Lcom/b/a/b/g/a;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/b/a/b/t;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0}, Lcom/b/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/b/a/b/c;

    iget-object v2, p0, Lcom/b/a/b/t;->c:Lcom/b/a/b/n;

    iget-object v3, p0, Lcom/b/a/b/t;->a:Lcom/b/a/b/l;

    .line 56
    sget-object v4, Lcom/b/a/b/a/g;->c:Lcom/b/a/b/a/g;

    .line 55
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/b/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/b/a/b/n;Lcom/b/a/b/l;Lcom/b/a/b/a/g;)V

    .line 57
    iget-object v0, p0, Lcom/b/a/b/t;->c:Lcom/b/a/b/n;

    iget-object v0, v0, Lcom/b/a/b/n;->e:Lcom/b/a/b/d;

    invoke-virtual {v0}, Lcom/b/a/b/d;->s()Z

    move-result v0

    iget-object v2, p0, Lcom/b/a/b/t;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/b/a/b/t;->a:Lcom/b/a/b/l;

    invoke-static {v1, v0, v2, v3}, Lcom/b/a/b/o;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/b/a/b/l;)V

    .line 58
    return-void
.end method

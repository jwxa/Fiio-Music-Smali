.class final Lcom/b/a/b/p;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/b/a/b/o;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/b/a/b/o;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b/a/b/p;->a:Lcom/b/a/b/o;

    iput p2, p0, Lcom/b/a/b/p;->b:I

    iput p3, p0, Lcom/b/a/b/p;->c:I

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/b/a/b/p;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->e:Lcom/b/a/b/f/b;

    iget-object v0, p0, Lcom/b/a/b/p;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/b/p;->a:Lcom/b/a/b/o;

    iget-object v0, v0, Lcom/b/a/b/o;->b:Lcom/b/a/b/e/a;

    invoke-interface {v0}, Lcom/b/a/b/e/a;->d()Landroid/view/View;

    iget v0, p0, Lcom/b/a/b/p;->b:I

    iget v0, p0, Lcom/b/a/b/p;->c:I

    .line 346
    return-void
.end method

.class final Lcom/c/a/av;
.super Ljava/util/concurrent/FutureTask;
.source "PicassoExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/c/a/d;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/c/a/av;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/c/a/d;


# direct methods
.method public constructor <init>(Lcom/c/a/d;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/c/a/av;->a:Lcom/c/a/d;

    .line 99
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 92
    check-cast p1, Lcom/c/a/av;

    iget-object v0, p0, Lcom/c/a/av;->a:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->m()Lcom/c/a/aq;

    move-result-object v0

    iget-object v1, p1, Lcom/c/a/av;->a:Lcom/c/a/d;

    invoke-virtual {v1}, Lcom/c/a/d;->m()Lcom/c/a/aq;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/c/a/av;->a:Lcom/c/a/d;

    iget v0, v0, Lcom/c/a/d;->a:I

    iget-object v1, p1, Lcom/c/a/av;->a:Lcom/c/a/d;

    iget v1, v1, Lcom/c/a/d;->a:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/c/a/aq;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/c/a/aq;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

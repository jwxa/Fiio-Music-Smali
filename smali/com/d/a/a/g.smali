.class public final Lcom/d/a/a/g;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/d/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Lcom/d/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/d/a/a/k;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/d/a/a/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/d/a/a/f;",
            ">;",
            "Lcom/d/a/a/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/d/a/a/g;->a:Ljava/util/List;

    .line 47
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/g;->b:Ljava/util/ListIterator;

    .line 48
    iput-object p2, p0, Lcom/d/a/a/g;->c:Lcom/d/a/a/k;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/d/a/a/j;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/d/a/a/g;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/d/a/a/g;->c:Lcom/d/a/a/k;

    invoke-interface {v0, p1}, Lcom/d/a/a/k;->handle(Lcom/d/a/a/j;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/d/a/a/g;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a/f;

    .line 68
    invoke-virtual {v0, p1, p0}, Lcom/d/a/a/f;->a(Lcom/d/a/a/j;Lcom/d/a/a/g;)V

    goto :goto_0
.end method

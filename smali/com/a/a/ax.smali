.class abstract Lcom/a/a/ax;
.super Ljava/lang/Object;
.source "JsonDeserializationVisitor.java"

# interfaces
.implements Lcom/a/a/by;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/by;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/a/a/bx;

.field protected final b:Lcom/a/a/ap;

.field protected final c:Lcom/a/a/bw;

.field protected final d:Lcom/a/a/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/ay",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final f:Lcom/a/a/ba;

.field protected final g:Ljava/lang/reflect/Type;

.field protected final h:Lcom/a/a/av;

.field protected i:Z


# direct methods
.method constructor <init>(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/bw;Lcom/a/a/cb;Lcom/a/a/av;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ba;",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/bx;",
            "Lcom/a/a/ap;",
            "Lcom/a/a/bw;",
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/ay",
            "<*>;>;",
            "Lcom/a/a/av;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/a/a/ax;->g:Ljava/lang/reflect/Type;

    .line 49
    iput-object p3, p0, Lcom/a/a/ax;->a:Lcom/a/a/bx;

    .line 50
    iput-object p4, p0, Lcom/a/a/ax;->b:Lcom/a/a/ap;

    .line 51
    iput-object p5, p0, Lcom/a/a/ax;->c:Lcom/a/a/bw;

    .line 52
    iput-object p6, p0, Lcom/a/a/ax;->d:Lcom/a/a/cb;

    .line 53
    invoke-static {p1}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ba;

    iput-object v0, p0, Lcom/a/a/ax;->f:Lcom/a/a/ba;

    .line 54
    iput-object p7, p0, Lcom/a/a/ax;->h:Lcom/a/a/av;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/ax;->i:Z

    .line 56
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;Lcom/a/a/ax;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/ax",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/a/a/ax;->a:Lcom/a/a/bx;

    new-instance v1, Lcom/a/a/bz;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v0, v1, p2}, Lcom/a/a/bx;->a(Lcom/a/a/bz;Lcom/a/a/by;)V

    .line 113
    invoke-virtual {p2}, Lcom/a/a/ax;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final a(Lcom/a/a/ba;Lcom/a/a/ca;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ba;",
            "Lcom/a/a/ca",
            "<",
            "Lcom/a/a/ay",
            "<*>;",
            "Lcom/a/a/bz;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_1
    iget-object v0, p2, Lcom/a/a/ca;->b:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/bz;

    iget-object v1, v0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    .line 92
    iget-object v0, p2, Lcom/a/a/ca;->a:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/ay;

    iget-object v2, p0, Lcom/a/a/ax;->h:Lcom/a/a/av;

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/ay;->a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Ljava/lang/reflect/Type;Lcom/a/a/at;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 103
    new-instance v0, Lcom/a/a/au;

    invoke-virtual {p2}, Lcom/a/a/at;->t()Lcom/a/a/at;

    move-result-object v1

    iget-object v3, p0, Lcom/a/a/ax;->a:Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/ax;->b:Lcom/a/a/ap;

    iget-object v5, p0, Lcom/a/a/ax;->c:Lcom/a/a/bw;

    iget-object v6, p0, Lcom/a/a/ax;->d:Lcom/a/a/cb;

    iget-object v7, p0, Lcom/a/a/ax;->h:Lcom/a/a/av;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/a/a/au;-><init>(Lcom/a/a/at;Ljava/lang/reflect/Type;Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/bw;Lcom/a/a/cb;Lcom/a/a/av;)V

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/a/a/ax;->a(Ljava/lang/reflect/Type;Lcom/a/a/ax;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/reflect/Type;Lcom/a/a/ba;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 96
    new-instance v0, Lcom/a/a/be;

    iget-object v3, p0, Lcom/a/a/ax;->a:Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/ax;->b:Lcom/a/a/ap;

    iget-object v5, p0, Lcom/a/a/ax;->c:Lcom/a/a/bw;

    iget-object v6, p0, Lcom/a/a/ax;->d:Lcom/a/a/cb;

    iget-object v7, p0, Lcom/a/a/ax;->h:Lcom/a/a/av;

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/a/a/be;-><init>(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/bw;Lcom/a/a/cb;Lcom/a/a/av;)V

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/a/a/ax;->a(Ljava/lang/reflect/Type;Lcom/a/a/ax;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/bz;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/a/a/ax;->i:Z

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/a/a/ax;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/ax;->e:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/ax;->i:Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/a/a/ax;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Lcom/a/a/bz;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final c(Lcom/a/a/bz;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-object v1, p0, Lcom/a/a/ax;->d:Lcom/a/a/cb;

    invoke-virtual {p1, v1}, Lcom/a/a/bz;->a(Lcom/a/a/cb;)Lcom/a/a/ca;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/a/a/ax;->f:Lcom/a/a/ba;

    invoke-virtual {p0, v2, v1}, Lcom/a/a/ax;->a(Lcom/a/a/ba;Lcom/a/a/ca;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    iput-object v1, p0, Lcom/a/a/ax;->e:Ljava/lang/Object;

    .line 82
    iput-boolean v0, p0, Lcom/a/a/ax;->i:Z

    goto :goto_0
.end method

.class final Lcom/a/a/aw;
.super Ljava/lang/Object;
.source "JsonDeserializationContextDefault.java"

# interfaces
.implements Lcom/a/a/av;


# instance fields
.field private final a:Lcom/a/a/bx;

.field private final b:Lcom/a/a/ap;

.field private final c:Lcom/a/a/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/ay",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/bs;


# direct methods
.method constructor <init>(Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/cb;Lcom/a/a/bs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/bx;",
            "Lcom/a/a/ap;",
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/ay",
            "<*>;>;",
            "Lcom/a/a/bs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    .line 38
    iput-object p2, p0, Lcom/a/a/aw;->b:Lcom/a/a/ap;

    .line 39
    iput-object p3, p0, Lcom/a/a/aw;->c:Lcom/a/a/cb;

    .line 40
    iput-object p4, p0, Lcom/a/a/aw;->d:Lcom/a/a/bs;

    .line 41
    return-void
.end method


# virtual methods
.method final a()Lcom/a/a/bw;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/a/a/aw;->d:Lcom/a/a/bs;

    return-object v0
.end method

.method public final a(Lcom/a/a/ba;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/ba;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/ba;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/ba;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/a/a/ba;->t()Lcom/a/a/at;

    move-result-object v1

    new-instance v0, Lcom/a/a/au;

    iget-object v3, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/aw;->b:Lcom/a/a/ap;

    iget-object v5, p0, Lcom/a/a/aw;->d:Lcom/a/a/bs;

    iget-object v6, p0, Lcom/a/a/aw;->c:Lcom/a/a/cb;

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/a/a/au;-><init>(Lcom/a/a/at;Ljava/lang/reflect/Type;Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/bw;Lcom/a/a/cb;Lcom/a/a/av;)V

    iget-object v1, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    new-instance v2, Lcom/a/a/bz;

    invoke-direct {v2, v8, p2, v9}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/a/a/bx;->a(Lcom/a/a/bz;Lcom/a/a/by;)V

    invoke-virtual {v0}, Lcom/a/a/au;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/a/a/ba;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/a/a/ba;->s()Lcom/a/a/bd;

    move-result-object v1

    new-instance v0, Lcom/a/a/be;

    iget-object v3, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/aw;->b:Lcom/a/a/ap;

    iget-object v5, p0, Lcom/a/a/aw;->d:Lcom/a/a/bs;

    iget-object v6, p0, Lcom/a/a/aw;->c:Lcom/a/a/cb;

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/a/a/be;-><init>(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/bw;Lcom/a/a/cb;Lcom/a/a/av;)V

    iget-object v1, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    new-instance v2, Lcom/a/a/bz;

    invoke-direct {v2, v8, p2, v9}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/a/a/bx;->a(Lcom/a/a/bz;Lcom/a/a/by;)V

    invoke-virtual {v0}, Lcom/a/a/be;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/a/a/ba;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {p1}, Lcom/a/a/ba;->u()Lcom/a/a/bg;

    move-result-object v1

    new-instance v0, Lcom/a/a/be;

    iget-object v3, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/aw;->b:Lcom/a/a/ap;

    iget-object v5, p0, Lcom/a/a/aw;->d:Lcom/a/a/bs;

    iget-object v6, p0, Lcom/a/a/aw;->c:Lcom/a/a/cb;

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/a/a/be;-><init>(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/bw;Lcom/a/a/cb;Lcom/a/a/av;)V

    iget-object v2, p0, Lcom/a/a/aw;->a:Lcom/a/a/bx;

    new-instance v3, Lcom/a/a/bz;

    invoke-virtual {v1}, Lcom/a/a/bg;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v3, v1, p2, v9}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v2, v3, v0}, Lcom/a/a/bx;->a(Lcom/a/a/bz;Lcom/a/a/by;)V

    invoke-virtual {v0}, Lcom/a/a/be;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_4
    new-instance v0, Lcom/a/a/bf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed parsing JSON source: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

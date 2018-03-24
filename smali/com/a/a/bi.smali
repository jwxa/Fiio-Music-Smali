.class final Lcom/a/a/bi;
.super Ljava/lang/Object;
.source "JsonSerializationContextDefault.java"

# interfaces
.implements Lcom/a/a/bh;


# instance fields
.field private final a:Lcom/a/a/bx;

.field private final b:Lcom/a/a/ap;

.field private final c:Lcom/a/a/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/bk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/a/a/bt;


# direct methods
.method constructor <init>(Lcom/a/a/bx;Lcom/a/a/ap;ZLcom/a/a/cb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/bx;",
            "Lcom/a/a/ap;",
            "Z",
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/bk",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/a/a/bi;->a:Lcom/a/a/bx;

    .line 39
    iput-object p2, p0, Lcom/a/a/bi;->b:Lcom/a/a/ap;

    .line 40
    iput-boolean p3, p0, Lcom/a/a/bi;->d:Z

    .line 41
    iput-object p4, p0, Lcom/a/a/bi;->c:Lcom/a/a/cb;

    .line 42
    new-instance v0, Lcom/a/a/bt;

    invoke-direct {v0}, Lcom/a/a/bt;-><init>()V

    iput-object v0, p0, Lcom/a/a/bi;->e:Lcom/a/a/bt;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/bi;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/a/a/ba;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/a/a/ba;
    .locals 7

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/a/a/bj;

    iget-object v1, p0, Lcom/a/a/bi;->a:Lcom/a/a/bx;

    iget-object v2, p0, Lcom/a/a/bi;->b:Lcom/a/a/ap;

    iget-boolean v3, p0, Lcom/a/a/bi;->d:Z

    iget-object v4, p0, Lcom/a/a/bi;->c:Lcom/a/a/cb;

    iget-object v6, p0, Lcom/a/a/bi;->e:Lcom/a/a/bt;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/bj;-><init>(Lcom/a/a/bx;Lcom/a/a/ap;ZLcom/a/a/cb;Lcom/a/a/bh;Lcom/a/a/bt;)V

    .line 62
    iget-object v1, p0, Lcom/a/a/bi;->a:Lcom/a/a/bx;

    new-instance v2, Lcom/a/a/bz;

    invoke-direct {v2, p1, p2, p3}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2, v0}, Lcom/a/a/bx;->a(Lcom/a/a/bz;Lcom/a/a/by;)V

    .line 63
    invoke-virtual {v0}, Lcom/a/a/bj;->a()Lcom/a/a/ba;

    move-result-object v0

    goto :goto_0
.end method

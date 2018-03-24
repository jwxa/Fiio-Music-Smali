.class abstract Le/a/d/b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lf/z;


# instance fields
.field protected final a:Lf/l;

.field protected b:Z

.field final synthetic c:Le/a/d/a;


# direct methods
.method private constructor <init>(Le/a/d/a;)V
    .locals 2

    .prologue
    .line 344
    iput-object p1, p0, Le/a/d/b;->c:Le/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Lf/l;

    iget-object v1, p0, Le/a/d/b;->c:Le/a/d/a;

    iget-object v1, v1, Le/a/d/a;->c:Lf/i;

    invoke-interface {v1}, Lf/i;->a()Lf/aa;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/l;-><init>(Lf/aa;)V

    iput-object v0, p0, Le/a/d/b;->a:Lf/l;

    return-void
.end method

.method synthetic constructor <init>(Le/a/d/a;B)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0, p1}, Le/a/d/b;-><init>(Le/a/d/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lf/aa;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Le/a/d/b;->a:Lf/l;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 357
    iget-object v0, p0, Le/a/d/b;->c:Le/a/d/a;

    iget v0, v0, Le/a/d/a;->e:I

    if-ne v0, v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Le/a/d/b;->c:Le/a/d/a;

    iget v0, v0, Le/a/d/a;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le/a/d/b;->c:Le/a/d/a;

    iget v2, v2, Le/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_2
    iget-object v0, p0, Le/a/d/b;->c:Le/a/d/a;

    iget-object v0, p0, Le/a/d/b;->a:Lf/l;

    invoke-static {v0}, Le/a/d/a;->a(Lf/l;)V

    .line 362
    iget-object v0, p0, Le/a/d/b;->c:Le/a/d/a;

    iput v2, v0, Le/a/d/a;->e:I

    .line 363
    iget-object v0, p0, Le/a/d/b;->c:Le/a/d/a;

    iget-object v0, v0, Le/a/d/a;->b:Le/a/b/g;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Le/a/d/b;->c:Le/a/d/a;

    iget-object v1, v0, Le/a/d/a;->b:Le/a/b/g;

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Le/a/d/b;->c:Le/a/d/a;

    invoke-virtual {v1, v0, v2}, Le/a/b/g;->a(ZLe/a/c/c;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

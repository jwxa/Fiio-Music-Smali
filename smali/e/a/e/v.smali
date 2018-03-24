.class final Le/a/e/v;
.super Le/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Le/a/e/ab;

.field final synthetic c:Le/a/e/u;


# direct methods
.method varargs constructor <init>(Le/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/ab;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Le/a/e/v;->c:Le/a/e/u;

    iput-object p4, p0, Le/a/e/v;->a:Le/a/e/ab;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 630
    :try_start_0
    iget-object v0, p0, Le/a/e/v;->c:Le/a/e/u;

    iget-object v0, v0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->c:Le/a/e/s;

    iget-object v1, p0, Le/a/e/v;->a:Le/a/e/ab;

    invoke-virtual {v0, v1}, Le/a/e/s;->a(Le/a/e/ab;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    invoke-static {}, Le/a/g/h;->b()Le/a/g/h;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FramedConnection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Le/a/e/v;->c:Le/a/e/u;

    iget-object v4, v4, Le/a/e/u;->c:Le/a/e/j;

    iget-object v4, v4, Le/a/e/j;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Le/a/g/h;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 634
    :try_start_1
    iget-object v0, p0, Le/a/e/v;->a:Le/a/e/ab;

    sget-object v1, Le/a/e/b;->b:Le/a/e/b;

    invoke-virtual {v0, v1}, Le/a/e/ab;->a(Le/a/e/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 638
    :catch_1
    move-exception v0

    goto :goto_0
.end method

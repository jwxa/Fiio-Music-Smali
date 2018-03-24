.class final Le/a/e/k;
.super Le/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Le/a/e/b;

.field final synthetic d:Le/a/e/j;


# direct methods
.method varargs constructor <init>(Le/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILe/a/e/b;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Le/a/e/k;->d:Le/a/e/j;

    iput p4, p0, Le/a/e/k;->a:I

    iput-object p5, p0, Le/a/e/k;->c:Le/a/e/b;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Le/a/e/k;->d:Le/a/e/j;

    iget v1, p0, Le/a/e/k;->a:I

    iget-object v2, p0, Le/a/e/k;->c:Le/a/e/b;

    invoke-virtual {v0, v1, v2}, Le/a/e/j;->b(ILe/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

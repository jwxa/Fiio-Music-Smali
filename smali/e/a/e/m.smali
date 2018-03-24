.class final Le/a/e/m;
.super Le/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Le/a/e/ai;

.field final synthetic f:Le/a/e/j;


# direct methods
.method varargs constructor <init>(Le/a/e/j;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 1

    .prologue
    .line 352
    iput-object p1, p0, Le/a/e/m;->f:Le/a/e/j;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/e/m;->a:Z

    iput p4, p0, Le/a/e/m;->c:I

    iput p5, p0, Le/a/e/m;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Le/a/e/m;->e:Le/a/e/ai;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Le/a/e/m;->f:Le/a/e/j;

    iget-boolean v1, p0, Le/a/e/m;->a:Z

    iget v2, p0, Le/a/e/m;->c:I

    iget v3, p0, Le/a/e/m;->d:I

    iget-object v4, p0, Le/a/e/m;->e:Le/a/e/ai;

    invoke-virtual {v0, v1, v2, v3, v4}, Le/a/e/j;->a(ZIILe/a/e/ai;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

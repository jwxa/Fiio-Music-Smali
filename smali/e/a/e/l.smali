.class final Le/a/e/l;
.super Le/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Le/a/e/j;


# direct methods
.method varargs constructor <init>(Le/a/e/j;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 319
    iput-object p1, p0, Le/a/e/l;->d:Le/a/e/j;

    iput p4, p0, Le/a/e/l;->a:I

    iput-wide p5, p0, Le/a/e/l;->c:J

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Le/a/e/l;->d:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->p:Le/a/e/af;

    iget v1, p0, Le/a/e/l;->a:I

    iget-wide v2, p0, Le/a/e/l;->c:J

    invoke-virtual {v0, v1, v2, v3}, Le/a/e/af;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

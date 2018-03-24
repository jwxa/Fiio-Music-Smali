.class final Le/a/e/p;
.super Le/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:I

.field final synthetic c:Lf/f;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Le/a/e/j;


# direct methods
.method varargs constructor <init>(Le/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILf/f;IZ)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Le/a/e/p;->f:Le/a/e/j;

    iput p4, p0, Le/a/e/p;->a:I

    iput-object p5, p0, Le/a/e/p;->c:Lf/f;

    iput p6, p0, Le/a/e/p;->d:I

    iput-boolean p7, p0, Le/a/e/p;->e:Z

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 836
    :try_start_0
    iget-object v0, p0, Le/a/e/p;->f:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->i:Le/a/e/aj;

    iget v1, p0, Le/a/e/p;->a:I

    iget-object v1, p0, Le/a/e/p;->c:Lf/f;

    iget v2, p0, Le/a/e/p;->d:I

    iget-boolean v3, p0, Le/a/e/p;->e:Z

    invoke-interface {v0, v1, v2}, Le/a/e/aj;->a(Lf/i;I)Z

    .line 837
    iget-object v0, p0, Le/a/e/p;->f:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->p:Le/a/e/af;

    iget v1, p0, Le/a/e/p;->a:I

    sget-object v2, Le/a/e/b;->f:Le/a/e/b;

    invoke-virtual {v0, v1, v2}, Le/a/e/af;->a(ILe/a/e/b;)V

    .line 838
    iget-object v1, p0, Le/a/e/p;->f:Le/a/e/j;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :try_start_1
    iget-object v0, p0, Le/a/e/p;->f:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Le/a/e/p;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 841
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    :goto_0
    return-void

    .line 841
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 845
    :catch_0
    move-exception v0

    goto :goto_0
.end method

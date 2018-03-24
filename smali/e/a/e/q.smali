.class final Le/a/e/q;
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
    .line 850
    iput-object p1, p0, Le/a/e/q;->d:Le/a/e/j;

    iput p4, p0, Le/a/e/q;->a:I

    iput-object p5, p0, Le/a/e/q;->c:Le/a/e/b;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 852
    iget-object v0, p0, Le/a/e/q;->d:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->i:Le/a/e/aj;

    iget v1, p0, Le/a/e/q;->a:I

    iget-object v1, p0, Le/a/e/q;->c:Le/a/e/b;

    invoke-interface {v0}, Le/a/e/aj;->c()V

    .line 853
    iget-object v1, p0, Le/a/e/q;->d:Le/a/e/j;

    monitor-enter v1

    .line 854
    :try_start_0
    iget-object v0, p0, Le/a/e/q;->d:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->r:Ljava/util/Set;

    iget v2, p0, Le/a/e/q;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 855
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class final Le/a/e/x;
.super Le/a/b;
.source "Http2Connection.java"


# instance fields
.field final synthetic a:Le/a/e/al;

.field final synthetic c:Le/a/e/u;


# direct methods
.method varargs constructor <init>(Le/a/e/u;Ljava/lang/String;[Ljava/lang/Object;Le/a/e/al;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Le/a/e/x;->c:Le/a/e/u;

    iput-object p4, p0, Le/a/e/x;->a:Le/a/e/al;

    invoke-direct {p0, p2, p3}, Le/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 698
    :try_start_0
    iget-object v0, p0, Le/a/e/x;->c:Le/a/e/u;

    iget-object v0, v0, Le/a/e/u;->c:Le/a/e/j;

    iget-object v0, v0, Le/a/e/j;->p:Le/a/e/af;

    iget-object v1, p0, Le/a/e/x;->a:Le/a/e/al;

    invoke-virtual {v0, v1}, Le/a/e/af;->a(Le/a/e/al;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

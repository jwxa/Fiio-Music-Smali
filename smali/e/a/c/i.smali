.class public final Le/a/c/i;
.super Le/as;
.source "RealResponseBody.java"


# instance fields
.field private final a:Le/y;

.field private final b:Lf/i;


# direct methods
.method public constructor <init>(Le/y;Lf/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Le/as;-><init>()V

    .line 28
    iput-object p1, p0, Le/a/c/i;->a:Le/y;

    .line 29
    iput-object p2, p0, Le/a/c/i;->b:Lf/i;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Le/af;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Le/a/c/i;->a:Le/y;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Le/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-static {v0}, Le/af;->a(Ljava/lang/String;)Le/af;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Le/a/c/i;->a:Le/y;

    invoke-static {v0}, Le/a/c/f;->a(Le/y;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lf/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Le/a/c/i;->b:Lf/i;

    return-object v0
.end method

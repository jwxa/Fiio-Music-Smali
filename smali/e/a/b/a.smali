.class public final Le/a/b/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Le/ad;


# instance fields
.field public final a:Le/ag;


# direct methods
.method public constructor <init>(Le/ag;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Le/a/b/a;->a:Le/ag;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Le/ae;)Le/aq;
    .locals 4

    .prologue
    .line 36
    check-cast p1, Le/a/c/h;

    .line 37
    invoke-virtual {p1}, Le/a/c/h;->a()Le/am;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Le/a/c/h;->b()Le/a/b/g;

    move-result-object v2

    .line 41
    invoke-virtual {v1}, Le/am;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 42
    :goto_0
    iget-object v3, p0, Le/a/b/a;->a:Le/ag;

    invoke-virtual {v2, v3, v0}, Le/a/b/g;->a(Le/ag;Z)Le/a/c/c;

    move-result-object v0

    .line 43
    invoke-virtual {v2}, Le/a/b/g;->b()Le/a/b/c;

    move-result-object v3

    .line 45
    invoke-virtual {p1, v1, v2, v0, v3}, Le/a/c/h;->a(Le/am;Le/a/b/g;Le/a/c/c;Le/m;)Le/aq;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

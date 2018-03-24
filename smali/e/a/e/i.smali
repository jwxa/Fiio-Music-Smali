.class final Le/a/e/i;
.super Lf/k;
.source "Http2Codec.java"


# instance fields
.field final synthetic a:Le/a/e/h;


# direct methods
.method public constructor <init>(Le/a/e/h;Lf/z;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Le/a/e/i;->a:Le/a/e/h;

    .line 172
    invoke-direct {p0, p2}, Lf/k;-><init>(Lf/z;)V

    .line 173
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Le/a/e/i;->a:Le/a/e/h;

    iget-object v0, v0, Le/a/e/h;->a:Le/a/b/g;

    const/4 v1, 0x0

    iget-object v2, p0, Le/a/e/i;->a:Le/a/e/h;

    invoke-virtual {v0, v1, v2}, Le/a/b/g;->a(ZLe/a/c/c;)V

    .line 177
    invoke-super {p0}, Lf/k;->close()V

    .line 178
    return-void
.end method

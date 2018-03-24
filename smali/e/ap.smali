.class final Le/ap;
.super Le/ao;
.source "RequestBody.java"


# instance fields
.field final synthetic a:Le/af;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Le/af;I[B)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Le/ap;->a:Le/af;

    iput p2, p0, Le/ap;->b:I

    iput-object p3, p0, Le/ap;->c:[B

    const/4 v0, 0x0

    iput v0, p0, Le/ap;->d:I

    invoke-direct {p0}, Le/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Le/af;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Le/ap;->a:Le/af;

    return-object v0
.end method

.method public final a(Lf/h;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Le/ap;->c:[B

    iget v1, p0, Le/ap;->d:I

    iget v2, p0, Le/ap;->b:I

    invoke-interface {p1, v0, v1, v2}, Lf/h;->c([BII)Lf/h;

    .line 97
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Le/ap;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.class public abstract Le/ao;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le/af;[B)Le/ao;
    .locals 6

    .prologue
    .line 78
    array-length v0, p1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Le/a/c;->a(JJ)V

    new-instance v1, Le/ap;

    invoke-direct {v1, p0, v0, p1}, Le/ap;-><init>(Le/af;I[B)V

    return-object v1
.end method


# virtual methods
.method public abstract a()Le/af;
.end method

.method public abstract a(Lf/h;)V
.end method

.method public b()J
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    return-wide v0
.end method

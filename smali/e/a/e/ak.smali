.class final Le/a/e/ak;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Le/a/e/aj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lf/i;I)Z
    .locals 2

    .prologue
    .line 88
    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lf/i;->f(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

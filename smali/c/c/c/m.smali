.class public Lc/c/c/m;
.super Ljava/util/EventObject;
.source "HttpSessionEvent.java"


# direct methods
.method public constructor <init>(Lc/c/c/g;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a()Lc/c/c/g;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/c/g;

    return-object v0
.end method

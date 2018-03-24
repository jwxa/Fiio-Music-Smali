.class public Lc/c/af;
.super Ljava/util/EventObject;
.source "ServletRequestEvent.java"


# instance fields
.field private a:Lc/c/ac;


# direct methods
.method public constructor <init>(Lc/c/s;Lc/c/ac;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 82
    iput-object p2, p0, Lc/c/af;->a:Lc/c/ac;

    .line 83
    return-void
.end method


# virtual methods
.method public final a()Lc/c/ac;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc/c/af;->a:Lc/c/ac;

    return-object v0
.end method

.method public final b()Lc/c/s;
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/s;

    return-object v0
.end method

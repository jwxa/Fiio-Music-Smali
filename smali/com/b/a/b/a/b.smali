.class public final Lcom/b/a/b/a/b;
.super Ljava/lang/Object;
.source "FailReason.java"


# instance fields
.field private final a:Lcom/b/a/b/a/c;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/b/a/b/a/c;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/b/a/b/a/b;->a:Lcom/b/a/b/a/c;

    .line 32
    iput-object p2, p0, Lcom/b/a/b/a/b;->b:Ljava/lang/Throwable;

    .line 33
    return-void
.end method

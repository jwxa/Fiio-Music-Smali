.class final Lg/a/a/ai;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lcom/d/a/a/k;


# instance fields
.field a:Lcom/d/a/a/g;

.field final synthetic b:Lg/a/a/ah;


# direct methods
.method constructor <init>(Lg/a/a/ah;Lcom/d/a/a/g;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lg/a/a/ai;->b:Lg/a/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p2, p0, Lg/a/a/ai;->a:Lcom/d/a/a/g;

    .line 578
    return-void
.end method


# virtual methods
.method public final handle(Lcom/d/a/a/j;)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lg/a/a/ai;->a:Lcom/d/a/a/g;

    invoke-virtual {v0, p1}, Lcom/d/a/a/g;->a(Lcom/d/a/a/j;)V

    .line 582
    return-void
.end method

.class final Lcom/a/a/n;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/a/a/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/ar",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/a/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lcom/a/a/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p1, p0, Lcom/a/a/n;->a:Ljava/lang/Class;

    .line 1042
    iput-object p2, p0, Lcom/a/a/n;->b:Lcom/a/a/e;

    .line 1043
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1046
    invoke-static {p1}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1048
    :try_start_0
    iget-object v1, p0, Lcom/a/a/n;->b:Lcom/a/a/e;

    invoke-virtual {v1, v0}, Lcom/a/a/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1049
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/n;->b:Lcom/a/a/e;

    iget-object v1, p0, Lcom/a/a/n;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    new-instance v1, Lcom/a/a/bb;

    invoke-direct {v1, v0}, Lcom/a/a/bb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1059
    const-class v0, Lcom/a/a/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

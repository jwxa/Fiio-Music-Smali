.class final Lcom/a/a/j;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/a/a/ay;
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/ay",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/a/a/j;-><init>()V

    return-void
.end method

.method private static a(Lcom/a/a/ba;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1020
    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/ba;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1023
    :catch_1
    move-exception v0

    .line 1024
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 1011
    check-cast p1, Ljava/lang/Boolean;

    new-instance v0, Lcom/a/a/bg;

    invoke-direct {v0, p1}, Lcom/a/a/bg;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1011
    invoke-static {p1}, Lcom/a/a/j;->a(Lcom/a/a/ba;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    const-class v0, Lcom/a/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

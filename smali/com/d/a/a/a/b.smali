.class final Lcom/d/a/a/a/b;
.super Ljava/lang/Object;
.source "HttpServerProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/d/a/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/d/a/a/a/a;->c()Lcom/d/a/a/a/a;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/d/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/d/a/a/a/a;->c()Lcom/d/a/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Lg/a/a/f;

    invoke-direct {v0}, Lg/a/a/f;-><init>()V

    invoke-static {v0}, Lcom/d/a/a/a/a;->a(Lcom/d/a/a/a/a;)Lcom/d/a/a/a/a;

    .line 147
    invoke-static {}, Lcom/d/a/a/a/a;->c()Lcom/d/a/a/a/a;

    move-result-object v0

    goto :goto_0
.end method

.class final Lcom/a/a/cf;
.super Ljava/lang/Object;
.source "SerializedNameAnnotationInterceptingNamingPolicy.java"

# interfaces
.implements Lcom/a/a/ap;


# instance fields
.field private final a:Lcom/a/a/ap;


# direct methods
.method constructor <init>(Lcom/a/a/ap;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/a/a/cf;->a:Lcom/a/a/ap;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/ao;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/a/a/a/a;

    invoke-virtual {p1, v0}, Lcom/a/a/ao;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    .line 46
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/cf;->a:Lcom/a/a/ap;

    invoke-interface {v0, p1}, Lcom/a/a/ap;->a(Lcom/a/a/ao;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

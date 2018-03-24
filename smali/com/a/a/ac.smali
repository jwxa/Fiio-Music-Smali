.class final Lcom/a/a/ac;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/bm;


# direct methods
.method private constructor <init>(Lcom/a/a/bm;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Lcom/a/a/ac;->a:Lcom/a/a/bm;

    .line 759
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/bm;B)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/a/a/ac;-><init>(Lcom/a/a/bm;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 1

    .prologue
    .line 754
    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcom/a/a/ac;->a:Lcom/a/a/bm;

    invoke-virtual {v0, p1}, Lcom/a/a/bm;->a(Ljava/lang/Long;)Lcom/a/a/ba;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    const-class v0, Lcom/a/a/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

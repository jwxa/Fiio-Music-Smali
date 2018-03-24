.class final Lcom/a/a/y;
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
        "Ljava/util/GregorianCalendar;",
        ">;",
        "Lcom/a/a/bk",
        "<",
        "Ljava/util/GregorianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/a/a/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/bh;)Lcom/a/a/ba;
    .locals 3

    .prologue
    .line 456
    check-cast p1, Ljava/util/GregorianCalendar;

    new-instance v0, Lcom/a/a/bd;

    invoke-direct {v0}, Lcom/a/a/bd;-><init>()V

    const-string v1, "year"

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "month"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "dayOfMonth"

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "hourOfDay"

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "minute"

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "second"

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/a/a/ba;Ljava/lang/reflect/Type;Lcom/a/a/av;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/a/a/ba;->s()Lcom/a/a/bd;

    move-result-object v0

    const-string v1, "year"

    invoke-virtual {v0, v1}, Lcom/a/a/bd;->a(Ljava/lang/String;)Lcom/a/a/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/ba;->i()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2}, Lcom/a/a/bd;->a(Ljava/lang/String;)Lcom/a/a/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/ba;->i()I

    move-result v2

    const-string v3, "dayOfMonth"

    invoke-virtual {v0, v3}, Lcom/a/a/bd;->a(Ljava/lang/String;)Lcom/a/a/ba;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/ba;->i()I

    move-result v3

    const-string v4, "hourOfDay"

    invoke-virtual {v0, v4}, Lcom/a/a/bd;->a(Ljava/lang/String;)Lcom/a/a/ba;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/ba;->i()I

    move-result v4

    const-string v5, "minute"

    invoke-virtual {v0, v5}, Lcom/a/a/bd;->a(Ljava/lang/String;)Lcom/a/a/ba;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/ba;->i()I

    move-result v5

    const-string v6, "second"

    invoke-virtual {v0, v6}, Lcom/a/a/bd;->a(Ljava/lang/String;)Lcom/a/a/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/ba;->i()I

    move-result v6

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const-class v0, Lcom/a/a/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

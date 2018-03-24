.class final Lcom/a/a/ce;
.super Ljava/lang/Object;
.source "ReflectingFieldNavigator.java"


# static fields
.field private static final a:Lcom/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/ao;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/a/a/an;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/a/a/bq;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/a/a/bq;-><init>(I)V

    sput-object v0, Lcom/a/a/ce;->a:Lcom/a/a/c;

    return-void
.end method

.method constructor <init>(Lcom/a/a/an;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/an;

    iput-object v0, p0, Lcom/a/a/ce;->b:Lcom/a/a/an;

    .line 48
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-static {p0}, Lcom/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    :goto_0
    if-eqz v0, :cond_1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->isSynthetic()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    return-object v1
.end method


# virtual methods
.method final a(Lcom/a/a/bz;Lcom/a/a/by;)V
    .locals 11

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/a/a/bz;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Lcom/a/a/bz;->a()Ljava/lang/Object;

    move-result-object v4

    .line 57
    iget-object v5, p1, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    sget-object v0, Lcom/a/a/ce;->a:Lcom/a/a/c;

    invoke-interface {v0, v3}, Lcom/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/a/a/ce;->a(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v2, 0x1

    invoke-static {v7, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    array-length v8, v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    aget-object v9, v7, v2

    new-instance v10, Lcom/a/a/ao;

    invoke-direct {v10, v0, v9, v5}, Lcom/a/a/ao;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/a/a/ce;->a:Lcom/a/a/c;

    invoke-interface {v0, v3, v1}, Lcom/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ao;

    .line 58
    iget-object v2, p0, Lcom/a/a/ce;->b:Lcom/a/a/an;

    invoke-interface {v2, v0}, Lcom/a/a/an;->a(Lcom/a/a/ao;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/a/a/ce;->b:Lcom/a/a/an;

    invoke-virtual {v0}, Lcom/a/a/ao;->c()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/a/a/an;->a(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    invoke-virtual {v0}, Lcom/a/a/ao;->f()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 63
    invoke-interface {p2, v0, v2, v4}, Lcom/a/a/by;->c(Lcom/a/a/ao;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v3

    .line 65
    if-nez v3, :cond_3

    .line 66
    invoke-static {v2}, Lcom/a/a/b/b;->d(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 67
    invoke-interface {p2, v0, v2, v4}, Lcom/a/a/by;->a(Lcom/a/a/ao;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_1

    .line 69
    :cond_4
    invoke-interface {p2, v0, v2, v4}, Lcom/a/a/by;->b(Lcom/a/a/ao;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_1

    .line 73
    :cond_5
    return-void
.end method

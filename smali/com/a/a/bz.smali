.class final Lcom/a/a/bz;
.super Ljava/lang/Object;
.source "ObjectTypePair.java"


# instance fields
.field final a:Ljava/lang/reflect/Type;

.field private b:Ljava/lang/Object;

.field private final c:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    .line 34
    iput-boolean p3, p0, Lcom/a/a/bz;->c:Z

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 93
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 94
    check-cast v0, Ljava/lang/Class;

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    .line 98
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    move-object p0, p1

    .line 102
    :cond_1
    return-object p0
.end method


# virtual methods
.method final a(Lcom/a/a/cb;)Lcom/a/a/ca;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HAND",
            "LER:Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/cb",
            "<THAND",
            "LER;",
            ">;)",
            "Lcom/a/a/ca",
            "<THAND",
            "LER;",
            "Lcom/a/a/bz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/a/a/bz;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 59
    iget-boolean v0, p0, Lcom/a/a/bz;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 60
    :goto_0
    iget-object v1, v0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1}, Lcom/a/a/cb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    new-instance v1, Lcom/a/a/ca;

    invoke-direct {v1, v2, v0}, Lcom/a/a/ca;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 67
    :goto_1
    return-object v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/bz;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    if-ne v1, v0, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/a/a/bz;

    iget-object v2, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/a/a/bz;->c:Z

    invoke-direct {v0, v2, v1, v3}, Lcom/a/a/bz;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/a/a/cb;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/a/a/ca;

    invoke-direct {v0, v1, p0}, Lcom/a/a/ca;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    return-object v0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method final b()Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/a/a/bz;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    .line 85
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/bz;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    check-cast p1, Lcom/a/a/bz;

    .line 124
    iget-object v2, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 125
    iget-object v2, p1, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-eqz v2, :cond_5

    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    if-nez v2, :cond_6

    .line 132
    iget-object v2, p1, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    if-eqz v2, :cond_7

    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    iget-object v3, p1, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_7
    iget-boolean v2, p0, Lcom/a/a/bz;->c:Z

    iget-boolean v3, p1, Lcom/a/a/bz;->c:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    const-string v0, "preserveType: %b, type: %s, obj: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/a/a/bz;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/a/bz;->a:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/a/a/bz;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

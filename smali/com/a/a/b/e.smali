.class final Lcom/a/a/b/e;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    array-length v0, p2

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    .line 541
    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/a/a/b/a;->a(Z)V

    .line 543
    array-length v0, p2

    if-ne v0, v1, :cond_3

    .line 544
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/a/a/b/b;->f(Ljava/lang/reflect/Type;)V

    .line 546
    aget-object v0, p1, v2

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/a/a/b/a;->a(Z)V

    .line 547
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    .line 548
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/a/b/e;->a:Ljava/lang/reflect/Type;

    .line 556
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 540
    goto :goto_0

    :cond_1
    move v0, v2

    .line 541
    goto :goto_1

    :cond_2
    move v1, v2

    .line 546
    goto :goto_2

    .line 551
    :cond_3
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/a/a/b/b;->f(Ljava/lang/reflect/Type;)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    .line 554
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->a:Ljava/lang/reflect/Type;

    goto :goto_3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 567
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/a/a/b/b;->a:[Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public final getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 559
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/b/e;->a:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_0
    iget-object v1, p0, Lcom/a/a/b/e;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? super "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/b/e;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/a/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 581
    const-string v0, "?"

    goto :goto_0

    .line 583
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "? extends "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/b/e;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/a/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

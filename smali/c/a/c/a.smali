.class public abstract Lc/a/c/a;
.super Ljava/lang/Object;
.source "AnnotationLiteral.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/annotation/Annotation;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private transient b:[Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 337
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking value of member method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :catch_1
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking value of member method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    :catch_2
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error checking value of member method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 355
    if-nez p2, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Annotation member "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    return-void
.end method

.method private a()[Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lc/a/c/a;->b:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lc/a/c/a;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc/a/c/a;->b:[Ljava/lang/reflect/Method;

    .line 67
    iget-object v0, p0, Lc/a/c/a;->b:[Ljava/lang/reflect/Method;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lc/a/c/a;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement the annotation type with members "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc/a/c/a;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lc/a/c/a;->b:[Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lc/a/c/a;->a:Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lc/a/c/a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    :goto_1
    if-nez v0, :cond_2

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not a subclass of AnnotationLiteral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    :goto_2
    iput-object v0, p0, Lc/a/c/a;->a:Ljava/lang/Class;

    .line 118
    iget-object v0, p0, Lc/a/c/a;->a:Ljava/lang/Class;

    if-nez v0, :cond_4

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not specify the type parameter T of AnnotationLiteral<T>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v2

    .line 117
    goto :goto_2

    .line 123
    :cond_4
    iget-object v0, p0, Lc/a/c/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 219
    instance-of v0, p1, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_b

    .line 221
    check-cast p1, Ljava/lang/annotation/Annotation;

    .line 222
    invoke-virtual {p0}, Lc/a/c/a;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 224
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_a

    aget-object v6, v4, v3

    .line 226
    invoke-static {v6, p0}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    invoke-static {v6, p0, v0}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 228
    invoke-static {v6, p1}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    invoke-static {v6, p0, v1}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 230
    instance-of v6, v0, [B

    if-eqz v6, :cond_0

    instance-of v6, v1, [B

    if-eqz v6, :cond_0

    .line 232
    check-cast v0, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 274
    :goto_1
    return v0

    .line 234
    :cond_0
    instance-of v6, v0, [S

    if-eqz v6, :cond_1

    instance-of v6, v1, [S

    if-eqz v6, :cond_1

    .line 236
    check-cast v0, [S

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_1

    .line 238
    :cond_1
    instance-of v6, v0, [I

    if-eqz v6, :cond_2

    instance-of v6, v1, [I

    if-eqz v6, :cond_2

    .line 240
    check-cast v0, [I

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_1

    .line 242
    :cond_2
    instance-of v6, v0, [J

    if-eqz v6, :cond_3

    instance-of v6, v1, [J

    if-eqz v6, :cond_3

    .line 244
    check-cast v0, [J

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_1

    .line 246
    :cond_3
    instance-of v6, v0, [F

    if-eqz v6, :cond_4

    instance-of v6, v1, [F

    if-eqz v6, :cond_4

    .line 248
    check-cast v0, [F

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_1

    .line 250
    :cond_4
    instance-of v6, v0, [D

    if-eqz v6, :cond_5

    instance-of v6, v1, [D

    if-eqz v6, :cond_5

    .line 252
    check-cast v0, [D

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_1

    .line 254
    :cond_5
    instance-of v6, v0, [C

    if-eqz v6, :cond_6

    instance-of v6, v1, [C

    if-eqz v6, :cond_6

    .line 256
    check-cast v0, [C

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_1

    .line 258
    :cond_6
    instance-of v6, v0, [Z

    if-eqz v6, :cond_7

    instance-of v6, v1, [Z

    if-eqz v6, :cond_7

    .line 260
    check-cast v0, [Z

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto/16 :goto_1

    .line 262
    :cond_7
    instance-of v6, v0, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    instance-of v6, v1, [Ljava/lang/Object;

    if-eqz v6, :cond_8

    .line 264
    check-cast v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto/16 :goto_1

    .line 268
    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto/16 :goto_1

    .line 224
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 271
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 274
    goto/16 :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 280
    .line 281
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_9

    aget-object v5, v3, v1

    .line 283
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v6, v0, 0x7f

    .line 284
    invoke-static {v5, p0}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    invoke-static {v5, p0, v0}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 287
    instance-of v5, v0, [Z

    if-eqz v5, :cond_0

    .line 289
    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    .line 327
    :goto_1
    xor-int/2addr v0, v6

    add-int/2addr v2, v0

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 291
    :cond_0
    instance-of v5, v0, [S

    if-eqz v5, :cond_1

    .line 293
    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    goto :goto_1

    .line 295
    :cond_1
    instance-of v5, v0, [I

    if-eqz v5, :cond_2

    .line 297
    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_1

    .line 299
    :cond_2
    instance-of v5, v0, [J

    if-eqz v5, :cond_3

    .line 301
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_1

    .line 303
    :cond_3
    instance-of v5, v0, [F

    if-eqz v5, :cond_4

    .line 305
    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_1

    .line 307
    :cond_4
    instance-of v5, v0, [D

    if-eqz v5, :cond_5

    .line 309
    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_1

    .line 311
    :cond_5
    instance-of v5, v0, [B

    if-eqz v5, :cond_6

    .line 313
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_1

    .line 315
    :cond_6
    instance-of v5, v0, [C

    if-eqz v5, :cond_7

    .line 317
    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    goto :goto_1

    .line 319
    :cond_7
    instance-of v5, v0, [Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 321
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 325
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 329
    :cond_9
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v2, 0x0

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const/16 v0, 0x40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/c/a;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 131
    :goto_0
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_10

    .line 133
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3, p0, v0}, Lc/a/c/a;->a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 136
    instance-of v3, v0, [Z

    if-eqz v3, :cond_1

    .line 138
    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 204
    :goto_1
    invoke-direct {p0}, Lc/a/c/a;->a()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 206
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_1
    instance-of v3, v0, [B

    if-eqz v3, :cond_2

    .line 142
    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 144
    :cond_2
    instance-of v3, v0, [S

    if-eqz v3, :cond_3

    .line 146
    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_3
    instance-of v3, v0, [I

    if-eqz v3, :cond_4

    .line 150
    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    instance-of v3, v0, [J

    if-eqz v3, :cond_5

    .line 154
    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_5
    instance-of v3, v0, [F

    if-eqz v3, :cond_6

    .line 158
    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :cond_6
    instance-of v3, v0, [D

    if-eqz v3, :cond_7

    .line 162
    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_7
    instance-of v3, v0, [C

    if-eqz v3, :cond_8

    .line 166
    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_8
    instance-of v3, v0, [Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 170
    check-cast v0, [Ljava/lang/String;

    .line 171
    array-length v3, v0

    new-array v5, v3, [Ljava/lang/String;

    move v3, v2

    .line 172
    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_9

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_9
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :cond_a
    instance-of v3, v0, [Ljava/lang/Class;

    if-eqz v3, :cond_c

    .line 180
    check-cast v0, [Ljava/lang/Class;

    .line 181
    array-length v3, v0

    new-array v5, v3, [Ljava/lang/String;

    move v3, v2

    .line 182
    :goto_3
    array-length v6, v0

    if-ge v3, v6, :cond_b

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 186
    :cond_b
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_c
    instance-of v3, v0, [Ljava/lang/Object;

    if-eqz v3, :cond_d

    .line 190
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lc/a/c/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_d
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 194
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 196
    :cond_e
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_f

    .line 198
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".class"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 202
    :cond_f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 209
    :cond_10
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/a/a/aq;
.super Ljava/lang/Object;
.source "Gson.java"


# static fields
.field static final a:Lcom/a/a/a;

.field static final b:Lcom/a/a/ck;

.field static final c:Lcom/a/a/bu;

.field static final d:Lcom/a/a/ap;

.field private static final e:Lcom/a/a/an;


# instance fields
.field private final f:Lcom/a/a/an;

.field private final g:Lcom/a/a/an;

.field private final h:Lcom/a/a/ap;

.field private final i:Lcom/a/a/bs;

.field private final j:Lcom/a/a/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/bk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/a/a/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/ay",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a;-><init>()V

    sput-object v0, Lcom/a/a/aq;->a:Lcom/a/a/a;

    .line 86
    new-instance v0, Lcom/a/a/ck;

    invoke-direct {v0}, Lcom/a/a/ck;-><init>()V

    sput-object v0, Lcom/a/a/aq;->b:Lcom/a/a/ck;

    .line 88
    new-instance v0, Lcom/a/a/bu;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/a/a/bu;-><init>([I)V

    sput-object v0, Lcom/a/a/aq;->c:Lcom/a/a/bu;

    .line 90
    new-instance v0, Lcom/a/a/cf;

    new-instance v1, Lcom/a/a/as;

    invoke-direct {v1}, Lcom/a/a/as;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/a/cf;-><init>(Lcom/a/a/ap;)V

    sput-object v0, Lcom/a/a/aq;->d:Lcom/a/a/ap;

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/a/a/aq;->a:Lcom/a/a/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/aq;->b:Lcom/a/a/ck;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/a/aq;->c:Lcom/a/a/bu;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/a/a/al;

    invoke-direct {v1, v0}, Lcom/a/a/al;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/a/a/aq;->e:Lcom/a/a/an;

    return-void

    .line 88
    nop

    :array_0
    .array-data 4
        0x80
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 148
    sget-object v1, Lcom/a/a/aq;->e:Lcom/a/a/an;

    sget-object v2, Lcom/a/a/aq;->e:Lcom/a/a/an;

    sget-object v3, Lcom/a/a/aq;->d:Lcom/a/a/ap;

    new-instance v4, Lcom/a/a/bs;

    invoke-static {}, Lcom/a/a/g;->c()Lcom/a/a/cb;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/a/a/bs;-><init>(Lcom/a/a/cb;)V

    invoke-static {}, Lcom/a/a/g;->a()Lcom/a/a/cb;

    move-result-object v5

    invoke-static {}, Lcom/a/a/g;->b()Lcom/a/a/cb;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/a/a/aq;-><init>(Lcom/a/a/an;Lcom/a/a/an;Lcom/a/a/ap;Lcom/a/a/bs;Lcom/a/a/cb;Lcom/a/a/cb;)V

    .line 152
    return-void
.end method

.method private constructor <init>(Lcom/a/a/an;Lcom/a/a/an;Lcom/a/a/ap;Lcom/a/a/bs;Lcom/a/a/cb;Lcom/a/a/cb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/an;",
            "Lcom/a/a/an;",
            "Lcom/a/a/ap;",
            "Lcom/a/a/bs;",
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/bk",
            "<*>;>;",
            "Lcom/a/a/cb",
            "<",
            "Lcom/a/a/ay",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/a/a/aq;->f:Lcom/a/a/an;

    .line 161
    iput-object p2, p0, Lcom/a/a/aq;->g:Lcom/a/a/an;

    .line 162
    iput-object p3, p0, Lcom/a/a/aq;->h:Lcom/a/a/ap;

    .line 163
    iput-object p4, p0, Lcom/a/a/aq;->i:Lcom/a/a/bs;

    .line 164
    iput-boolean v1, p0, Lcom/a/a/aq;->l:Z

    .line 165
    iput-object p5, p0, Lcom/a/a/aq;->j:Lcom/a/a/cb;

    .line 166
    iput-object p6, p0, Lcom/a/a/aq;->k:Lcom/a/a/cb;

    .line 167
    iput-boolean v1, p0, Lcom/a/a/aq;->n:Z

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/aq;->m:Z

    .line 169
    iput-boolean v1, p0, Lcom/a/a/aq;->o:Z

    .line 170
    return-void
.end method

.method private a(Lcom/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/a/a/d/a;->a()Z

    move-result v1

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Z)V

    .line 497
    :try_start_0
    invoke-static {p1}, Lcom/a/a/cg;->a(Lcom/a/a/d/a;)Lcom/a/a/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 498
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 500
    :goto_0
    invoke-virtual {p1, v1}, Lcom/a/a/d/a;->a(Z)V

    return-object v0

    .line 498
    :cond_0
    :try_start_1
    new-instance v2, Lcom/a/a/aw;

    new-instance v3, Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/aq;->f:Lcom/a/a/an;

    invoke-direct {v3, v4}, Lcom/a/a/bx;-><init>(Lcom/a/a/an;)V

    iget-object v4, p0, Lcom/a/a/aq;->h:Lcom/a/a/ap;

    iget-object v5, p0, Lcom/a/a/aq;->k:Lcom/a/a/cb;

    iget-object v6, p0, Lcom/a/a/aq;->i:Lcom/a/a/bs;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/a/a/aw;-><init>(Lcom/a/a/bx;Lcom/a/a/ap;Lcom/a/a/cb;Lcom/a/a/bs;)V

    invoke-interface {v2, v0, p2}, Lcom/a/a/av;->a(Lcom/a/a/ba;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/a/a/d/a;->a(Z)V

    throw v0
.end method

.method private a(Lcom/a/a/ba;Ljava/lang/Appendable;)V
    .locals 5

    .prologue
    .line 339
    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/aq;->n:Z

    if-eqz v0, :cond_0

    .line 340
    const-string v0, ")]}\'\n"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 342
    :cond_0
    new-instance v1, Lcom/a/a/d/e;

    instance-of v0, p2, Ljava/io/Writer;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/io/Writer;

    :goto_0
    invoke-direct {v1, p2}, Lcom/a/a/d/e;-><init>(Ljava/io/Writer;)V

    .line 343
    iget-boolean v0, p0, Lcom/a/a/aq;->o:Z

    if-eqz v0, :cond_1

    .line 344
    const-string v0, "  "

    invoke-virtual {v1, v0}, Lcom/a/a/d/e;->a(Ljava/lang/String;)V

    .line 346
    :cond_1
    invoke-virtual {v1}, Lcom/a/a/d/e;->a()Z

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/a/a/d/e;->a(Z)V

    invoke-virtual {v1}, Lcom/a/a/d/e;->b()Z

    move-result v3

    iget-boolean v0, p0, Lcom/a/a/aq;->m:Z

    invoke-virtual {v1, v0}, Lcom/a/a/d/e;->b(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v0, p0, Lcom/a/a/aq;->l:Z

    invoke-static {p1, v0, v1}, Lcom/a/a/cg;->a(Lcom/a/a/ba;ZLcom/a/a/d/e;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/a/a/d/e;->a(Z)V

    invoke-virtual {v1, v3}, Lcom/a/a/d/e;->b(Z)V

    return-void

    .line 342
    :cond_2
    new-instance v0, Lcom/a/a/ci;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/a/a/ci;-><init>(Ljava/lang/Appendable;B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object p2, v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v4, Lcom/a/a/bb;

    invoke-direct {v4, v0}, Lcom/a/a/bb;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/a/a/d/e;->a(Z)V

    invoke-virtual {v1, v3}, Lcom/a/a/d/e;->b(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 349
    :catch_1
    move-exception v0

    .line 348
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 413
    if-nez p1, :cond_1

    .line 414
    const/4 v0, 0x0

    .line 418
    :cond_0
    return-object v0

    .line 416
    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 417
    new-instance v1, Lcom/a/a/d/a;

    invoke-direct {v1, v0}, Lcom/a/a/d/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lcom/a/a/aq;->a(Lcom/a/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v1

    sget-object v2, Lcom/a/a/d/d;->j:Lcom/a/a/d/d;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/a/a/bb;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/a/a/bb;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/a/a/d/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/a/bb;

    invoke-direct {v1, v0}, Lcom/a/a/bb;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    invoke-static {}, Lcom/a/a/bc;->a()Lcom/a/a/bc;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/a/a/aq;->a(Lcom/a/a/ba;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Lcom/a/a/bi;

    new-instance v3, Lcom/a/a/bx;

    iget-object v4, p0, Lcom/a/a/aq;->g:Lcom/a/a/an;

    invoke-direct {v3, v4}, Lcom/a/a/bx;-><init>(Lcom/a/a/an;)V

    iget-object v4, p0, Lcom/a/a/aq;->h:Lcom/a/a/ap;

    iget-boolean v5, p0, Lcom/a/a/aq;->l:Z

    iget-object v6, p0, Lcom/a/a/aq;->j:Lcom/a/a/cb;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/a/a/bi;-><init>(Lcom/a/a/bx;Lcom/a/a/ap;ZLcom/a/a/cb;)V

    invoke-virtual {v2, p1, v0}, Lcom/a/a/bi;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/a/a/ba;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/a/a/aq;->a(Lcom/a/a/ba;Ljava/lang/Appendable;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/a/a/aq;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serializers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/aq;->j:Lcom/a/a/cb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",deserializers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/aq;->k:Lcom/a/a/cb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/aq;->i:Lcom/a/a/bs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

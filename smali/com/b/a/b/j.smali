.class final Lcom/b/a/b/j;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"

# interfaces
.implements Lcom/b/a/b/d/b;


# static fields
.field private static synthetic b:[I


# instance fields
.field private final a:Lcom/b/a/b/d/b;


# direct methods
.method public constructor <init>(Lcom/b/a/b/d/b;)V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lcom/b/a/b/j;->a:Lcom/b/a/b/d/b;

    .line 614
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 608
    sget-object v0, Lcom/b/a/b/j;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/b/a/b/d/c;->values()[Lcom/b/a/b/d/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/b/a/b/d/c;->e:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/b/a/b/d/c;->d:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/b/a/b/d/c;->f:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/b/a/b/d/c;->c:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/b/a/b/d/c;->a:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/b/a/b/d/c;->b:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/b/a/b/d/c;->g:Lcom/b/a/b/d/c;

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/b/a/b/j;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Lcom/b/a/b/j;->a()[I

    move-result-object v0

    invoke-static {p1}, Lcom/b/a/b/d/c;->a(Ljava/lang/String;)Lcom/b/a/b/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/b/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    iget-object v0, p0, Lcom/b/a/b/j;->a:Lcom/b/a/b/d/b;

    invoke-interface {v0, p1, p2}, Lcom/b/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/a/a/d/a;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/a/a/d/d;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/d/a;->a:[C

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-boolean v1, p0, Lcom/a/a/d/a;->c:Z

    .line 201
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/a/a/d/a;->d:[C

    .line 202
    iput v1, p0, Lcom/a/a/d/a;->e:I

    .line 203
    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    .line 207
    sget-object v0, Lcom/a/a/d/c;->f:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/c;)V

    .line 233
    iput-boolean v1, p0, Lcom/a/a/d/a;->l:Z

    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/a/a/d/a;->b:Ljava/io/Reader;

    .line 243
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 1111
    new-instance v0, Lcom/a/a/d/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " near "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(C)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 934
    const/4 v0, 0x0

    .line 937
    :cond_0
    iget v1, p0, Lcom/a/a/d/a;->e:I

    .line 938
    :goto_0
    iget v2, p0, Lcom/a/a/d/a;->e:I

    iget v3, p0, Lcom/a/a/d/a;->f:I

    if-ge v2, v3, :cond_7

    .line 939
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/d/a;->e:I

    aget-char v2, v2, v3

    .line 941
    if-ne v2, p1, :cond_3

    .line 942
    iget-boolean v2, p0, Lcom/a/a/d/a;->l:Z

    if-eqz v2, :cond_1

    .line 943
    const-string v0, "skipped!"

    .line 948
    :goto_1
    return-object v0

    .line 944
    :cond_1
    if-nez v0, :cond_2

    .line 945
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 947
    :cond_2
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 951
    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_9

    .line 952
    if-nez v0, :cond_4

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    :cond_4
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 956
    iget v1, p0, Lcom/a/a/d/a;->e:I

    iget v2, p0, Lcom/a/a/d/a;->f:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v5}, Lcom/a/a/d/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v1, p0, Lcom/a/a/d/a;->d:[C

    iget v2, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/d/a;->e:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    iget v1, p0, Lcom/a/a/d/a;->e:I

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 959
    goto :goto_0

    .line 956
    :sswitch_0
    iget v1, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/a/a/d/a;->f:I

    if-le v1, v2, :cond_6

    invoke-direct {p0, v6}, Lcom/a/a/d/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    iget v2, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/a/a/d/a;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    goto :goto_2

    :sswitch_1
    const/16 v1, 0x9

    goto :goto_2

    :sswitch_2
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_3
    const/16 v1, 0xa

    goto :goto_2

    :sswitch_4
    const/16 v1, 0xd

    goto :goto_2

    :sswitch_5
    const/16 v1, 0xc

    goto :goto_2

    .line 961
    :cond_7
    if-nez v0, :cond_8

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    :cond_8
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 965
    invoke-direct {p0, v5}, Lcom/a/a/d/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_3

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/a/a/d/c;)V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    return-void
.end method

.method private a(Lcom/a/a/d/d;)V
    .locals 3

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 322
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    if-eq v0, p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/a;->m()Lcom/a/a/d/d;

    .line 326
    return-void
.end method

.method private a(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 818
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iget v2, p0, Lcom/a/a/d/a;->e:I

    if-eq v1, v2, :cond_2

    .line 819
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iget v2, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 820
    iget-object v1, p0, Lcom/a/a/d/a;->d:[C

    iget v2, p0, Lcom/a/a/d/a;->e:I

    iget-object v3, p0, Lcom/a/a/d/a;->d:[C

    iget v4, p0, Lcom/a/a/d/a;->f:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    :goto_0
    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/a/a/d/a;->b:Ljava/io/Reader;

    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->f:I

    iget-object v4, p0, Lcom/a/a/d/a;->d:[C

    array-length v4, v4

    iget v5, p0, Lcom/a/a/d/a;->f:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 828
    iget v2, p0, Lcom/a/a/d/a;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d/a;->f:I

    .line 829
    iget v1, p0, Lcom/a/a/d/a;->f:I

    if-lt v1, p1, :cond_0

    .line 830
    const/4 v0, 0x1

    .line 833
    :cond_1
    return v0

    .line 822
    :cond_2
    iput v0, p0, Lcom/a/a/d/a;->f:I

    goto :goto_0
.end method

.method private b(Z)Lcom/a/a/d/d;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 670
    if-eqz p1, :cond_0

    .line 671
    sget-object v0, Lcom/a/a/d/c;->b:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Lcom/a/a/d/c;)V

    .line 688
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 705
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 706
    invoke-direct {p0}, Lcom/a/a/d/a;->o()Lcom/a/a/d/d;

    move-result-object v0

    :goto_1
    return-object v0

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 684
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 676
    :sswitch_1
    invoke-direct {p0}, Lcom/a/a/d/a;->n()Lcom/a/a/d/c;

    .line 677
    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 678
    sget-object v0, Lcom/a/a/d/d;->b:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_1

    .line 680
    :sswitch_2
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    goto :goto_0

    .line 690
    :sswitch_3
    if-eqz p1, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/a/a/d/a;->n()Lcom/a/a/d/c;

    .line 692
    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 693
    sget-object v0, Lcom/a/a/d/d;->b:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_1

    .line 699
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    .line 700
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 701
    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 702
    const-string v0, "null"

    iput-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    .line 703
    sget-object v0, Lcom/a/a/d/d;->i:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_1

    .line 688
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 674
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private b(Lcom/a/a/d/c;)V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void
.end method

.method private c(Z)Lcom/a/a/d/d;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 717
    if-eqz p1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 725
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 742
    :sswitch_0
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    .line 743
    sparse-switch v0, :sswitch_data_0

    .line 750
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    .line 751
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 752
    invoke-direct {p0}, Lcom/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->j:Ljava/lang/String;

    .line 753
    iget-object v0, p0, Lcom/a/a/d/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 754
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 721
    :pswitch_0
    invoke-direct {p0}, Lcom/a/a/d/a;->n()Lcom/a/a/d/c;

    .line 722
    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 723
    sget-object v0, Lcom/a/a/d/d;->d:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 760
    :goto_0
    return-object v0

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 737
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 730
    :sswitch_1
    invoke-direct {p0}, Lcom/a/a/d/a;->n()Lcom/a/a/d/c;

    .line 731
    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 732
    sget-object v0, Lcom/a/a/d/d;->d:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0

    .line 745
    :sswitch_2
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    .line 747
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->j:Ljava/lang/String;

    .line 758
    :cond_1
    sget-object v0, Lcom/a/a/d/c;->d:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Lcom/a/a/d/c;)V

    .line 759
    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 760
    sget-object v0, Lcom/a/a/d/d;->e:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 743
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 728
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private l()Lcom/a/a/d/d;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 355
    iget-boolean v0, p0, Lcom/a/a/d/a;->h:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :cond_1
    sget-object v2, Lcom/a/a/d/b;->a:[I

    iget-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c;

    invoke-virtual {v0}, Lcom/a/a/d/c;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 394
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 361
    :pswitch_0
    iget-boolean v0, p0, Lcom/a/a/d/a;->c:Z

    if-eqz v0, :cond_4

    .line 362
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    iget v0, p0, Lcom/a/a/d/a;->e:I

    sget-object v2, Lcom/a/a/d/a;->a:[C

    array-length v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/a/a/d/a;->f:I

    if-le v0, v2, :cond_2

    sget-object v0, Lcom/a/a/d/a;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    sget-object v1, Lcom/a/a/d/a;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/a/a/d/a;->d:[C

    iget v2, p0, Lcom/a/a/d/a;->e:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/a/a/d/a;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/a/a/d/a;->e:I

    sget-object v1, Lcom/a/a/d/a;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 364
    :cond_4
    sget-object v0, Lcom/a/a/d/c;->g:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Lcom/a/a/d/c;)V

    .line 365
    invoke-direct {p0}, Lcom/a/a/d/a;->o()Lcom/a/a/d/d;

    move-result-object v0

    .line 366
    iget-boolean v1, p0, Lcom/a/a/d/a;->c:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/a/a/d/d;->a:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/a/a/d/d;->c:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_0

    .line 367
    const-string v1, "Expected JSON document to start with \'[\' or \'{\'"

    invoke-direct {p0, v1}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    goto :goto_0

    .line 371
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/a/a/d/a;->b(Z)Lcom/a/a/d/d;

    move-result-object v0

    goto :goto_0

    .line 373
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/a/a/d/a;->b(Z)Lcom/a/a/d/d;

    move-result-object v0

    goto/16 :goto_0

    .line 375
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/a/a/d/a;->c(Z)Lcom/a/a/d/d;

    move-result-object v0

    goto/16 :goto_0

    .line 377
    :pswitch_4
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    iget v0, p0, Lcom/a/a/d/a;->e:I

    iget v1, p0, Lcom/a/a/d/a;->f:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v4}, Lcom/a/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/a/a/d/a;->d:[C

    iget v1, p0, Lcom/a/a/d/a;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    :cond_6
    :pswitch_7
    sget-object v0, Lcom/a/a/d/c;->e:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->b(Lcom/a/a/d/c;)V

    invoke-direct {p0}, Lcom/a/a/d/a;->o()Lcom/a/a/d/d;

    move-result-object v0

    goto/16 :goto_0

    .line 379
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/a/a/d/a;->c(Z)Lcom/a/a/d/d;

    move-result-object v0

    goto/16 :goto_0

    .line 382
    :pswitch_9
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/d/a;->o()Lcom/a/a/d/d;

    move-result-object v0

    .line 383
    iget-boolean v1, p0, Lcom/a/a/d/a;->c:Z

    if-nez v1, :cond_0

    .line 386
    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/a/a/d/a;->h:Z

    .line 389
    sget-object v0, Lcom/a/a/d/d;->j:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto/16 :goto_0

    .line 392
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 377
    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private m()Lcom/a/a/d/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 426
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 427
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/d/a;->h:Z

    .line 428
    iput-object v2, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 429
    iput-object v2, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    .line 430
    iput-object v2, p0, Lcom/a/a/d/a;->j:Ljava/lang/String;

    .line 431
    return-object v0
.end method

.method private n()Lcom/a/a/d/c;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c;

    return-object v0
.end method

.method private o()Lcom/a/a/d/d;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 787
    invoke-direct {p0}, Lcom/a/a/d/a;->p()I

    move-result v0

    .line 788
    sparse-switch v0, :sswitch_data_0

    .line 807
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 808
    invoke-direct {p0}, Lcom/a/a/d/a;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 790
    :sswitch_0
    sget-object v0, Lcom/a/a/d/c;->c:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/c;)V

    .line 791
    iput-boolean v2, p0, Lcom/a/a/d/a;->h:Z

    .line 792
    sget-object v0, Lcom/a/a/d/d;->c:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 808
    :goto_0
    return-object v0

    .line 795
    :sswitch_1
    sget-object v0, Lcom/a/a/d/c;->a:Lcom/a/a/d/c;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/c;)V

    .line 796
    iput-boolean v2, p0, Lcom/a/a/d/a;->h:Z

    .line 797
    sget-object v0, Lcom/a/a/d/d;->a:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0

    .line 800
    :sswitch_2
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    .line 802
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    .line 803
    iput-boolean v2, p0, Lcom/a/a/d/a;->h:Z

    .line 804
    sget-object v0, Lcom/a/a/d/d;->f:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0

    .line 808
    :cond_0
    iput-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/a/a/d/a;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0

    .line 788
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private p()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 837
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/a/a/d/a;->e:I

    iget v3, p0, Lcom/a/a/d/a;->f:I

    if-lt v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/d/a;->e:I

    aget-char v0, v0, v3

    .line 839
    sparse-switch v0, :sswitch_data_0

    .line 884
    :cond_1
    :goto_1
    return v0

    .line 847
    :sswitch_1
    iget v3, p0, Lcom/a/a/d/a;->e:I

    iget v4, p0, Lcom/a/a/d/a;->f:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/a/a/d/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 851
    :cond_2
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    .line 852
    iget-object v3, p0, Lcom/a/a/d/a;->d:[C

    iget v4, p0, Lcom/a/a/d/a;->e:I

    aget-char v3, v3, v4

    .line 853
    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 856
    :sswitch_2
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 857
    const-string v3, "*/"

    :goto_2
    iget v0, p0, Lcom/a/a/d/a;->e:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/a/a/d/a;->f:I

    if-lt v0, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/a/a/d/a;->d:[C

    iget v5, p0, Lcom/a/a/d/a;->e:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_7

    .line 858
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 857
    :cond_5
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_4

    .line 860
    :cond_7
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/d/a;->e:I

    goto :goto_0

    .line 865
    :sswitch_3
    iget v0, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d/a;->e:I

    .line 866
    invoke-direct {p0}, Lcom/a/a/d/a;->r()V

    goto/16 :goto_0

    .line 879
    :sswitch_4
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    .line 880
    invoke-direct {p0}, Lcom/a/a/d/a;->r()V

    goto/16 :goto_0

    .line 887
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 853
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private q()V
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/a/a/d/a;->c:Z

    if-nez v0, :cond_0

    .line 892
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 894
    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 902
    :cond_0
    iget v0, p0, Lcom/a/a/d/a;->e:I

    iget v1, p0, Lcom/a/a/d/a;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/a;->d:[C

    iget v1, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/d/a;->e:I

    aget-char v0, v0, v1

    .line 904
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 905
    :cond_2
    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 5

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 979
    :cond_0
    iget v1, p0, Lcom/a/a/d/a;->e:I

    .line 980
    :goto_0
    iget v2, p0, Lcom/a/a/d/a;->e:I

    iget v3, p0, Lcom/a/a/d/a;->f:I

    if-ge v2, v3, :cond_3

    .line 981
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/d/a;->e:I

    aget-char v2, v2, v3

    .line 982
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1001
    :goto_1
    :sswitch_0
    iget v2, p0, Lcom/a/a/d/a;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/a/a/d/a;->e:I

    .line 1002
    iget-boolean v2, p0, Lcom/a/a/d/a;->l:Z

    if-eqz v2, :cond_1

    .line 1003
    const-string v0, "skipped!"

    .line 1019
    :goto_2
    return-object v0

    .line 988
    :sswitch_1
    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    goto :goto_1

    .line 1004
    :cond_1
    if-nez v0, :cond_2

    .line 1005
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 1007
    :cond_2
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1013
    :cond_3
    if-nez v0, :cond_4

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1016
    :cond_4
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1017
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/a/a/d/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1019
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 982
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2f -> :sswitch_1
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
        0x3d -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_1
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private t()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1116
    iget v1, p0, Lcom/a/a/d/a;->e:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1117
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1118
    iget v1, p0, Lcom/a/a/d/a;->f:I

    iget v2, p0, Lcom/a/a/d/a;->e:I

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1119
    iget-object v2, p0, Lcom/a/a/d/a;->d:[C

    iget v3, p0, Lcom/a/a/d/a;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1120
    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/a/a/d/a;->c:Z

    .line 276
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/a/a/d/a;->c:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/a/a/d/d;->a:Lcom/a/a/d/d;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/d;)V

    .line 291
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/a/a/d/d;->b:Lcom/a/a/d/d;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/d;)V

    .line 299
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/d/a;->h:Z

    .line 620
    iput-object v1, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    .line 621
    iput-object v1, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 622
    iget-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 623
    iget-object v0, p0, Lcom/a/a/d/a;->g:Ljava/util/List;

    sget-object v1, Lcom/a/a/d/c;->h:Lcom/a/a/d/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v0, p0, Lcom/a/a/d/a;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 625
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/a/a/d/d;->c:Lcom/a/a/d/d;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/d;)V

    .line 307
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/a/a/d/d;->d:Lcom/a/a/d/d;

    invoke-direct {p0, v0}, Lcom/a/a/d/a;->a(Lcom/a/a/d/d;)V

    .line 315
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 333
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->d:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->b:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/a/a/d/d;
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 342
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/a/d/d;->i:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    return-object v0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/a/a/d/d;->h:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    sget-object v0, Lcom/a/a/d/d;->g:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/a/a/d/a;->q()V

    sget-object v0, Lcom/a/a/d/d;->f:Lcom/a/a/d/d;

    iput-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 443
    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->e:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/a/a/d/a;->j:Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Lcom/a/a/d/a;->m()Lcom/a/a/d/d;

    .line 448
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    .line 461
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->f:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->g:Lcom/a/a/d/d;

    if-eq v0, v1, :cond_1

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    .line 466
    invoke-direct {p0}, Lcom/a/a/d/a;->m()Lcom/a/a/d/d;

    .line 467
    return-object v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 479
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->f:Lcom/a/a/d/d;

    if-ne v0, v1, :cond_1

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    const/4 v0, 0x1

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/a/a/d/a;->m()Lcom/a/a/d/d;

    .line 493
    return v0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a boolean: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/a/a/d/a;->l()Lcom/a/a/d/d;

    .line 505
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/d/a;->i:Lcom/a/a/d/d;

    sget-object v1, Lcom/a/a/d/d;->f:Lcom/a/a/d/d;

    if-ne v0, v1, :cond_1

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/a/d/a;->g()Lcom/a/a/d/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/a/a/d/a;->m()Lcom/a/a/d/d;

    .line 514
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/a/a/d/a;->t()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

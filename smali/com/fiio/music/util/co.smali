.class public final Lcom/fiio/music/util/co;
.super Ljava/lang/Object;
.source "SpecialFileNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/StringBuffer;

.field b:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_0

    if-eqz p2, :cond_a

    :cond_0
    if-nez p1, :cond_2

    move v3, v5

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v7, v0, v4

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v6, v0, v4

    if-ne v7, v6, :cond_b

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    array-length v1, v0

    if-lez v1, :cond_7

    array-length v1, v2

    if-lez v1, :cond_7

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_1
    move v2, v3

    :goto_2
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    if-lt v2, v8, :cond_8

    :cond_5
    move v1, v3

    :goto_3
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v0

    long-to-int v0, v6

    :goto_4
    sub-int v2, v1, v0

    if-gtz v2, :cond_1

    sub-int v0, v1, v0

    if-gez v0, :cond_a

    move v3, v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    :cond_8
    aget-char v8, v1, v2

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    aget-char v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/fiio/music/util/co;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v8, v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    aget-char v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    aget-char v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/fiio/music/util/co;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v2, v10, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_a
    move v3, v4

    goto/16 :goto_0

    :cond_b
    move v0, v6

    move v1, v7

    goto :goto_4
.end method

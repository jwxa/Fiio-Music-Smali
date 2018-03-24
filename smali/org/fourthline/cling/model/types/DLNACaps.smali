.class public Lorg/fourthline/cling/model/types/DLNACaps;
.super Ljava/lang/Object;
.source "DLNACaps.java"


# instance fields
.field final caps:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNACaps;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lorg/fourthline/cling/model/types/DLNACaps;

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/model/types/DLNACaps;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 42
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 43
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 46
    new-instance v0, Lorg/fourthline/cling/model/types/DLNACaps;

    invoke-direct {v0, v2}, Lorg/fourthline/cling/model/types/DLNACaps;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/types/DLNACaps;

    .line 56
    iget-object v2, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCaps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/DLNACaps;->getCaps()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

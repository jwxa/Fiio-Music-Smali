.class public final Ld/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(CLd/a/a/a/b;)[Ljava/lang/String;
    .locals 14

    const/16 v9, 0x65

    const/16 v8, 0x61

    const/16 v10, 0x24

    const/4 v1, 0x0

    const/4 v7, -0x1

    sget-object v0, Ld/a/a/b;->a:Ld/a/a/a;

    invoke-virtual {v0, p0}, Ld/a/a/a;->a(C)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_c

    aget-object v2, v3, v0

    sget-object v4, Ld/a/a/a/c;->c:Ld/a/a/a/c;

    invoke-virtual {p1}, Ld/a/a/a/b;->b()Ld/a/a/a/c;

    move-result-object v5

    if-ne v4, v5, :cond_1

    sget-object v4, Ld/a/a/a/d;->b:Ld/a/a/a/d;

    invoke-virtual {p1}, Ld/a/a/a/b;->c()Ld/a/a/a/d;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Ld/a/a/a/d;->a:Ld/a/a/a/d;

    invoke-virtual {p1}, Ld/a/a/a/b;->c()Ld/a/a/a/d;

    move-result-object v5

    if-ne v4, v5, :cond_1

    :cond_0
    new-instance v0, Ld/a/a/a/a/a;

    const-string v1, "tone marks cannot be added to v or u:"

    invoke-direct {v0, v1}, Ld/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v4, Ld/a/a/a/c;->b:Ld/a/a/a/c;

    invoke-virtual {p1}, Ld/a/a/a/b;->b()Ld/a/a/a/c;

    move-result-object v5

    if-ne v4, v5, :cond_5

    const-string v4, "[1-5]"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    sget-object v4, Ld/a/a/a/d;->b:Ld/a/a/a/d;

    invoke-virtual {p1}, Ld/a/a/a/b;->c()Ld/a/a/a/d;

    move-result-object v5

    if-ne v4, v5, :cond_b

    const-string v4, "u:"

    const-string v5, "v"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_2
    sget-object v4, Ld/a/a/a/a;->a:Ld/a/a/a/a;

    invoke-virtual {p1}, Ld/a/a/a/b;->a()Ld/a/a/a/a;

    move-result-object v5

    if-ne v4, v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :cond_4
    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v4, Ld/a/a/a/c;->c:Ld/a/a/a/c;

    invoke-virtual {p1}, Ld/a/a/a/b;->b()Ld/a/a/a/c;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const-string v4, "u:"

    const-string v5, "v"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[a-z]*[1-5]?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[a-z]*[1-5]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v11

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const-string v6, "ou"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v7, v4, :cond_6

    move v5, v8

    :goto_3
    if-eq v10, v5, :cond_2

    if-eq v7, v4, :cond_2

    const-string v6, "aeiouv"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v6, v11, -0x1

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v6

    const-string v6, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "v"

    const-string v13, "\u00fc"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "v"

    const-string v5, "\u00fc"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    if-eq v7, v5, :cond_7

    move v4, v5

    move v5, v9

    goto :goto_3

    :cond_7
    if-eq v7, v6, :cond_8

    const-string v4, "ou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    move v4, v6

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-ltz v4, :cond_e

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[aeiouv]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_a
    const-string v4, "v"

    const-string v5, "\u00fc"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_b
    sget-object v4, Ld/a/a/a/d;->c:Ld/a/a/a/d;

    invoke-virtual {p1}, Ld/a/a/a/b;->c()Ld/a/a/a/d;

    move-result-object v5

    if-ne v4, v5, :cond_3

    const-string v4, "u:"

    const-string v5, "\u00fc"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_c
    move-object v0, v3

    :goto_5
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    :cond_e
    move v4, v7

    move v5, v10

    goto/16 :goto_3
.end method

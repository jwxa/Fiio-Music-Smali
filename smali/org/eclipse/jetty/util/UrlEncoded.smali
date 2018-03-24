.class public Lorg/eclipse/jetty/util/UrlEncoded;
.super Lorg/eclipse/jetty/util/MultiMap;
.source "UrlEncoded.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ENCODING:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    const-string v0, "org.eclipse.jetty.util.UrlEncoding.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 76
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>(I)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/UrlEncoded;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/MultiMap;-><init>(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 64
    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 379
    monitor-enter p1

    .line 381
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    move-object v2, v3

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_7

    .line 391
    int-to-char v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 449
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 452
    :cond_1
    :goto_1
    if-ltz p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    if-le v0, p2, :cond_b

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 394
    :sswitch_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 395
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 396
    if-eqz v2, :cond_4

    .line 398
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 405
    :cond_2
    :goto_3
    if-lez p3, :cond_c

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-le v0, p3, :cond_c

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form too many keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 400
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 402
    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 411
    :sswitch_1
    if-eqz v2, :cond_5

    .line 413
    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 416
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 421
    :sswitch_2
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 426
    const/16 v5, 0x75

    if-ne v5, v0, :cond_6

    .line 428
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 429
    if-ltz v5, :cond_1

    .line 431
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 432
    if-ltz v6, :cond_1

    .line 434
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 435
    if-ltz v7, :cond_1

    .line 436
    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 440
    :cond_6
    if-ltz v0, :cond_1

    .line 442
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 443
    if-ltz v5, :cond_1

    .line 444
    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 456
    :cond_7
    if-eqz v2, :cond_a

    .line 458
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    .line 459
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 460
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    :cond_8
    :goto_5
    monitor-exit p1

    return-void

    .line 458
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 462
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 464
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_b
    move v1, v0

    goto/16 :goto_0

    :cond_c
    move-object v2, v3

    goto/16 :goto_1

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v10, 0x2b

    const/16 v6, 0x20

    const/16 v9, 0x25

    const/4 v3, 0x0

    .line 717
    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/eclipse/jetty/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 719
    :cond_0
    const/4 v0, 0x0

    move v1, v3

    .line 721
    :goto_0
    if-ge v1, p2, :cond_b

    .line 723
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 724
    if-ltz v2, :cond_1

    const/16 v3, 0xff

    if-le v2, v3, :cond_3

    .line 726
    :cond_1
    if-nez v0, :cond_2

    .line 728
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 729
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    add-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p0, p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 721
    :goto_1
    add-int/lit8 v3, v0, 0x1

    move-object v0, v1

    move v1, v3

    goto :goto_0

    .line 732
    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_1

    .line 734
    :cond_3
    if-ne v2, v10, :cond_5

    .line 736
    if-nez v0, :cond_4

    .line 738
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 739
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    add-int v3, p1, v1

    invoke-virtual {v2, p0, p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 742
    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_1

    .line 744
    :cond_5
    if-ne v2, v9, :cond_9

    .line 746
    if-nez v0, :cond_21

    .line 748
    new-instance v2, Lorg/eclipse/jetty/util/Utf8StringBuffer;

    invoke-direct {v2, p2}, Lorg/eclipse/jetty/util/Utf8StringBuffer;-><init>(I)V

    .line 749
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    add-int v3, p1, v1

    invoke-virtual {v0, p0, p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 752
    :goto_2
    add-int/lit8 v0, v1, 0x2

    if-ge v0, p2, :cond_8

    .line 756
    const/16 v0, 0x75

    add-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v0, v3, :cond_7

    .line 758
    add-int/lit8 v0, v1, 0x5

    if-ge v0, p2, :cond_6

    .line 760
    add-int v0, p1, v1

    add-int/lit8 v3, v0, 0x2

    .line 761
    add-int/lit8 v0, v1, 0x5

    .line 762
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x4

    const/16 v5, 0x10

    invoke-static {p0, v3, v4, v5}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 763
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v1, v2

    .line 764
    goto :goto_1

    :cond_6
    move v0, p2

    move-object v1, v2

    .line 766
    goto :goto_1

    .line 770
    :cond_7
    add-int v0, p1, v1

    add-int/lit8 v3, v0, 0x1

    .line 771
    add-int/lit8 v0, v1, 0x2

    .line 772
    const/4 v1, 0x2

    const/16 v4, 0x10

    invoke-static {p0, v3, v1, v4}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v1

    int-to-byte v1, v1

    .line 773
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->append(B)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v1, v2

    .line 779
    goto/16 :goto_1

    .line 778
    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const v3, 0xfffd

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v1, v2

    .line 779
    goto/16 :goto_1

    :cond_8
    move v0, p2

    move-object v1, v2

    .line 782
    goto/16 :goto_1

    .line 784
    :cond_9
    if-eqz v0, :cond_a

    .line 785
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_1

    .line 788
    :cond_b
    if-nez v0, :cond_e

    .line 790
    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_d

    .line 904
    :cond_c
    :goto_4
    return-object p0

    .line 792
    :cond_d
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 795
    :cond_e
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 799
    :cond_f
    const/4 v1, 0x0

    move v0, v3

    .line 803
    :goto_5
    if-ge v0, p2, :cond_1d

    .line 805
    add-int v2, p1, v0

    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 806
    if-ltz v2, :cond_10

    const/16 v4, 0xff

    if-le v2, v4, :cond_13

    .line 808
    :cond_10
    if-nez v1, :cond_12

    .line 810
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 811
    add-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 803
    :cond_11
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 814
    :cond_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 906
    :catch_1
    move-exception v0

    .line 908
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 816
    :cond_13
    if-ne v2, v10, :cond_15

    .line 818
    if-nez v1, :cond_14

    .line 820
    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 821
    add-int v2, p1, v0

    invoke-virtual {v1, p0, p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 824
    :cond_14
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 826
    :cond_15
    if-ne v2, v9, :cond_1c

    .line 828
    if-nez v1, :cond_16

    .line 830
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 831
    add-int v4, p1, v0

    invoke-virtual {v1, p0, p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 834
    :cond_16
    new-array v6, p2, [B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move v4, v3

    move v5, v2

    move v2, v0

    .line 836
    :goto_7
    if-ltz v5, :cond_20

    const/16 v0, 0xff

    if-gt v5, v0, :cond_20

    .line 838
    if-ne v5, v9, :cond_19

    .line 840
    add-int/lit8 v0, v2, 0x2

    if-ge v0, p2, :cond_18

    .line 844
    const/16 v0, 0x75

    add-int v5, p1, v2

    add-int/lit8 v5, v5, 0x1

    :try_start_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_17

    .line 846
    add-int v0, p1, v2

    add-int/lit8 v0, v0, 0x2

    .line 847
    add-int/lit8 v2, v2, 0x6

    .line 848
    new-instance v5, Ljava/lang/String;

    const/4 v7, 0x4

    const/16 v8, 0x10

    invoke-static {p0, v0, v7, v8}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 849
    invoke-virtual {v5, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 850
    const/4 v5, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    array-length v0, v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    add-int/2addr v0, v4

    .line 884
    :goto_8
    if-ge v2, p2, :cond_1b

    .line 885
    add-int v4, p1, v2

    :try_start_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    move v5, v4

    move v4, v0

    goto :goto_7

    .line 855
    :cond_17
    add-int v0, p1, v2

    add-int/lit8 v0, v0, 0x1

    .line 856
    add-int/lit8 v2, v2, 0x3

    .line 857
    const/4 v5, 0x2

    const/16 v7, 0x10

    :try_start_6
    invoke-static {p0, v0, v5, v7}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v6, v4
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    .line 858
    add-int/lit8 v0, v4, 0x1

    goto :goto_8

    .line 861
    :catch_2
    move-exception v0

    .line 863
    :try_start_7
    sget-object v5, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 864
    add-int/lit8 v0, v4, 0x1

    const/16 v5, 0x3f

    aput-byte v5, v6, v4

    goto :goto_8

    .line 869
    :cond_18
    add-int/lit8 v0, v4, 0x1

    const/16 v5, 0x25

    aput-byte v5, v6, v4

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 873
    :cond_19
    if-ne v5, v10, :cond_1a

    .line 875
    add-int/lit8 v0, v4, 0x1

    const/16 v5, 0x20

    aput-byte v5, v6, v4

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 880
    :cond_1a
    add-int/lit8 v0, v4, 0x1

    int-to-byte v5, v5

    aput-byte v5, v6, v4

    .line 881
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    move v11, v0

    move v0, v2

    move v2, v11

    .line 889
    :goto_9
    add-int/lit8 v0, v0, -0x1

    .line 890
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v5, v2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 893
    :cond_1c
    if-eqz v1, :cond_11

    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 897
    :cond_1d
    if-nez v1, :cond_1f

    .line 899
    if-nez p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p2, :cond_c

    .line 901
    :cond_1e
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 904
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object p0

    goto/16 :goto_4

    .line 778
    :catch_3
    move-exception v1

    goto/16 :goto_3

    :cond_20
    move v0, v2

    move v2, v4

    goto :goto_9

    :cond_21
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 594
    if-nez p2, :cond_0

    .line 596
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 599
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    .line 707
    :goto_0
    return-void

    .line 605
    :cond_1
    const-string v1, "ISO-8859-1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    goto :goto_0

    .line 611
    :cond_2
    const-string v1, "UTF-16"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    invoke-static {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V

    goto :goto_0

    .line 618
    :cond_3
    monitor-enter p1

    .line 626
    :try_start_0
    new-instance v4, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>()V

    move v1, v0

    move-object v2, v3

    .line 628
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_b

    .line 632
    int-to-char v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 689
    :cond_4
    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    .line 693
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 694
    if-ltz p3, :cond_f

    if-le v0, p3, :cond_f

    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 635
    :sswitch_0
    :try_start_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v0

    .line 636
    if-nez v0, :cond_7

    const-string v0, ""

    .line 637
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 638
    if-eqz v2, :cond_8

    .line 640
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    :cond_6
    :goto_4
    if-lez p4, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-le v0, p4, :cond_10

    .line 649
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form too many keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_7
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 642
    :cond_8
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 644
    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 652
    :sswitch_1
    if-nez v2, :cond_4

    .line 654
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v0

    .line 658
    if-nez v0, :cond_9

    const-string v0, ""

    .line 659
    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    move-object v2, v0

    .line 660
    goto :goto_2

    .line 658
    :cond_9
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 662
    :sswitch_2
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_2

    .line 665
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 666
    const/16 v5, 0x75

    if-ne v5, v0, :cond_a

    .line 668
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 669
    if-ltz v5, :cond_5

    .line 671
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 672
    if-ltz v6, :cond_5

    .line 674
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 675
    if-ltz v7, :cond_5

    .line 676
    new-instance v8, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write([B)V

    goto/16 :goto_2

    .line 681
    :cond_a
    if-ltz v0, :cond_5

    .line 683
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 684
    if-ltz v5, :cond_5

    .line 685
    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write(I)V

    goto/16 :goto_2

    .line 698
    :cond_b
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v0

    .line 699
    if-eqz v2, :cond_e

    .line 701
    if-nez v0, :cond_d

    const-string v0, ""

    .line 702
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->setCount(I)V

    .line 703
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 707
    :cond_c
    :goto_7
    monitor-exit p1

    goto/16 :goto_0

    .line 701
    :cond_d
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 705
    :cond_e
    if-lez v0, :cond_c

    .line 706
    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_f
    move v1, v0

    goto/16 :goto_1

    :cond_10
    move-object v2, v3

    goto/16 :goto_2

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 190
    return-void
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    if-nez p2, :cond_0

    .line 199
    sget-object p2, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 201
    :cond_0
    monitor-enter p1

    .line 204
    const/4 v3, -0x1

    move v4, v1

    move v0, v1

    move-object v5, v6

    .line 207
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 209
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 210
    sparse-switch v7, :sswitch_data_0

    .line 207
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    :sswitch_0
    sub-int v7, v4, v3

    add-int/lit8 v7, v7, -0x1

    .line 214
    if-nez v7, :cond_3

    const-string v0, ""

    .line 218
    :goto_2
    if-eqz v5, :cond_5

    .line 220
    invoke-virtual {p1, v5, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    :cond_2
    :goto_3
    if-lez p3, :cond_d

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-le v0, p3, :cond_d

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form too many keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 214
    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    :try_start_1
    invoke-static {p0, v0, v7, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 222
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 224
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 232
    :sswitch_1
    if-nez v5, :cond_1

    .line 233
    if-eqz v0, :cond_6

    add-int/lit8 v0, v3, 0x1

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v0, v3, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move v3, v4

    move-object v5, v0

    move v0, v1

    .line 237
    goto :goto_1

    .line 233
    :cond_6
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_2
    move v0, v2

    .line 240
    goto :goto_1

    :sswitch_3
    move v0, v2

    .line 242
    goto :goto_1

    .line 247
    :cond_7
    if-eqz v5, :cond_b

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 250
    if-nez v1, :cond_9

    const-string v0, ""

    .line 251
    :goto_5
    invoke-virtual {p1, v5, v0}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    :cond_8
    :goto_6
    monitor-exit p1

    return-void

    .line 250
    :cond_9
    if-eqz v0, :cond_a

    add-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, v1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 253
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 255
    if-eqz v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    :goto_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 260
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 255
    :cond_c
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_7

    :cond_d
    move v0, v1

    move v3, v4

    move-object v5, v6

    goto/16 :goto_1

    .line 210
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 4

    .prologue
    .line 579
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-16"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 580
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 581
    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/Reader;Ljava/io/Writer;J)V

    .line 583
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-16"

    invoke-static {v0, p1, v1, p3}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 584
    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/eclipse/jetty/util/MultiMap;II)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 478
    monitor-enter p1

    .line 480
    :try_start_0
    new-instance v4, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    move v3, v0

    move-object v0, v1

    .line 488
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ltz v2, :cond_8

    .line 492
    int-to-char v5, v2

    sparse-switch v5, :sswitch_data_0

    .line 550
    int-to-byte v2, v2

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_1
    move-object v2, v0

    .line 559
    :goto_2
    if-ltz p2, :cond_e

    add-int/lit8 v0, v3, 0x1

    if-le v0, p2, :cond_c

    .line 560
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 495
    :sswitch_0
    :try_start_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    .line 496
    :goto_3
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 497
    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {p1, v0, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    :cond_1
    :goto_4
    if-lez p3, :cond_d

    :try_start_4
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v0

    if-le v0, p3, :cond_d

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Form too many keys"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 554
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 556
    :goto_5
    :try_start_5
    sget-object v5, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    sget-object v5, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 495
    :cond_2
    :try_start_6
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 501
    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 503
    const-string v5, ""

    invoke-virtual {p1, v2, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 554
    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_5

    .line 512
    :sswitch_1
    if-eqz v0, :cond_4

    .line 514
    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    move-object v2, v0

    .line 515
    goto :goto_2

    .line 517
    :cond_4
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    .line 518
    :try_start_7
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V
    :try_end_7
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 554
    :catch_2
    move-exception v0

    goto :goto_5

    .line 522
    :sswitch_2
    const/16 v2, 0x20

    :try_start_8
    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    move-object v2, v0

    .line 523
    goto :goto_2

    .line 526
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 527
    const/16 v5, 0x75

    if-ne v5, v2, :cond_6

    .line 529
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 530
    if-ltz v5, :cond_5

    .line 532
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 533
    if-ltz v6, :cond_5

    .line 535
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 536
    if-ltz v7, :cond_5

    .line 537
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    invoke-static {v7}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_5
    move-object v2, v0

    .line 540
    goto/16 :goto_2

    .line 541
    :cond_6
    if-ltz v2, :cond_0

    .line 543
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 544
    if-ltz v5, :cond_7

    .line 545
    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    invoke-static {v5}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v5

    add-int/2addr v2, v5

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_8
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    move-object v2, v0

    .line 546
    goto/16 :goto_2

    .line 563
    :cond_8
    if-eqz v0, :cond_b

    .line 565
    :try_start_9
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ""

    .line 566
    :goto_6
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 567
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 573
    :cond_9
    :goto_7
    monitor-exit p1

    return-void

    .line 565
    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 569
    :cond_b
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 571
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :cond_c
    move v3, v0

    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_1

    :cond_e
    move-object v0, v2

    goto/16 :goto_0

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;)V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lorg/eclipse/jetty/util/Utf8StringBuilder;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/Utf8StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V

    .line 276
    return-void
.end method

.method public static decodeUtf8To([BIILorg/eclipse/jetty/util/MultiMap;Lorg/eclipse/jetty/util/Utf8StringBuilder;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 288
    monitor-enter p3

    .line 291
    add-int v4, p1, p2

    move-object v0, v1

    move v2, p1

    .line 295
    :goto_0
    if-ge v2, v4, :cond_6

    .line 297
    :try_start_0
    aget-byte v3, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    and-int/lit16 v5, v3, 0xff

    int-to-char v5, v5

    sparse-switch v5, :sswitch_data_0

    .line 346
    :try_start_1
    invoke-virtual {p4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    .line 295
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :sswitch_0
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    .line 304
    :goto_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 305
    if-eqz v0, :cond_3

    .line 307
    invoke-virtual {p3, v0, v3}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_3
    move-object v0, v1

    .line 314
    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 309
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 311
    const-string v5, ""

    invoke-virtual {p3, v3, v5}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 350
    :catch_0
    move-exception v3

    .line 352
    :goto_4
    :try_start_2
    sget-object v5, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    sget-object v5, Lorg/eclipse/jetty/util/UrlEncoded;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p3

    throw v0

    .line 318
    :sswitch_1
    if-eqz v0, :cond_4

    .line 320
    :try_start_3
    invoke-virtual {p4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    goto :goto_1

    .line 328
    :sswitch_2
    const/16 v3, 0x20

    invoke-virtual {p4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V

    goto :goto_1

    .line 332
    :sswitch_3
    add-int/lit8 v3, v2, 0x2

    if-ge v3, v4, :cond_0

    .line 334
    const/16 v3, 0x75

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    if-ne v3, v5, :cond_5

    .line 336
    add-int/lit8 v2, v2, 0x1

    .line 337
    add-int/lit8 v3, v2, 0x4

    if-ge v3, v4, :cond_0

    .line 338
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->getStringBuilder()Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    :try_start_4
    aget-byte v2, p0, v3

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    invoke-static {v6}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B
    :try_end_4
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    add-int/lit8 v2, v3, 0x1

    :try_start_5
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 341
    :cond_5
    add-int/lit8 v3, v2, 0x1

    :try_start_6
    aget-byte v2, p0, v3

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B
    :try_end_6
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    shl-int/lit8 v5, v2, 0x4

    add-int/lit8 v2, v3, 0x1

    :try_start_7
    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(B)B

    move-result v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p4, v3}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->append(B)V
    :try_end_7
    .catch Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 357
    :cond_6
    if-eqz v0, :cond_9

    .line 359
    :try_start_8
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ""

    .line 360
    :goto_5
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->reset()V

    .line 361
    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    :cond_7
    :goto_6
    monitor-exit p3

    return-void

    .line 359
    :cond_8
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 363
    :cond_9
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 365
    invoke-virtual {p4}, Lorg/eclipse/jetty/util/Utf8StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 350
    :catch_1
    move-exception v2

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    goto/16 :goto_4

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x26

    const/16 v8, 0x3d

    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 137
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 143
    invoke-static {v4}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 145
    if-nez v5, :cond_3

    .line 147
    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz p2, :cond_2

    .line 149
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    .line 155
    if-lez v0, :cond_4

    .line 156
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_4
    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 158
    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-eqz v6, :cond_7

    .line 162
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 165
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {v6, p1}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_6
    if-eqz p2, :cond_5

    .line 169
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    :cond_7
    if-eqz p2, :cond_5

    .line 172
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v2, 0x0

    .line 931
    if-nez p1, :cond_0

    .line 932
    sget-object p1, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 933
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 944
    :goto_0
    array-length v6, v0

    .line 945
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v7, v1, [B

    .line 947
    const/4 v1, 0x1

    move v4, v2

    move v5, v2

    .line 949
    :goto_1
    if-ge v4, v6, :cond_8

    .line 951
    aget-byte v8, v0, v4

    .line 953
    const/16 v3, 0x20

    if-ne v8, v3, :cond_1

    .line 956
    add-int/lit8 v1, v5, 0x1

    const/16 v3, 0x2b

    aput-byte v3, v7, v5

    move v3, v1

    move v1, v2

    .line 949
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    goto :goto_1

    .line 941
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 958
    :cond_1
    const/16 v3, 0x61

    if-lt v8, v3, :cond_2

    const/16 v3, 0x7a

    if-le v8, v3, :cond_4

    :cond_2
    const/16 v3, 0x41

    if-lt v8, v3, :cond_3

    const/16 v3, 0x5a

    if-le v8, v3, :cond_4

    :cond_3
    const/16 v3, 0x30

    if-lt v8, v3, :cond_5

    const/16 v3, 0x39

    if-gt v8, v3, :cond_5

    .line 962
    :cond_4
    add-int/lit8 v3, v5, 0x1

    aput-byte v8, v7, v5

    goto :goto_2

    .line 967
    :cond_5
    add-int/lit8 v3, v5, 0x1

    const/16 v1, 0x25

    aput-byte v1, v7, v5

    .line 968
    and-int/lit16 v1, v8, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-byte v5, v1

    .line 969
    if-lt v5, v9, :cond_6

    .line 970
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x41

    add-int/lit8 v5, v5, -0xa

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    .line 973
    :goto_3
    and-int/lit8 v1, v8, 0xf

    int-to-byte v5, v1

    .line 974
    if-lt v5, v9, :cond_7

    .line 975
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x41

    add-int/lit8 v5, v5, -0xa

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    move v1, v2

    goto :goto_2

    .line 972
    :cond_6
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    goto :goto_3

    .line 977
    :cond_7
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    move v3, v1

    move v1, v2

    goto :goto_2

    .line 981
    :cond_8
    if-eqz v1, :cond_9

    .line 991
    :goto_4
    return-object p0

    .line 986
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v7, v0, v5, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 991
    :catch_1
    move-exception v0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7, v2, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1002
    new-instance v0, Lorg/eclipse/jetty/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/UrlEncoded;-><init>(Lorg/eclipse/jetty/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x1

    invoke-static {p1, p0, p2, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lorg/eclipse/jetty/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/eclipse/jetty/util/UrlEncoded;->encode(Lorg/eclipse/jetty/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

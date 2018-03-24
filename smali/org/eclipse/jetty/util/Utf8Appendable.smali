.class public abstract Lorg/eclipse/jetty/util/Utf8Appendable;
.super Ljava/lang/Object;
.source "Utf8Appendable.java"


# static fields
.field private static final BYTE_TABLE:[B

.field public static final REPLACEMENT:C = '\ufffd'

.field private static final TRANS_TABLE:[B

.field private static final UTF8_ACCEPT:I = 0x0

.field private static final UTF8_REJECT:I = 0xc


# instance fields
.field protected final _appendable:Ljava/lang/Appendable;

.field private _codep:I

.field protected _state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->BYTE_TABLE:[B

    .line 70
    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->TRANS_TABLE:[B

    return-void

    .line 56
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    .line 70
    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 85
    iput-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    .line 86
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public append([BII)V
    .locals 2

    .prologue
    .line 111
    add-int v0, p2, p3

    .line 112
    :goto_0
    if-ge p2, v0, :cond_0

    .line 113
    :try_start_0
    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :cond_0
    return-void
.end method

.method public append([BIII)Z
    .locals 2

    .prologue
    .line 125
    add-int v0, p2, p3

    .line 126
    :goto_0
    if-ge p2, v0, :cond_1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->length()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 132
    :goto_1
    return v0

    .line 130
    :cond_0
    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/Utf8Appendable;->appendByte(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected appendByte(B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    if-lez p1, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    and-int/lit16 v1, p1, 0xff

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    and-int/lit16 v0, p1, 0xff

    .line 150
    sget-object v2, Lorg/eclipse/jetty/util/Utf8Appendable;->BYTE_TABLE:[B

    aget-byte v2, v2, v0

    .line 151
    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v3, :cond_2

    const/16 v3, 0xff

    shr-int/2addr v3, v2

    and-int/2addr v0, v3

    :goto_1
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 152
    sget-object v0, Lorg/eclipse/jetty/util/Utf8Appendable;->TRANS_TABLE:[B

    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    .line 154
    sparse-switch v0, :sswitch_data_0

    .line 177
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    goto :goto_0

    .line 151
    :cond_2
    and-int/lit8 v0, v0, 0x3f

    iget v3, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    goto :goto_1

    .line 157
    :sswitch_0
    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 158
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    const v2, 0xd800

    if-ge v0, v2, :cond_3

    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    iget v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    int-to-char v1, v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 164
    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_0

    aget-char v1, v2, v0

    .line 165
    iget-object v4, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    invoke-interface {v4, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "byte "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    div-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_codep:I

    .line 172
    iput v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 173
    iget-object v1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_appendable:Ljava/lang/Appendable;

    const v2, 0xfffd

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 174
    new-instance v1, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/Utf8Appendable$NotUtf8Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public isUtf8SequenceComplete()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract length()I
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->_state:I

    .line 93
    return-void
.end method

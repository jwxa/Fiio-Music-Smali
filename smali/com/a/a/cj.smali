.class final Lcom/a/a/cj;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field a:[C


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/a/a/cj;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/a/a/cj;->a:[C

    array-length v0, v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/cj;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

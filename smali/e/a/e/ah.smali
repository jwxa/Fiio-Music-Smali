.class final Le/a/e/ah;
.super Ljava/lang/Object;
.source "Huffman.java"


# instance fields
.field final a:[Le/a/e/ah;

.field final b:I

.field final c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/16 v0, 0x100

    new-array v0, v0, [Le/a/e/ah;

    iput-object v0, p0, Le/a/e/ah;->a:[Le/a/e/ah;

    .line 210
    iput v1, p0, Le/a/e/ah;->b:I

    .line 211
    iput v1, p0, Le/a/e/ah;->c:I

    .line 212
    return-void
.end method

.method constructor <init>(II)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Le/a/e/ah;->a:[Le/a/e/ah;

    .line 222
    iput p1, p0, Le/a/e/ah;->b:I

    .line 223
    and-int/lit8 v0, p2, 0x7

    .line 224
    if-nez v0, :cond_0

    const/16 v0, 0x8

    :cond_0
    iput v0, p0, Le/a/e/ah;->c:I

    .line 225
    return-void
.end method

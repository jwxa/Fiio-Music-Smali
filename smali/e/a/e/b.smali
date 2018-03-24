.class public final enum Le/a/e/b;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Le/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/e/b;

.field public static final enum b:Le/a/e/b;

.field public static final enum c:Le/a/e/b;

.field public static final enum d:Le/a/e/b;

.field public static final enum e:Le/a/e/b;

.field public static final enum f:Le/a/e/b;

.field private static final synthetic h:[Le/a/e/b;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Le/a/e/b;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Le/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/a/e/b;->a:Le/a/e/b;

    .line 23
    new-instance v0, Le/a/e/b;

    const-string v1, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v5, v5}, Le/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/a/e/b;->b:Le/a/e/b;

    .line 25
    new-instance v0, Le/a/e/b;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v6, v6}, Le/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/a/e/b;->c:Le/a/e/b;

    .line 27
    new-instance v0, Le/a/e/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v1, v7, v7}, Le/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/a/e/b;->d:Le/a/e/b;

    .line 29
    new-instance v0, Le/a/e/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Le/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/a/e/b;->e:Le/a/e/b;

    .line 31
    new-instance v0, Le/a/e/b;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Le/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le/a/e/b;->f:Le/a/e/b;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Le/a/e/b;

    sget-object v1, Le/a/e/b;->a:Le/a/e/b;

    aput-object v1, v0, v4

    sget-object v1, Le/a/e/b;->b:Le/a/e/b;

    aput-object v1, v0, v5

    sget-object v1, Le/a/e/b;->c:Le/a/e/b;

    aput-object v1, v0, v6

    sget-object v1, Le/a/e/b;->d:Le/a/e/b;

    aput-object v1, v0, v7

    sget-object v1, Le/a/e/b;->e:Le/a/e/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Le/a/e/b;->f:Le/a/e/b;

    aput-object v2, v0, v1

    sput-object v0, Le/a/e/b;->h:[Le/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Le/a/e/b;->g:I

    .line 37
    return-void
.end method

.method public static a(I)Le/a/e/b;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Le/a/e/b;->values()[Le/a/e/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    iget v4, v0, Le/a/e/b;->g:I

    if-ne v4, p0, :cond_0

    .line 43
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/e/b;
    .locals 1

    .prologue
    .line 19
    const-class v0, Le/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/a/e/b;

    return-object v0
.end method

.method public static values()[Le/a/e/b;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Le/a/e/b;->h:[Le/a/e/b;

    invoke-virtual {v0}, [Le/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/e/b;

    return-object v0
.end method

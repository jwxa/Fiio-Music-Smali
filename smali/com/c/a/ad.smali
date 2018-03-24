.class final enum Lcom/c/a/ad;
.super Ljava/lang/Enum;
.source "MediaStoreRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/ad;

.field public static final enum b:Lcom/c/a/ad;

.field public static final enum c:Lcom/c/a/ad;

.field private static final synthetic g:[Lcom/c/a/ad;


# instance fields
.field final d:I

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v11, -0x1

    const/4 v13, 0x2

    const/4 v6, 0x1

    .line 123
    new-instance v0, Lcom/c/a/ad;

    const-string v1, "MICRO"

    const/16 v4, 0x60

    const/16 v5, 0x60

    invoke-direct/range {v0 .. v5}, Lcom/c/a/ad;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/c/a/ad;->a:Lcom/c/a/ad;

    .line 124
    new-instance v4, Lcom/c/a/ad;

    const-string v5, "MINI"

    const/16 v8, 0x200

    const/16 v9, 0x180

    move v7, v6

    invoke-direct/range {v4 .. v9}, Lcom/c/a/ad;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/c/a/ad;->b:Lcom/c/a/ad;

    .line 125
    new-instance v7, Lcom/c/a/ad;

    const-string v8, "FULL"

    move v9, v13

    move v10, v13

    move v12, v11

    invoke-direct/range {v7 .. v12}, Lcom/c/a/ad;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/c/a/ad;->c:Lcom/c/a/ad;

    .line 122
    new-array v0, v3, [Lcom/c/a/ad;

    sget-object v1, Lcom/c/a/ad;->a:Lcom/c/a/ad;

    aput-object v1, v0, v2

    sget-object v1, Lcom/c/a/ad;->b:Lcom/c/a/ad;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/a/ad;->c:Lcom/c/a/ad;

    aput-object v1, v0, v13

    sput-object v0, Lcom/c/a/ad;->g:[Lcom/c/a/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/c/a/ad;->d:I

    .line 133
    iput p4, p0, Lcom/c/a/ad;->e:I

    .line 134
    iput p5, p0, Lcom/c/a/ad;->f:I

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/ad;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lcom/c/a/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/ad;

    return-object v0
.end method

.method public static values()[Lcom/c/a/ad;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/c/a/ad;->g:[Lcom/c/a/ad;

    invoke-virtual {v0}, [Lcom/c/a/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/ad;

    return-object v0
.end method

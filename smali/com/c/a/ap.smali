.class public final enum Lcom/c/a/ap;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/c/a/ap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/c/a/ap;

.field public static final enum b:Lcom/c/a/ap;

.field public static final enum c:Lcom/c/a/ap;

.field private static final synthetic e:[Lcom/c/a/ap;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 855
    new-instance v0, Lcom/c/a/ap;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/c/a/ap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/ap;->a:Lcom/c/a/ap;

    .line 856
    new-instance v0, Lcom/c/a/ap;

    const-string v1, "DISK"

    const v2, -0xffff01

    invoke-direct {v0, v1, v4, v2}, Lcom/c/a/ap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/ap;->b:Lcom/c/a/ap;

    .line 857
    new-instance v0, Lcom/c/a/ap;

    const-string v1, "NETWORK"

    const/high16 v2, -0x10000

    invoke-direct {v0, v1, v5, v2}, Lcom/c/a/ap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/a/ap;->c:Lcom/c/a/ap;

    .line 854
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/c/a/ap;

    sget-object v1, Lcom/c/a/ap;->a:Lcom/c/a/ap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/a/ap;->b:Lcom/c/a/ap;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/a/ap;->c:Lcom/c/a/ap;

    aput-object v1, v0, v5

    sput-object v0, Lcom/c/a/ap;->e:[Lcom/c/a/ap;

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
    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput p3, p0, Lcom/c/a/ap;->d:I

    .line 863
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/a/ap;
    .locals 1

    .prologue
    .line 854
    const-class v0, Lcom/c/a/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/a/ap;

    return-object v0
.end method

.method public static values()[Lcom/c/a/ap;
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lcom/c/a/ap;->e:[Lcom/c/a/ap;

    invoke-virtual {v0}, [Lcom/c/a/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/ap;

    return-object v0
.end method

.class public final Ld/a/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ld/a/a/a/d;

.field public static final b:Ld/a/a/a/d;

.field public static final c:Ld/a/a/a/d;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/a/a/a/d;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, Ld/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/d;->a:Ld/a/a/a/d;

    new-instance v0, Ld/a/a/a/d;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, Ld/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/d;->b:Ld/a/a/a/d;

    new-instance v0, Ld/a/a/a/d;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, Ld/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/d;->c:Ld/a/a/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a/a/a/d;->d:Ljava/lang/String;

    return-void
.end method

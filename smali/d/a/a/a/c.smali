.class public final Ld/a/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ld/a/a/a/c;

.field public static final b:Ld/a/a/a/c;

.field public static final c:Ld/a/a/a/c;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/a/a/a/c;

    const-string v1, "WITH_TONE_NUMBER"

    invoke-direct {v0, v1}, Ld/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/c;->a:Ld/a/a/a/c;

    new-instance v0, Ld/a/a/a/c;

    const-string v1, "WITHOUT_TONE"

    invoke-direct {v0, v1}, Ld/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/c;->b:Ld/a/a/a/c;

    new-instance v0, Ld/a/a/a/c;

    const-string v1, "WITH_TONE_MARK"

    invoke-direct {v0, v1}, Ld/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/a/a/c;->c:Ld/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a/a/a/c;->d:Ljava/lang/String;

    return-void
.end method

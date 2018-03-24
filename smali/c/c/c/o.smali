.class final Lc/c/c/o;
.super Lc/c/z;
.source "HttpServlet.java"


# static fields
.field private static a:Ljava/util/ResourceBundle;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 931
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lc/c/c/o;->a:Ljava/util/ResourceBundle;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 937
    invoke-direct {p0}, Lc/c/z;-><init>()V

    .line 934
    const/4 v0, 0x0

    iput v0, p0, Lc/c/c/o;->b:I

    .line 937
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lc/c/c/o;->b:I

    return v0
.end method

.method public final write(I)V
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lc/c/c/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/c/o;->b:I

    .line 946
    return-void
.end method

.method public final write([BII)V
    .locals 3

    .prologue
    .line 951
    if-ltz p3, :cond_0

    .line 952
    iget v0, p0, Lc/c/c/o;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lc/c/c/o;->b:I

    return-void

    .line 956
    :cond_0
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lc/c/c/o;->a:Ljava/util/ResourceBundle;

    const-string v2, "err.io.negativelength"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

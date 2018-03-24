.class final Lc/c/c/p;
.super Lc/c/c/f;
.source "HttpServlet.java"


# static fields
.field private static final a:Ljava/util/ResourceBundle;


# instance fields
.field private b:Lc/c/c/o;

.field private c:Ljava/io/PrintWriter;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 864
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lc/c/c/p;->a:Ljava/util/ResourceBundle;

    return-void
.end method

.method constructor <init>(Lc/c/c/e;)V
    .locals 1

    .prologue
    .line 874
    invoke-direct {p0, p1}, Lc/c/c/f;-><init>(Lc/c/c/e;)V

    .line 875
    new-instance v0, Lc/c/c/o;

    invoke-direct {v0}, Lc/c/c/o;-><init>()V

    iput-object v0, p0, Lc/c/c/p;->b:Lc/c/c/o;

    .line 876
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Lc/c/c/p;->d:Z

    if-nez v0, :cond_1

    .line 881
    iget-object v0, p0, Lc/c/c/p;->c:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lc/c/c/p;->c:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 884
    :cond_0
    iget-object v0, p0, Lc/c/c/p;->b:Lc/c/c/o;

    invoke-virtual {v0}, Lc/c/c/o;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/c/c/p;->setContentLength(I)V

    .line 886
    :cond_1
    return-void
.end method

.method public final getOutputStream()Lc/c/z;
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lc/c/c/p;->c:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lc/c/c/p;->a:Ljava/util/ResourceBundle;

    const-string v2, "err.ise.getOutputStream"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/c/p;->e:Z

    .line 901
    iget-object v0, p0, Lc/c/c/p;->b:Lc/c/c/o;

    return-object v0
.end method

.method public final getWriter()Ljava/io/PrintWriter;
    .locals 3

    .prologue
    .line 906
    iget-boolean v0, p0, Lc/c/c/p;->e:Z

    if-eqz v0, :cond_0

    .line 907
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lc/c/c/p;->a:Ljava/util/ResourceBundle;

    const-string v2, "err.ise.getWriter"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_0
    iget-object v0, p0, Lc/c/c/p;->c:Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    .line 912
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lc/c/c/p;->b:Lc/c/c/o;

    invoke-virtual {p0}, Lc/c/c/p;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 914
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lc/c/c/p;->c:Ljava/io/PrintWriter;

    .line 917
    :cond_1
    iget-object v0, p0, Lc/c/c/p;->c:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public final setContentLength(I)V
    .locals 1

    .prologue
    .line 889
    invoke-super {p0, p1}, Lc/c/c/f;->setContentLength(I)V

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/c/p;->d:Z

    .line 891
    return-void
.end method

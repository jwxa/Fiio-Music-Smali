.class final Lcom/a/a/ci;
.super Ljava/io/Writer;
.source "Streams.java"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/a/a/cj;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 155
    new-instance v0, Lcom/a/a/cj;

    invoke-direct {v0}, Lcom/a/a/cj;-><init>()V

    iput-object v0, p0, Lcom/a/a/ci;->b:Lcom/a/a/cj;

    .line 158
    iput-object p1, p0, Lcom/a/a/ci;->a:Ljava/lang/Appendable;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;B)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/a/a/ci;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/a/a/ci;->a:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 168
    return-void
.end method

.method public final write([CII)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/a/a/ci;->b:Lcom/a/a/cj;

    iput-object p1, v0, Lcom/a/a/cj;->a:[C

    .line 163
    iget-object v0, p0, Lcom/a/a/ci;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/a/a/ci;->b:Lcom/a/a/cj;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 164
    return-void
.end method
